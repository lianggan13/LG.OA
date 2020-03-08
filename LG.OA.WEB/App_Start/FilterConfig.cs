using LG.OA.WEB.Filter;
using System.Web;
using System.Web.Mvc;

namespace LG.OA.WEB
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            
            // filters.Add(new HandleErrorAttribute());
            filters.Add(new WebExceptionAttribute());
            filters.Add(new ValidateUserAttribute());
        }
    }
}
