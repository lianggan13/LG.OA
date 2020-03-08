using LG.OA.Common;
using LG.OA.DLL;
using LG.OA.IDLL;
using LG.OA.Model;
using LG.OA.WEB.Controllers;
using Spring.Context;
using Spring.Context.Support;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LG.OA.WEB.Filter
{
    public class ValidateUserAttribute: ActionFilterAttribute      
    {
        IAuthorizationFilter
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);
            string strController = filterContext.RouteData.Values["controller"].ToString();
            string strAction = filterContext.RouteData.Values["action"].ToString();
            if (strController.Equals("Login")|| strController.Equals("Error"))
                return;     // 如果访问的是 Login 就直接放回
            // 校验用户登录      
            if (filterContext.HttpContext.Request.Cookies["LoginID"] == null)
            {
                filterContext.HttpContext.Response.Redirect("/Login/Index");
                return;
            }
            string loginId = filterContext.HttpContext.Request.Cookies["LoginID"].Value;
            if (string.IsNullOrEmpty(loginId))
            {
                // 留一个后门，请求的 Contorller 是Articles 或 Search ，则忽略登录验证
                if (strController.Equals("Articles") || strController.Equals("Search"))
                    return;
                filterContext.HttpContext.Response.Redirect("/Login/Index");
                return;
            }
            object loginUser = MemcacheHelper.Get(loginId); //SerializeHelper
            if (loginUser == null)
            {
                filterContext.HttpContext.Response.Redirect("/Login/Index");
                return;
            }
            UserInfo userInfo =  SerializeHelper.DeserializeToObject<UserInfo>(loginUser.ToString());
            if (userInfo == null)
            {
                filterContext.HttpContext.Response.Redirect("/Login/Index");
                return;
            }
            MemcacheHelper.Set(loginId, SerializeHelper.SerializeToString(userInfo), DateTime.Now.AddMinutes(20));  // 重新设置过期时间 即 平滑时间           
            // 校验用户权限
            IApplicationContext ctx = ContextRegistry.GetContext();
            IUserInfoService userInfoService = ctx.GetObject<UserInfoService>("UserInfoService");
            IActionInfoService actionInfoService = ctx.GetObject<ActionInfoService>("ActionInfoService");
            userInfo = userInfoService.LoadEntites(o => o.ID.Equals(userInfo.ID)).FirstOrDefault();
            BaseController.LoginUser = userInfo;
            if (!actionInfoService.ValidateUserAction(userInfo, filterContext.HttpContext.Request))
                filterContext.HttpContext.Response.Redirect("/Error/Index/?msg=" + "无访问权限");

        }
        private void RedirectLogin(ActionExecutingContext filterContext)
        {
            string strController = filterContext.RouteData.Values["controller"].ToString();
            string strAction = filterContext.RouteData.Values["action"].ToString();
            string LoginID = filterContext.HttpContext.Request.Cookies["LoginID"].Value;
            if (string.IsNullOrEmpty(LoginID))
            {
                if (strController != "Login")
                {
                    filterContext.HttpContext.Response.Redirect("/Login/Index");
                }
            }
        }
    }
}