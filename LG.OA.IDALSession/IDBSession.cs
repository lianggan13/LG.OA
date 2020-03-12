using LG.OA.IDAL;
using LG.OA.Model.OAModels;

namespace LG.OA.IDALSession
{
    public partial interface IDBSession
    {
        //IUserInfoDAL UserInfoDAL { get; }
        OADBContext DB { get; }

        bool SaveChanges();
    }
}