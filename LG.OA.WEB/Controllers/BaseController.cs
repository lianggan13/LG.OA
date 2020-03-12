using LG.OA.DLL;
using LG.OA.IDLL;
using LG.OA.Model.OAModels;
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
        public IWF_TempService WF_TempService { get; set; }
        public IWF_InstanceService WF_InstanceService { get; set; }
        public IWF_StepService WF_StepService { get; set; }

        public static UserInfo LoginUser { get; set; }
        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);
            
        }


    }
}