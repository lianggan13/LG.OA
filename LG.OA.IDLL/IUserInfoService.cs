using LG.OA.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LG.OA.IDLL
{
    public partial interface IUserInfoService : IBaseService<UserInfo>
    {
         bool DeleteEntities(IEnumerable<int> ids);
    }

}
