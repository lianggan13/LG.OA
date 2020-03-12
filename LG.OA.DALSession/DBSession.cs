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
        private IUserInfoDAL _UserInfoDAL;
        public IUserInfoDAL UserInfoDAL
        {
            get
            {
                if (_UserInfoDAL == null)
                    // _dal = new UserInfoDAL();
                    _UserInfoDAL = AbstractDBFactory.CreateUserInfoDAL() as UserInfoDAL;
                return _UserInfoDAL;
            }
            set { _UserInfoDAL = value; }
        }
        public OADBContext DB
        {
            get
            {
                return AbstractDBFactory.DB;
            }
        }


        public bool SaveChanges()
        {
            return DB.SaveChanges() > 0;
        }
    }
}
