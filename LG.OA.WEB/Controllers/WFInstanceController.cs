using LG.OA.Model.Enums;
using LG.OA.Model.OAModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LG.OA.WEB.Controllers
{
    public class WFInstanceController : BaseController
    {
        // GET: WFInstance
        public ActionResult Index()
        {
            return View();
        }


        #region 发起流程

        //发起流程Id：  流程模板的id
        public ActionResult Add(int id)
        {

            var temp = WF_TempService.LoadEntites(u => u.ID == id).FirstOrDefault();
            ViewBag.Temp = temp;
            var allUsers = UserInfoService.LoadEntites(u => u.DelFlag == (short)(DeleteEnum.Normal)).ToList();
            ViewData["flowTo"] = (from u in allUsers
                                  select new SelectListItem() { Selected = false, Text = u.UName, Value = u.ID + "" })
                                    .ToList();
            return View();
        }
        #endregion

        /// <summary>
        /// 发起流程
        /// </summary>
        /// <param name="instance"></param>
        /// <param name="id"></param>
        /// <param name="flowTo"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Add(WF_Instance instance, int id, int flowTo)
        {
            var currentUserId = LoginUser.ID;

            //在工作流实例表添加一条数据：
            instance.DelFlag = (short)(DeleteEnum.Normal);
            instance.StartTime = DateTime.Now;
            instance.FilePath = string.Empty;

            instance.StartBy = currentUserId;
            instance.Level = 0;
            instance.Status = (short)WF_InstanceEnum.Processing;
            instance.WFInstanceId = Guid.Empty;
            instance.WF_TempID = id;
            WF_InstanceService.AddEntity(instance);


            //第二点：启动工作流
            var wfApp = WorkflowApplicationHelper.CreateWorkflowApp(new FincalActivity(), null);
            instance.WFInstanceId = wfApp.Id;
            WF_InstanceService.Update(instance);

            //第三点：在步骤表里面添加两条步骤。一个当前已经处理的完成步骤。
            WF_Step startStep = new WF_Step();
            startStep.WF_InstanceID = instance.ID;
            startStep.SubTime = DateTime.Now;
            startStep.StepName = "提交审批表单";
            startStep.IsEndStep = false;
            startStep.IsStartStep = true;
            startStep.ProcessBy = currentUserId;
            startStep.PorcessComment = "提交申请";
            startStep.ProcessResult = "通过";
            startStep.ProcessTime = DateTime.Now;
            startStep.StepName = "提交审批表单";
            startStep.StepStatus = (short)Heima8.OA.Model.Enum.WFStepEnum.Processed;

            WF_StepService.Add(startStep);

            //二个步骤：下一步谁审批的步骤。  项目经理审批
            WF_Step nextStep = new WF_Step();
            nextStep.WF_InstanceID = instance.ID;
            nextStep.SubTime = DateTime.Now;
            nextStep.ProcessTime = DateTime.Now;
            nextStep.PorcessComment = string.Empty;

            nextStep.IsEndStep = false;
            nextStep.IsStartStep = false;
            nextStep.ProcessBy = flowTo;

            nextStep.ProcessResult = "";

            nextStep.StepName = "";
            nextStep.StepStatus = (short)Heima8.OA.Model.Enum.WFStepEnum.UnProecess;
            WF_StepService.Add(nextStep);
            return RedirectToAction("ShowMyCheck");
        }

#endregion

    }
}