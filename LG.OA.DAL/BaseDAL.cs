using LG.OA.Common;
using LG.OA.IDAL;
using LG.OA.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;

namespace LG.OA.DAL
{
    public class BaseDAL<T>where T:class,new()
    {
        public OADBContext DB = AbstractDBFactory.DB;   // 工作单元模式，保持线程内 BD 唯一

        public T AddEntity(T entity)
        {
            //DB.Set<T>().Add(entity);
            //DB.SaveChanges();
            DB.Entry<T>(entity).State = System.Data.EntityState.Added;
            return entity;
        }

        public bool DeleteEntity(T entity)
        {
            //DB.Set<T>().Remove(entity);
            //return DB.SaveChanges() > 0;
            DB.Entry<T>(entity).State = System.Data.EntityState.Deleted;
            return true;    
        }

        public IQueryable<T> LoadEntites(Expression<Func<T, bool>> wherelambda)
        {
            return DB.Set<T>().Where(wherelambda);
        }

        public IQueryable<T> LoadEntites<Tkey>(int pageIndex, int pageSize, out int totalCount, Expression<Func<T, bool>> wherelambda, Expression<Func<T, Tkey>> orderbylambda, bool isAsc = true)
        {
            var entities = DB.Set<T>().Where(wherelambda);
            totalCount = entities.Count();
            if (isAsc)
            {
                entities = entities.OrderBy<T, Tkey>(orderbylambda).Skip((pageIndex - 1) * pageSize).Take(pageSize);    //  必须在调用“Skip”方法之前调用方法“OrderBy”
            }
            else
            {
                entities = entities.OrderByDescending<T, Tkey>(orderbylambda).Skip((pageIndex - 1) * pageSize).Take(pageSize);
            }
            return entities;
        }


        public bool UpdateEntity(T entity)
        {
            DB.Entry<T>(entity).State = System.Data.EntityState.Modified;
            return true;
        }
    }
}
