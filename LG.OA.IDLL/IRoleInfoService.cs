using LG.OA.Model.OAModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LG.OA.IDLL
{
    public partial interface IRoleInfoService : IBaseService<RoleInfo>
    {
        bool DeleteEntities(IEnumerable<int> ids);
    }
}
