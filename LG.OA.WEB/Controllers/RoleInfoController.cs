using LG.OA.DLL;
using LG.OA.Model;
using LG.OA.Model.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LG.OA.WEB.Controllers
{
    public class RoleInfoController : BaseController
    {
        // GET: RoleInfo
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetRoleInfos()
        {
            int pageIndex = (Request["page"] != null)?int.Parse(Request["page"]):1;
            int pageSize = (Request["rows"] != null) ? int.Parse(Request["rows"]) : 5;
            int totalCount = 0;
            var roleInfos =  RoleInfoService.LoadEntites(pageIndex, pageSize, out totalCount,
                o => o.DelFlag == (short)DeleteEnumType.Normal,
                o => o.ID);
            var rowsData = from r in roleInfos
                           select new
                           {
                               ID = r.ID,
                               RoleName = r.RoleName,
                               Remark = r.Remark,
                               ModfiedOn = r.ModfiedOn,
                               SubTime = r.SubTime,
                           };
            return Json(new { rows = rowsData, total = totalCount }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult AddRoleInfo(RoleInfo newRole)
        {
            newRole.DelFlag = (short)DeleteEnumType.Normal;
            newRole.SubTime = newRole.ModfiedOn = DateTime.Now;//.ToString("yyyy-MM-dd hh:mm:ss");
            RoleInfoService.AddEntity(newRole);
            return Content("ok");
        }
        
        public ActionResult ShowEditRoleInfo(int rid)
        {
            RoleInfo roleInfo = RoleInfoService.LoadEntites(o => o.ID == rid).FirstOrDefault();
            //return Json(roleInfo, JsonRequestBehavior.AllowGet);
            return Json(new { roleInfo.ID, roleInfo.RoleName, roleInfo.Remark },
                JsonRequestBehavior.AllowGet);
        }

        public ActionResult UpdateRoleInfo(RoleInfo updateRole)
        {
            RoleInfo roleInfo = RoleInfoService.LoadEntites(o => o.ID == updateRole.ID).FirstOrDefault();
            roleInfo.RoleName = Request["RoleName"];
            roleInfo.Remark = Request["Remark"];
            roleInfo.DelFlag = (short)DeleteEnumType.Normal;
            roleInfo.ModfiedOn = DateTime.Now;//.ToString("yyyy-MM-dd hh:mm:ss");                     
            RoleInfoService.UpdateEntity(roleInfo);
            return Content("ok");
        }
        public ActionResult DeleteRoleInfo(string idString)
        {
            var t = idString.Split(',');
            var ids = idString.Split(',').ToList().Select<string, int>(o => Convert.ToInt32(o));
            return RoleInfoService.DeleteEntities(ids) ? Content("ok") : Content("error");
        }

        public ActionResult ShowRoleActions(int rid)
        {
            short delFlag = (short)(DeleteEnumType.Normal);
            RoleInfo   roleInfo = RoleInfoService.LoadEntites(o => o.ID == rid).FirstOrDefault();
            var roleActions = roleInfo.ActionInfo.Where(o => o.DelFlag == delFlag).ToList();
            var allActions = ActionInfoService.LoadEntites(o => o.DelFlag == delFlag).ToList();
            ViewBag.Role = roleInfo;
            ViewBag.RoleActions = roleActions;
            // ViewBag.AllActions = allActions;
            ViewData.Model = allActions;
            return View();

        }
        
        public ActionResult DistributeUserRole()
        {           int uid = int.Parse(Request["uid"]);
            List<int> chksId = Request.Form.AllKeys.Where(o => o.Contains("chk_")).Select(x=>int.Parse(x.Replace("chk_", ""))).ToList();   // 注:只有前台 选中的 CheckBox 才能传到后台
            return UserInfoService.SetUserRoleInfo(uid, chksId)? Content("角色分配成功") : Content("角色分配失败");
        }
      

    }
}