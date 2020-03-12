using LG.OA.Common;
using LG.OA.Model.OAModels;
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
            #region 用户 --- 角色 --- 权限
            // 用户角色获取 权限
            var actionsIDsByRole = (from r in loginUser.RoleInfo
                                    from a in r.ActionInfo
                                    where a.DelFlag == (short)DeleteEnum.Normal
                                    select a.ID).ToList();
            // 用户直接被拒绝 权限
            var denyActionIDsByUser = (from r in loginUser.R_UserInfo_ActionInfo
                                       where r.HasPermission == false
                                       select r.ActionInfoID);
            // 角色权限 -- 拒绝权限
            var passActionIDsByRole = from a in actionsIDsByRole
                                where !denyActionIDsByUser.Contains(a)
                                select a;
            #endregion
            
            #region 用户 -- 权限
            // 用户获取权限                   
            var actionsIDsByUser = (from r in loginUser.R_UserInfo_ActionInfo
                                 where r.HasPermission == true
                                 select r.ActionInfoID).ToList();
            #endregion
            // 合并
            actionsIDsByUser.AddRange(passActionIDsByRole);
            // 去重   actionsByUser.Distinct(new EqualityComparer());
            var passActionIDs = actionsIDsByUser.Distinct().ToList();

            var passActions =  ActionInfoService.LoadEntites(o => passActionIDs.Contains(o.ID) && o.IsMenu == true && o.DelFlag == (short)DeleteEnum.Normal);
            var dataJson = passActions.Select(a => new { icon = a.MenuIcon, title = a.ActionName, url = a.Url });
            return Json(dataJson, JsonRequestBehavior.AllowGet);
         }
    }
}