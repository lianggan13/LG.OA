using LG.OA.IDLL;
using LG.OA.Model.Enums;
using LG.OA.Model.OAModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LG.OA.DLL
{
    public partial class RoleInfoService : BaseService<RoleInfo>, IRoleInfoService
    {
        public bool DeleteEntities(IEnumerable<int> ids)
        {
            var roleInfos = LoadEntites(o => o.DelFlag == (short)DeleteEnum.Normal).Where(x => ids.Contains(x.ID)).ToList();

            // 多表关联删除
            roleInfos.ForEach(o => o.UserInfo.Clear());     // 先删除关联表  
            CurrentDBSession.SaveChanges();
            roleInfos.ForEach(o => this.CurrentDAL.DeleteEntity(o));   // 在把本表打上删除标志
            return CurrentDBSession.SaveChanges();

        }


    }
}
