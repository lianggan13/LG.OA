using LG.OA.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace LG.OA.IDAL
{
    public interface IBaseDAL<T>
    {
        IQueryable<T> LoadEntites(Expression<Func<T, bool>> wherelambda);
        IQueryable<T> LoadEntites<Tkey>(int pageIndex, int pageSize, out int totalCount, Expression<Func<T, bool>> wherelambda, Expression<Func<T, Tkey>> orderbylambda, bool isAsc = true);
        T AddEntity(T entity);
        bool UpdateEntity(T entity);
        bool DeleteEntity(T entity);
    }
}
