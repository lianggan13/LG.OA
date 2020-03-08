using LG.OA.DALSession;
using LG.OA.IDAL;
using LG.OA.IDALSession;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;

namespace LG.OA.IDLL
{
    public interface IBaseService<T>where T:class,new()
    {
        IBaseDAL<T> CurrentDAL { get; set; }
        IDBSession CurrentDBSession { get; }

        T AddEntity(T entity);

        bool DeleteEntity(T entity);
        IQueryable<T> LoadEntites(Expression<Func<T, bool>> wherelambda);
        IQueryable<T> LoadEntites<Tkey>(int pageIndex, int pageSize, out int totalCount, Expression<Func<T, bool>> wherelambda, Expression<Func<T, Tkey>> orderbylambda, bool isAsc = true);
        void SetCurrentDAL();
        bool UpdateEntity(T entity);
    }
}