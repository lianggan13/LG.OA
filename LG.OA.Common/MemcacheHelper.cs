using Enyim.Caching;
using Enyim.Caching.Memcached;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LG.OA.Common
{
    public class MemcacheHelper
    {
        private static readonly MemcachedClient CacheClient = new MemcachedClient();

        static MemcacheHelper()
        {           
            CacheClient = new MemcachedClient();
        }
        /// <summary>
        /// 存储数据
        /// </summary>
        /// <param name="key"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool Set(string key, object value)
        {
            return CacheClient.Store(Exists(key)?StoreMode.Replace:StoreMode.Add,key,value);
        }
        public static bool Set(string key, object value, DateTime expireTime)
        {
            return CacheClient.Store(Exists(key) ? StoreMode.Replace:StoreMode.Add, key, value,expireTime);
        }
        /// <summary>
        /// 获取数据
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public static object Get(string key)
        {
            return CacheClient.Get(key);
        }
        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public static bool Delete(string key)
        {
            if(Exists(key))
            {
                return CacheClient.Remove(key);

            }
            return false;
        }

        /// <summary>
        /// 移除所有缓存
        /// </summary>
        public static void Clear()
        {
            CacheClient.FlushAll();
        }


        /// <summary>
        /// 是否存在
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        private static bool Exists(string key)
        {
            return CacheClient.Get(key) != null;
        }
    }
}
