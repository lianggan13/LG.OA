
using LG.OA.DALSession;
using LG.OA.IDLL;
using LG.OA.Model;
using LG.OA.Model.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace LG.OA.DLL
{

    public partial class ActionInfoService : BaseService<ActionInfo>, IActionInfoService
    {
        public bool ValidateUserAction(UserInfo user, HttpRequestBase userRequest)
        {
            if (user.RoleInfo.Where(o => o.RoleName.Equals("管理员")).Count() > 0)
                return true;       // 用户角色是管理员 则返回
            string strController = userRequest.RequestContext.RouteData.Values["controller"].ToString();
            string strAction = userRequest.RequestContext.RouteData.Values["action"].ToString();
            string userRequestUrl = string.Format("/{0}/{1}", strController, strAction); //userRequest.Url.AbsoluteUri;
            string userRequestMethod = userRequest.HttpMethod;
            ActionInfo requestAction =  this.LoadEntites(o => o.Url.Equals(userRequestUrl) && o.HttpMethd.Equals(userRequestMethod)).FirstOrDefault();
            if (requestAction == null)
                return false;
            // 通过 User --> User_Action --> Action 查询用户权限
            R_UserInfo_ActionInfo rAction =   (from a in user.R_UserInfo_ActionInfo
                                         where a.ActionInfoID == requestAction.ID
                                         select a).FirstOrDefault();
            if (rAction == null || !rAction.HasPermission)
                return false;
            // 通过 User --> Role --> Action 查询用户权限
            int count =  (from r in user.RoleInfo
             from a in r.ActionInfo
             where a.ID == requestAction.ID
             select a).Count();
            return count > 0;
        }

        public bool DistributeRoleAction(int rid, IEnumerable<int> selectActionIds)
        {
            short delFlag = (short)(DeleteEnumType.Normal);
            RoleInfo roleInfo = this.CurrentDBSession.RoleInfoDAL.LoadEntites(o => o.ID == rid).FirstOrDefault();
            roleInfo.ActionInfo.Clear();
            var roleActions = from a in this.CurrentDBSession.ActionInfoDAL.LoadEntites(o => o.DelFlag == delFlag)
                              from s in selectActionIds
                              where a.ID == s
                              select a;
            roleActions.ToList().ForEach(o => roleInfo.ActionInfo.Add(o));
            return this.CurrentDBSession.SaveChanges();
        }

        public bool DistributeUserAction(int uid, int aid, bool hasPermission)
        {
            var r_userInfo_actionInfo = this.CurrentDBSession.R_UserInfo_ActionInfoDAL.LoadEntites(o => o.ActionInfoID == aid).FirstOrDefault();
            if (r_userInfo_actionInfo != null)
            {
                r_userInfo_actionInfo.HasPermission = hasPermission;
                this.CurrentDBSession.R_UserInfo_ActionInfoDAL.UpdateEntity(r_userInfo_actionInfo);
            }
            else
            {
                R_UserInfo_ActionInfo userInfoActionInfo = new R_UserInfo_ActionInfo
                {
                    UserInfoID = uid,
                    ActionInfoID = aid,
                    HasPermission = hasPermission
                };
                this.CurrentDBSession.R_UserInfo_ActionInfoDAL.AddEntity(userInfoActionInfo);
            }
            return this.CurrentDBSession.SaveChanges();
            
        }

        public bool DistributeUserAction(int aid)
        {
            var r_userInfo_actionInfo = this.CurrentDBSession.R_UserInfo_ActionInfoDAL.LoadEntites(o => o.ActionInfoID == aid).FirstOrDefault();
            this.CurrentDBSession.R_UserInfo_ActionInfoDAL.DeleteEntity(r_userInfo_actionInfo);
            return this.CurrentDBSession.SaveChanges();

        }

        public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.ActionInfoDAL;
        }
    }

    public partial class DefinitionIdentityTableService : BaseService<DefinitionIdentityTable>, IDefinitionIdentityTableService
    {


        public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.DefinitionIdentityTableDAL;
        }
    }

    public partial class FileInfoService : BaseService<FileInfo>, IFileInfoService
    {


        public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.FileInfoDAL;
        }
    }

    public partial class IdentityOwnerTableService : BaseService<IdentityOwnerTable>, IIdentityOwnerTableService
    {


        public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.IdentityOwnerTableDAL;
        }
    }

    public partial class InstanceMetadataChangesTableService : BaseService<InstanceMetadataChangesTable>, IInstanceMetadataChangesTableService
    {


        public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.InstanceMetadataChangesTableDAL;
        }
    }

    public partial class InstancePromotedPropertiesTableService : BaseService<InstancePromotedPropertiesTable>, IInstancePromotedPropertiesTableService
    {


        public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.InstancePromotedPropertiesTableDAL;
        }
    }

    public partial class InstancesTableService : BaseService<InstancesTable>, IInstancesTableService
    {


        public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.InstancesTableDAL;
        }
    }

    public partial class KeysTableService : BaseService<KeysTable>, IKeysTableService
    {


        public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.KeysTableDAL;
        }
    }

    public partial class LockOwnersTableService : BaseService<LockOwnersTable>, ILockOwnersTableService
    {


        public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.LockOwnersTableDAL;
        }
    }

    public partial class MenuInfoService : BaseService<MenuInfo>, IMenuInfoService
    {


        public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.MenuInfoDAL;
        }
    }

    public partial class OrderInfoService : BaseService<OrderInfo>, IOrderInfoService
    {


        public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.OrderInfoDAL;
        }
    }

    public partial class R_UserInfo_ActionInfoService : BaseService<R_UserInfo_ActionInfo>, IR_UserInfo_ActionInfoService
    {


        public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.R_UserInfo_ActionInfoDAL;
        }
    }

    public partial class RoleInfoService : BaseService<RoleInfo>, IRoleInfoService
    {
        public bool DeleteEntities(IEnumerable<int> ids)
        {
            var roleInfos = LoadEntites(o => o.DelFlag == (short)DeleteEnumType.Normal).Where(x => ids.Contains(x.ID)).ToList();

            // 多表关联删除
            roleInfos.ForEach(o => o.UserInfo.Clear());     // 先删除关联表  
            CurrentDBSession.SaveChanges();
            roleInfos.ForEach(o => this.CurrentDAL.DeleteEntity(o));   // 在把本表打上删除标志
            return CurrentDBSession.SaveChanges();

        }

        public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.RoleInfoDAL;
        }
    }

    public partial class RunnableInstancesTableService : BaseService<RunnableInstancesTable>, IRunnableInstancesTableService
    {


        public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.RunnableInstancesTableDAL;
        }
    }

    public partial class ServiceDeploymentsTableService : BaseService<ServiceDeploymentsTable>, IServiceDeploymentsTableService
    {


        public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.ServiceDeploymentsTableDAL;
        }
    }

    //public partial class UserInfoService :BaseService<UserInfo>,IUserInfoService
    //   {	
    //       //public override void SetCurrentDAL()
    //       //{
    //       //    CurrentDAL = this.CurrentDBSession.UserInfoDAL;
    //       //}
    //   }   

    public partial class UserInfoExtService : BaseService<UserInfoExt>, IUserInfoExtService
    {


        public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.UserInfoExtDAL;
        }
    }

    public partial class WF_InstanceService : BaseService<WF_Instance>, IWF_InstanceService
    {


        public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.WF_InstanceDAL;
        }
    }

    public partial class WF_StepService : BaseService<WF_Step>, IWF_StepService
    {


        public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.WF_StepDAL;
        }
    }

    public partial class WF_TempService : BaseService<WF_Temp>, IWF_TempService
    {


        public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.WF_TempDAL;
        }
    }

}