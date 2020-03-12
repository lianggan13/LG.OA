 
using LG.OA.DALSession;
using LG.OA.IDLL;
using LG.OA.Model.OAModels;
using LG.OA.Model.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LG.OA.DLL
{
	
	public partial class ActionInfoService :BaseService<ActionInfo>,IActionInfoService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.ActionInfoDAL;
        }
    }   
	
	public partial class DefinitionIdentityTableService :BaseService<DefinitionIdentityTable>,IDefinitionIdentityTableService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.DefinitionIdentityTableDAL;
        }
    }   
	
	public partial class FileInfoService :BaseService<FileInfo>,IFileInfoService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.FileInfoDAL;
        }
    }   
	
	public partial class IdentityOwnerTableService :BaseService<IdentityOwnerTable>,IIdentityOwnerTableService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.IdentityOwnerTableDAL;
        }
    }   
	
	public partial class InstanceMetadataChangesTableService :BaseService<InstanceMetadataChangesTable>,IInstanceMetadataChangesTableService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.InstanceMetadataChangesTableDAL;
        }
    }   
	
	public partial class InstancePromotedPropertiesTableService :BaseService<InstancePromotedPropertiesTable>,IInstancePromotedPropertiesTableService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.InstancePromotedPropertiesTableDAL;
        }
    }   
	
	public partial class InstancesTableService :BaseService<InstancesTable>,IInstancesTableService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.InstancesTableDAL;
        }
    }   
	
	public partial class KeysTableService :BaseService<KeysTable>,IKeysTableService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.KeysTableDAL;
        }
    }   
	
	public partial class LockOwnersTableService :BaseService<LockOwnersTable>,ILockOwnersTableService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.LockOwnersTableDAL;
        }
    }   
	
	public partial class MenuInfoService :BaseService<MenuInfo>,IMenuInfoService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.MenuInfoDAL;
        }
    }   
	
	public partial class OrderInfoService :BaseService<OrderInfo>,IOrderInfoService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.OrderInfoDAL;
        }
    }   
	
	public partial class R_UserInfo_ActionInfoService :BaseService<R_UserInfo_ActionInfo>,IR_UserInfo_ActionInfoService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.R_UserInfo_ActionInfoDAL;
        }
    }   
	
	public partial class RoleInfoService :BaseService<RoleInfo>,IRoleInfoService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.RoleInfoDAL;
        }
    }   
	
	public partial class RunnableInstancesTableService :BaseService<RunnableInstancesTable>,IRunnableInstancesTableService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.RunnableInstancesTableDAL;
        }
    }   
	
	public partial class ServiceDeploymentsTableService :BaseService<ServiceDeploymentsTable>,IServiceDeploymentsTableService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.ServiceDeploymentsTableDAL;
        }
    }   
	
	public partial class UserInfoService :BaseService<UserInfo>,IUserInfoService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.UserInfoDAL;
        }
    }   
	
	public partial class UserInfoExtService :BaseService<UserInfoExt>,IUserInfoExtService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.UserInfoExtDAL;
        }
    }   
	
	public partial class WF_InstanceService :BaseService<WF_Instance>,IWF_InstanceService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.WF_InstanceDAL;
        }
    }   
	
	public partial class WF_StepService :BaseService<WF_Step>,IWF_StepService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.WF_StepDAL;
        }
    }   
	
	public partial class WF_TempService :BaseService<WF_Temp>,IWF_TempService
    {
    

		 public override void SetCurrentDAL()
        {
            CurrentDAL = this.CurrentDBSession.WF_TempDAL;
        }
    }   
	
}