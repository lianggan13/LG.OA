 
using LG.OA.Common;
using LG.OA.DAL;
using LG.OA.IDAL;
using LG.OA.IDALSession;
using LG.OA.Model.OAModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LG.OA.DALSession
{
	public partial class DBSession :  IDBSession
    {
	
		private IActionInfoDAL _ActionInfoDAL;
        public IActionInfoDAL ActionInfoDAL
        {
            get
            {
                if(_ActionInfoDAL == null)
                {
                    _ActionInfoDAL = AbstractDBFactory.CreateDAL("ActionInfoDAL") as  ActionInfoDAL ;
                }
                return _ActionInfoDAL;
            }
            set { _ActionInfoDAL = value; }
        }
	
		private IDefinitionIdentityTableDAL _DefinitionIdentityTableDAL;
        public IDefinitionIdentityTableDAL DefinitionIdentityTableDAL
        {
            get
            {
                if(_DefinitionIdentityTableDAL == null)
                {
                    _DefinitionIdentityTableDAL = AbstractDBFactory.CreateDAL("DefinitionIdentityTableDAL") as  DefinitionIdentityTableDAL ;
                }
                return _DefinitionIdentityTableDAL;
            }
            set { _DefinitionIdentityTableDAL = value; }
        }
	
		private IFileInfoDAL _FileInfoDAL;
        public IFileInfoDAL FileInfoDAL
        {
            get
            {
                if(_FileInfoDAL == null)
                {
                    _FileInfoDAL = AbstractDBFactory.CreateDAL("FileInfoDAL") as  FileInfoDAL ;
                }
                return _FileInfoDAL;
            }
            set { _FileInfoDAL = value; }
        }
	
		private IIdentityOwnerTableDAL _IdentityOwnerTableDAL;
        public IIdentityOwnerTableDAL IdentityOwnerTableDAL
        {
            get
            {
                if(_IdentityOwnerTableDAL == null)
                {
                    _IdentityOwnerTableDAL = AbstractDBFactory.CreateDAL("IdentityOwnerTableDAL") as  IdentityOwnerTableDAL ;
                }
                return _IdentityOwnerTableDAL;
            }
            set { _IdentityOwnerTableDAL = value; }
        }
	
		private IInstanceMetadataChangesTableDAL _InstanceMetadataChangesTableDAL;
        public IInstanceMetadataChangesTableDAL InstanceMetadataChangesTableDAL
        {
            get
            {
                if(_InstanceMetadataChangesTableDAL == null)
                {
                    _InstanceMetadataChangesTableDAL = AbstractDBFactory.CreateDAL("InstanceMetadataChangesTableDAL") as  InstanceMetadataChangesTableDAL ;
                }
                return _InstanceMetadataChangesTableDAL;
            }
            set { _InstanceMetadataChangesTableDAL = value; }
        }
	
		private IInstancePromotedPropertiesTableDAL _InstancePromotedPropertiesTableDAL;
        public IInstancePromotedPropertiesTableDAL InstancePromotedPropertiesTableDAL
        {
            get
            {
                if(_InstancePromotedPropertiesTableDAL == null)
                {
                    _InstancePromotedPropertiesTableDAL = AbstractDBFactory.CreateDAL("InstancePromotedPropertiesTableDAL") as  InstancePromotedPropertiesTableDAL ;
                }
                return _InstancePromotedPropertiesTableDAL;
            }
            set { _InstancePromotedPropertiesTableDAL = value; }
        }
	
		private IInstancesTableDAL _InstancesTableDAL;
        public IInstancesTableDAL InstancesTableDAL
        {
            get
            {
                if(_InstancesTableDAL == null)
                {
                    _InstancesTableDAL = AbstractDBFactory.CreateDAL("InstancesTableDAL") as  InstancesTableDAL ;
                }
                return _InstancesTableDAL;
            }
            set { _InstancesTableDAL = value; }
        }
	
		private IKeysTableDAL _KeysTableDAL;
        public IKeysTableDAL KeysTableDAL
        {
            get
            {
                if(_KeysTableDAL == null)
                {
                    _KeysTableDAL = AbstractDBFactory.CreateDAL("KeysTableDAL") as  KeysTableDAL ;
                }
                return _KeysTableDAL;
            }
            set { _KeysTableDAL = value; }
        }
	
		private ILockOwnersTableDAL _LockOwnersTableDAL;
        public ILockOwnersTableDAL LockOwnersTableDAL
        {
            get
            {
                if(_LockOwnersTableDAL == null)
                {
                    _LockOwnersTableDAL = AbstractDBFactory.CreateDAL("LockOwnersTableDAL") as  LockOwnersTableDAL ;
                }
                return _LockOwnersTableDAL;
            }
            set { _LockOwnersTableDAL = value; }
        }
	
		private IMenuInfoDAL _MenuInfoDAL;
        public IMenuInfoDAL MenuInfoDAL
        {
            get
            {
                if(_MenuInfoDAL == null)
                {
                    _MenuInfoDAL = AbstractDBFactory.CreateDAL("MenuInfoDAL") as  MenuInfoDAL ;
                }
                return _MenuInfoDAL;
            }
            set { _MenuInfoDAL = value; }
        }
	
		private IOrderInfoDAL _OrderInfoDAL;
        public IOrderInfoDAL OrderInfoDAL
        {
            get
            {
                if(_OrderInfoDAL == null)
                {
                    _OrderInfoDAL = AbstractDBFactory.CreateDAL("OrderInfoDAL") as  OrderInfoDAL ;
                }
                return _OrderInfoDAL;
            }
            set { _OrderInfoDAL = value; }
        }
	
		private IR_UserInfo_ActionInfoDAL _R_UserInfo_ActionInfoDAL;
        public IR_UserInfo_ActionInfoDAL R_UserInfo_ActionInfoDAL
        {
            get
            {
                if(_R_UserInfo_ActionInfoDAL == null)
                {
                    _R_UserInfo_ActionInfoDAL = AbstractDBFactory.CreateDAL("R_UserInfo_ActionInfoDAL") as  R_UserInfo_ActionInfoDAL ;
                }
                return _R_UserInfo_ActionInfoDAL;
            }
            set { _R_UserInfo_ActionInfoDAL = value; }
        }
	
		private IRoleInfoDAL _RoleInfoDAL;
        public IRoleInfoDAL RoleInfoDAL
        {
            get
            {
                if(_RoleInfoDAL == null)
                {
                    _RoleInfoDAL = AbstractDBFactory.CreateDAL("RoleInfoDAL") as  RoleInfoDAL ;
                }
                return _RoleInfoDAL;
            }
            set { _RoleInfoDAL = value; }
        }
	
		private IRunnableInstancesTableDAL _RunnableInstancesTableDAL;
        public IRunnableInstancesTableDAL RunnableInstancesTableDAL
        {
            get
            {
                if(_RunnableInstancesTableDAL == null)
                {
                    _RunnableInstancesTableDAL = AbstractDBFactory.CreateDAL("RunnableInstancesTableDAL") as  RunnableInstancesTableDAL ;
                }
                return _RunnableInstancesTableDAL;
            }
            set { _RunnableInstancesTableDAL = value; }
        }
	
		private IServiceDeploymentsTableDAL _ServiceDeploymentsTableDAL;
        public IServiceDeploymentsTableDAL ServiceDeploymentsTableDAL
        {
            get
            {
                if(_ServiceDeploymentsTableDAL == null)
                {
                    _ServiceDeploymentsTableDAL = AbstractDBFactory.CreateDAL("ServiceDeploymentsTableDAL") as  ServiceDeploymentsTableDAL ;
                }
                return _ServiceDeploymentsTableDAL;
            }
            set { _ServiceDeploymentsTableDAL = value; }
        }
	
		//private IUserInfoDAL _UserInfoDAL;
  //      public IUserInfoDAL UserInfoDAL
  //      {
  //          get
  //          {
  //              if(_UserInfoDAL == null)
  //              {
  //                  _UserInfoDAL = AbstractDBFactory.CreateDAL("UserInfoDAL") as  UserInfoDAL ;
  //              }
  //              return _UserInfoDAL;
  //          }
  //          set { _UserInfoDAL = value; }
  //      }
	
		private IUserInfoExtDAL _UserInfoExtDAL;
        public IUserInfoExtDAL UserInfoExtDAL
        {
            get
            {
                if(_UserInfoExtDAL == null)
                {
                    _UserInfoExtDAL = AbstractDBFactory.CreateDAL("UserInfoExtDAL") as  UserInfoExtDAL ;
                }
                return _UserInfoExtDAL;
            }
            set { _UserInfoExtDAL = value; }
        }
	
		private IWF_InstanceDAL _WF_InstanceDAL;
        public IWF_InstanceDAL WF_InstanceDAL
        {
            get
            {
                if(_WF_InstanceDAL == null)
                {
                    _WF_InstanceDAL = AbstractDBFactory.CreateDAL("WF_InstanceDAL") as  WF_InstanceDAL ;
                }
                return _WF_InstanceDAL;
            }
            set { _WF_InstanceDAL = value; }
        }
	
		private IWF_StepDAL _WF_StepDAL;
        public IWF_StepDAL WF_StepDAL
        {
            get
            {
                if(_WF_StepDAL == null)
                {
                    _WF_StepDAL = AbstractDBFactory.CreateDAL("WF_StepDAL") as  WF_StepDAL ;
                }
                return _WF_StepDAL;
            }
            set { _WF_StepDAL = value; }
        }
	
		private IWF_TempDAL _WF_TempDAL;
        public IWF_TempDAL WF_TempDAL
        {
            get
            {
                if(_WF_TempDAL == null)
                {
                    _WF_TempDAL = AbstractDBFactory.CreateDAL("WF_TempDAL") as  WF_TempDAL ;
                }
                return _WF_TempDAL;
            }
            set { _WF_TempDAL = value; }
        }
	}	
}