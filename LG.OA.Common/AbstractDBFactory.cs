using LG.OA.Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Reflection;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;

namespace LG.OA.Common
{
    public class AbstractDBFactory
    {
        public static OADBContext DB
        {
            get
            {

                OADBContext db = CallContext.GetData("DB") as OADBContext;
                if (db == null)
                {
                    db = new OADBContext();
                    CallContext.SetData("DB", db);
                }
                return db;
            }
        }
        public static readonly string AssemblyPath = ConfigurationManager.AppSettings["AssemblyPath"];
        public static readonly string NamespacePath = ConfigurationManager.AppSettings["NamespacePath"];
        public static object CreateUserInfoDAL()
        {
            string fullClassName = NamespacePath + ".UserInfoDAL";
            return CreateInstance(fullClassName);
        }
        public static object CreateDAL(string modeName)
        {
            string fullClassName = NamespacePath + "."+ modeName;
            return CreateInstance(fullClassName);
        }

        private static object CreateInstance(string fullClassName)
        {
            Assembly assembly = Assembly.Load(AssemblyPath);
            return assembly.CreateInstance(fullClassName);
        }
    }
}
