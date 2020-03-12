using LG.OA.Model.OAModels;
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

}
