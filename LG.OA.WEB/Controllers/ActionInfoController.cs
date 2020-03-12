using LG.OA.Model.OAModels;
using LG.OA.Model.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LG.OA.WEB.Controllers
{
    public class ActionInfoController : BaseController
    {
        // GET: ActionInfo ShowUserActions
        public ActionResult Index()
        {
            return View();
        }
        
        public ActionResult DistributeUserAction(int uid,int aid,bool ispass)
        {
            return ActionInfoService.DistributeUserAction(uid, aid, ispass) ?Content("ok"):Content("no");
 
        }
        public ActionResult CancelUserAction(int aid)
        {
            return ActionInfoService.DistributeUserAction(aid) ? Content("ok") : Content("no");
        }

        public ActionResult DistributeRoleAction()
        {
           
            int rid = int.Parse(Request["rid"]);
            var selectActionIds = Request.Form.AllKeys.ToList().Where(o => o.Contains("chk_")).Select(o => Convert.ToInt32(o.Replace("chk_", "")));
            return ActionInfoService.DistributeRoleAction(rid, selectActionIds) ? Content("ok") : Content("no");
        }


    }
}