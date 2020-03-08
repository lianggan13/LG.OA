using LG.OA.Common;
using LG.OA.Model;
using LG.OA.Model.Enums;
using LG.OA.WEB.Filter;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LG.OA.WEB.Controllers
{
    
    public class HomeController : BaseController
    {
        
        // GET: Home
  
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult GetMenuList()
        {
            UserInfo loginUser = UserInfoService.LoadEntites(o => o.ID == BaseController.LoginUser.ID).FirstOrDefault();
            var actionsByRole = (from r in loginUser.RoleInfo
                                from a in r.ActionInfo
                                where a.DelFlag == (short)DeleteEnumType.Normal
                                select a).ToList();
            var actionsByUser = (from r in loginUser.R_UserInfo_ActionInfo
                                where r.HasPermission == true
                                select r.ActionInfo).ToList();
            actionsByUser.AddRange(actionsByRole);
            // 去除多余项
            actionsByUser.Distinct(new EqualityComparer());
            var dataJson = actionsByUser.Select(a => new { icon = a.MenuIcon, title = a.ActionName, url = a.Url });
            return Json(dataJson, JsonRequestBehavior.AllowGet);
         }
    }
}