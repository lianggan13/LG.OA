using LG.OA.DALSession;
using LG.OA.IDLL;
using LG.OA.Model;
using LG.OA.Model.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LG.OA.DLL
{
    public partial class UserInfoService: BaseService<UserInfo>,IUserInfoService
    {
        
        public override void SetCurrentDAL()
        {
            this.CurrentDAL = CurrentDBSession.UserInfoDAL;
        }

        public bool DeleteEntities(IEnumerable<int> ids)
        {
           var userInfos =   LoadEntites(o => o.DelFlag == (short)DeleteEnumType.Normal).Where(x => ids.Contains(x.ID)).ToList();
           userInfos.ForEach(o => this.CurrentDAL.DeleteEntity(o));
            // 多表关联删除
            userInfos.ForEach(o => o.R_UserInfo_ActionInfo.Clear());     // 先删除关联表  
            userInfos.ForEach(o => o.RoleInfo.Clear());                 
            userInfos.ForEach(o => o.OrderInfo.Clear());                
            CurrentDBSession.SaveChanges();
            userInfos.ForEach(o => this.CurrentDAL.DeleteEntity(o));   // 在把本表打上删除标志
            return CurrentDBSession.SaveChanges();

        }

        public bool SetUserRoleInfo(int uid, List<int> rolesId)
        {
            short delFlag = (short)(DeleteEnumType.Normal);
            UserInfo userInfo = LoadEntites(o => o.ID == uid).FirstOrDefault();
            if (rolesId.Count != 0)
            {
                // 清空 用户 的角色数据
                userInfo.RoleInfo.Clear();
                foreach (int chkid in rolesId)
                {
                    // 添加 用户 的角色数据
                    userInfo.RoleInfo.Add(this.CurrentDBSession.RoleInfoDAL.LoadEntites(o => o.DelFlag == delFlag && o.ID == chkid).FirstOrDefault());
                }
                CurrentDBSession.SaveChanges();
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
