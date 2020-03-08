using LG.OA.DAL;
using LG.OA.DALSession;
using LG.OA.IDAL;
using LG.OA.IDALSession;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace LG.OA.DLL
{

    public abstract class BaseService<T> where T : class, new()
    {
        public IDBSession CurrentDBSession
        {
            get
            {
                return new DBSession();
            }

        }
        public IBaseDAL<T> CurrentDAL { get; set; }
        public BaseService()
        {
            SetCurrentDAL();   // 要求子类一定实现抽象方法，并在构造函数中调用 
        }
        public abstract void SetCurrentDAL();


        public T AddEntity(T entity)
        {
            CurrentDAL.AddEntity(entity);
            CurrentDBSession.SaveChanges();
            return entity;
        }

        public bool DeleteEntity(T entity)
        {
            CurrentDAL.DeleteEntity(entity);
            return CurrentDBSession.SaveChanges();
        }

        public IQueryable<T> LoadEntites(Expression<Func<T, bool>> wherelambda)
        {
            return CurrentDAL.LoadEntites(wherelambda);
        }

        public IQueryable<T> LoadEntites<Tkey>(int pageIndex, int pageSize, out int totalCount, Expression<Func<T, bool>> wherelambda, Expression<Func<T, Tkey>> orderbylambda, bool isAsc = true)
        {
            return CurrentDAL.LoadEntites(pageIndex, pageSize, out totalCount, wherelambda, orderbylambda, isAsc);
        }


        public bool UpdateEntity(T entity)
        {
            CurrentDAL.UpdateEntity(entity);
            return CurrentDBSession.SaveChanges();
        }

    }
}
