 

using LG.OA.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace LG.OA.IDLL
{

    public partial interface IActionInfoService : IBaseService<ActionInfo>
    {
        bool DistributeUserAction(int uid, int aid, bool hasPermission);
        bool DistributeUserAction(int aid);
        bool DistributeRoleAction(int rid, IEnumerable<int> selectActionIds);
        bool ValidateUserAction(UserInfo user, HttpRequestBase userRequest);
    }

    public partial interface IDefinitionIdentityTableService : IBaseService<DefinitionIdentityTable>
    {
       
    }   
	
	public partial interface IFileInfoService : IBaseService<FileInfo>
    {
       
    }   
	
	public partial interface IIdentityOwnerTableService : IBaseService<IdentityOwnerTable>
    {
       
    }   
	
	public partial interface IInstanceMetadataChangesTableService : IBaseService<InstanceMetadataChangesTable>
    {
       
    }   
	
	public partial interface IInstancePromotedPropertiesTableService : IBaseService<InstancePromotedPropertiesTable>
    {
       
    }   
	
	public partial interface IInstancesTableService : IBaseService<InstancesTable>
    {
       
    }   
	
	public partial interface IKeysTableService : IBaseService<KeysTable>
    {
       
    }   
	
	public partial interface ILockOwnersTableService : IBaseService<LockOwnersTable>
    {
       
    }   
	
	public partial interface IMenuInfoService : IBaseService<MenuInfo>
    {
       
    }   
	
	public partial interface IOrderInfoService : IBaseService<OrderInfo>
    {
       
    }   
	
	public partial interface IR_UserInfo_ActionInfoService : IBaseService<R_UserInfo_ActionInfo>
    {
       
    }

    public partial interface IRoleInfoService : IBaseService<RoleInfo>
    {
        bool DeleteEntities(IEnumerable<int> ids);
    }

    public partial interface IRunnableInstancesTableService : IBaseService<RunnableInstancesTable>
    {
       
    }   
	
	public partial interface IServiceDeploymentsTableService : IBaseService<ServiceDeploymentsTable>
    {
       
    }

    public partial interface IUserInfoService : IBaseService<UserInfo>
    {
        bool SetUserRoleInfo(int uid, List<int> rolesId);
    }

    public partial interface IUserInfoExtService : IBaseService<UserInfoExt>
    {
       
    }   
	
	public partial interface IWF_InstanceService : IBaseService<WF_Instance>
    {
       
    }   
	
	public partial interface IWF_StepService : IBaseService<WF_Step>
    {
       
    }   
	
	public partial interface IWF_TempService : IBaseService<WF_Temp>
    {
       
    }   
	
}