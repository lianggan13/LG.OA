 

using LG.OA.IDAL;
using LG.OA.Model;

namespace LG.OA.IDALSession
{
	public partial interface IDBSession
    {

	
		IActionInfoDAL ActionInfoDAL {get;set;}
	
		IDefinitionIdentityTableDAL DefinitionIdentityTableDAL {get;set;}
	
		IFileInfoDAL FileInfoDAL {get;set;}
	
		IIdentityOwnerTableDAL IdentityOwnerTableDAL {get;set;}
	
		IInstanceMetadataChangesTableDAL InstanceMetadataChangesTableDAL {get;set;}
	
		IInstancePromotedPropertiesTableDAL InstancePromotedPropertiesTableDAL {get;set;}
	
		IInstancesTableDAL InstancesTableDAL {get;set;}
	
		IKeysTableDAL KeysTableDAL {get;set;}
	
		ILockOwnersTableDAL LockOwnersTableDAL {get;set;}
	
		IMenuInfoDAL MenuInfoDAL {get;set;}
	
		IOrderInfoDAL OrderInfoDAL {get;set;}
	
		IR_UserInfo_ActionInfoDAL R_UserInfo_ActionInfoDAL {get;set;}
	
		IRoleInfoDAL RoleInfoDAL {get;set;}
	
		IRunnableInstancesTableDAL RunnableInstancesTableDAL {get;set;}
	
		IServiceDeploymentsTableDAL ServiceDeploymentsTableDAL {get;set;}
	
		IUserInfoDAL UserInfoDAL {get;set;}
	
		IUserInfoExtDAL UserInfoExtDAL {get;set;}
	
		IWF_InstanceDAL WF_InstanceDAL {get;set;}
	
		IWF_StepDAL WF_StepDAL {get;set;}
	
		IWF_TempDAL WF_TempDAL {get;set;}
	}	
}