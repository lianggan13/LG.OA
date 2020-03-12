using LG.OA.IDLL;
using LG.OA.Model.Enums;
using LG.OA.Model.OAModels;
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
            ActionInfo requestAction = this.LoadEntites(o => o.Url.Equals(userRequestUrl) && o.HttpMethd.Equals(userRequestMethod)).FirstOrDefault();
            if (requestAction == null)
                return false;
            // 通过 User --> User_Action --> Action 查询用户权限
            R_UserInfo_ActionInfo rAction = (from a in user.R_UserInfo_ActionInfo
                                             where a.ActionInfoID == requestAction.ID
                                             select a).FirstOrDefault();
            if (rAction == null || !rAction.HasPermission)
                return false;
            // 通过 User --> Role --> Action 查询用户权限
            int count = (from r in user.RoleInfo
                         from a in r.ActionInfo
                         where a.ID == requestAction.ID
                         select a).Count();
            return count > 0;
        }

        public bool DistributeRoleAction(int rid, IEnumerable<int> selectActionIds)
        {
            short delFlag = (short)(DeleteEnum.Normal);
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
    }
}
