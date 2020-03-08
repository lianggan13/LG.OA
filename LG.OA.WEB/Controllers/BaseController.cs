using LG.OA.DLL;
using LG.OA.IDLL;
using LG.OA.Model;
using LG.OA.Model.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http.Filters;
using System.Web.Mvc;

namespace LG.OA.WEB.Controllers
{
    public class BaseController : Controller
    {
        public IUserInfoService UserInfoService { get; set; }    
        public IRoleInfoService RoleInfoService { get; set; }
        public IActionInfoService ActionInfoService { get; set; }
        public static UserInfo LoginUser { get; set; }
        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);
            
        }


    }
}