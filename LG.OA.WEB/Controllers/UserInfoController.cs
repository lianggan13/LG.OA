using LG.OA.DAL;
using LG.OA.DLL;
using LG.OA.IDLL;
using LG.OA.Model;
using LG.OA.Model.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LG.OA.WEB.Controllers
{
    public class UserInfoController : BaseController
    {
        // GET: UserInfo
       // UserInfoService userInfoService = new UserInfoService();
       
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult GetUserInfos()
        {
            int pageIndex = (Request["page"] != null) ? int.Parse(Request["page"]): 1;
            int pageSize = (Request["rows"] != null) ? int.Parse(Request["rows"]) : 5;

            int totalCount = 0;
            short delFlag = (short)(DeleteEnumType.Normal);
            var userInfos = UserInfoService.LoadEntites<int>(
                pageIndex,
                pageSize,
                out totalCount,
                o => o.DelFlag == delFlag,
                o => o.ID
                ); // userInfoService.LoadEntites(o => o.DelFlag == (short)(UserState.正常)).ToList();
            var rowsData = from u in userInfos
                           select new
                           {
                               ID = u.ID,
                               UName = u.UName,
                               Pwd = u.Pwd,
                               Remark = u.Remark,
                               SubTime = u.SubTime

                           };
            return Json(new { rows=rowsData,total=totalCount}, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult AddUserInfo(UserInfo newUser)
        {
            //UserInfo newUser = new UserInfo();
            newUser.DelFlag = (short)DeleteEnumType.Normal;
            newUser.ShowName = newUser.UName;
            newUser.SubTime = newUser.ModfiedOn = DateTime.Now;//.ToString("yyyy-MM-dd hh:mm:ss");
            UserInfoService.AddEntity(newUser);

            return Content("ok");
        }
       
        
        public ActionResult ShowEditUserInfo(int id)
        {
            var userInfo = UserInfoService.LoadEntites(o => o.ID == id).FirstOrDefault();

            // 报错：序列化类型的对象时检测到循环引用 原因 模型有外键 映射关系
            // return Json(userInfo, JsonRequestBehavior.AllowGet); 
            // 解决：定义一个匿名模型
            return Json(new { 
                ID = userInfo.ID,
                Remark = userInfo.Remark, 
                Pwd = userInfo.Pwd, 
                UName = userInfo.UName },
                JsonRequestBehavior.AllowGet);
        }
        public ActionResult UpdateUserInfo(UserInfo updateUser)
        {
            var userInfo = UserInfoService.LoadEntites(o => o.ID == updateUser.ID).FirstOrDefault();
            userInfo.UName = updateUser.UName;
            userInfo.Pwd = updateUser.Pwd;
            userInfo.Remark = updateUser.Remark;
            userInfo.ModfiedOn = DateTime.Now;
            UserInfoService.UpdateEntity(userInfo);
            return Content("ok");
        }

        public ActionResult DeleteUserInfo(string idString)
        {
            var t = idString.Split(',');
            var ids =  idString.Split(',').ToList().Select<string ,int>(o=>Convert.ToInt32(o));
            return UserInfoService.DeleteEntities(ids)?  Content("ok"): Content("error");
        }
        
        public ActionResult ShowUserRoles(int uid)
        {
            short delFlag = (short)(DeleteEnumType.Normal);
            UserInfo userInfo = UserInfoService.LoadEntites(o => o.ID == uid).FirstOrDefault();
            var userRoles = userInfo.RoleInfo.Where(o=>o.DelFlag == delFlag).ToList();
            var allRoles = RoleInfoService.LoadEntites(o => o.DelFlag == delFlag).ToList();
            ViewBag.User = userInfo;
            ViewBag.UserRoles = userRoles;
            ViewBag.AllRoles = allRoles;
            return View();

        }
        public ActionResult ShowUserActions(int uid)
        {
            short normal = (short)DeleteEnumType.Normal;
            var userInfo = UserInfoService.LoadEntites(o => o.ID == uid).FirstOrDefault();
            var userActionInfos = userInfo.R_UserInfo_ActionInfo.ToList();

            var allActionInfos = ActionInfoService.LoadEntites(o => o.DelFlag == (short)normal).ToList();
            ViewBag.User = userInfo;
            ViewBag.UserActions = userActionInfos;
            ViewBag.AllActions = allActionInfos;
            return View();
        }
    }
}