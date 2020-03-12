 

using LG.OA.IDAL;
using LG.OA.Model.OAModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;

namespace LG.OA.DAL
{
		
	public partial class ActionInfoDAL :BaseDAL<ActionInfo>,IActionInfoDAL
    {

    }
		
	public partial class DefinitionIdentityTableDAL :BaseDAL<DefinitionIdentityTable>,IDefinitionIdentityTableDAL
    {

    }
		
	public partial class FileInfoDAL :BaseDAL<FileInfo>,IFileInfoDAL
    {

    }
		
	public partial class IdentityOwnerTableDAL :BaseDAL<IdentityOwnerTable>,IIdentityOwnerTableDAL
    {

    }
		
	public partial class InstanceMetadataChangesTableDAL :BaseDAL<InstanceMetadataChangesTable>,IInstanceMetadataChangesTableDAL
    {

    }
		
	public partial class InstancePromotedPropertiesTableDAL :BaseDAL<InstancePromotedPropertiesTable>,IInstancePromotedPropertiesTableDAL
    {

    }
		
	public partial class InstancesTableDAL :BaseDAL<InstancesTable>,IInstancesTableDAL
    {

    }
		
	public partial class KeysTableDAL :BaseDAL<KeysTable>,IKeysTableDAL
    {

    }
		
	public partial class LockOwnersTableDAL :BaseDAL<LockOwnersTable>,ILockOwnersTableDAL
    {

    }
		
	public partial class MenuInfoDAL :BaseDAL<MenuInfo>,IMenuInfoDAL
    {

    }
		
	public partial class OrderInfoDAL :BaseDAL<OrderInfo>,IOrderInfoDAL
    {

    }
		
	public partial class R_UserInfo_ActionInfoDAL :BaseDAL<R_UserInfo_ActionInfo>,IR_UserInfo_ActionInfoDAL
    {

    }
		
	public partial class RoleInfoDAL :BaseDAL<RoleInfo>,IRoleInfoDAL
    {

    }
		
	public partial class RunnableInstancesTableDAL :BaseDAL<RunnableInstancesTable>,IRunnableInstancesTableDAL
    {

    }
		
	public partial class ServiceDeploymentsTableDAL :BaseDAL<ServiceDeploymentsTable>,IServiceDeploymentsTableDAL
    {

    }
		
	public partial class UserInfoDAL :BaseDAL<UserInfo>,IUserInfoDAL
    {

    }
		
	public partial class UserInfoExtDAL :BaseDAL<UserInfoExt>,IUserInfoExtDAL
    {

    }
		
	public partial class WF_InstanceDAL :BaseDAL<WF_Instance>,IWF_InstanceDAL
    {

    }
		
	public partial class WF_StepDAL :BaseDAL<WF_Step>,IWF_StepDAL
    {

    }
		
	public partial class WF_TempDAL :BaseDAL<WF_Temp>,IWF_TempDAL
    {

    }
	
}