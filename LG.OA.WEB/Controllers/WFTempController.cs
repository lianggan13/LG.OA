using LG.OA.Model.OAModels;
using LG.OA.Model.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LG.OA.WEB.Controllers
{
    public class WFTempController : BaseController
    {
        // GET: WFTemp
        public ActionResult Index()
        {
            return View();
        }

        #region 获取流程模板
        [HttpPost]
        public ActionResult GetWFTemplateInfos()
        {
            int pageIndex = (Request["page"] != null) ? int.Parse(Request["page"]) : 1;
            int pageSize = (Request["rows"] != null) ? int.Parse(Request["rows"]) : 5;

            int totalCount = 0;
            short delFlag = (short)(DeleteEnum.Normal);
            var templates = WF_TempService.LoadEntites<int>(
                pageIndex,
                pageSize,
                out totalCount,
                o => o.DelFlag == delFlag,
                o => o.ID
                ); // userInfoService.LoadEntites(o => o.DelFlag == (short)(UserState.正常)).ToList();

            var rowsData =
                templates.Select(
                    a =>
                    new
                    {
                        a.ID,
                        a.TepName,
                        a.Remark,
                        a.SubTime,
                        a.ActityType,
                        a.DelFlag
                    });
            return Json(new { rows = rowsData, total = totalCount }, JsonRequestBehavior.AllowGet);
        } 
        #endregion

        #region 添加流程模板
        public ActionResult Add()
        {
            return View();
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Add(WF_Temp temp)
        {
            var form =  Request.Form;
            temp.DelFlag = (short)(DeleteEnum.Normal);
            temp.SubTime = DateTime.Now;
            temp.Description = "xxx";
            temp.TempForm = "tttt";          
            WF_TempService.AddEntity(temp);
            return Content("ok");
        }
        #endregion


        #region 发起流程
        public ActionResult StartWF()
        {
            ViewData.Model = WF_TempService.LoadEntites(o => o.DelFlag.Equals((short)(DeleteEnum.Normal))).ToList();
            return View();
        } 
        #endregion

    }
}