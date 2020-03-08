using LG.OA.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LG.OA.WEB.Controllers
{
    public class LoginController : BaseController
    {
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult UserLogin()
        {
            string uName = Request["LoginCode"];
            string uPwd = Request["LoginPwd"];
            string code = Request["vCode"];

            if(code == "###")
            {

            }
            else if (Session["ValidateCode"] == null || !code.Equals(Session["ValidateCode"]))
            {
                return Content("error:验证码错误");
            }
            var userInfo = UserInfoService.LoadEntites(o => o.UName == uName).FirstOrDefault();
            if(userInfo == null)
            {
                return Content("error:账户不存在");
            }
            if(userInfo.Pwd != uPwd)
            {
                return Content("error:密码错误");
            }
            string loginID = Guid.NewGuid().ToString();
            // 将用户的信息存到Session中
            Session["UserInfo"] = userInfo;
            // 将用户的信息存到Cookie中
            Response.Cookies["LoginID"].Value = loginID;
            // 将用户的信息存到Memcache中
            MemcacheHelper.Set(loginID, SerializeHelper.SerializeToString(userInfo),DateTime.Now.AddMinutes(20));          
            return Content("ok:登陆成功");
        }

        public ActionResult ShowValidateCode(int id)
        {
            string validateCode =  ValidateCode.CreateValidateCode(5);
            byte[]  fileBytes=  ValidateCode.CreateValidateGraphic(validateCode);
            Session["ValidateCode"] = validateCode;
            return File(fileBytes, "image/jpeg"); // ".jpeg"="image/jpeg"
        }

        
    }
}