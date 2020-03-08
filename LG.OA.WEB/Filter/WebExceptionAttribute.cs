using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LG.OA.WEB.Filter
{
    public class WebExceptionAttribute: HandleErrorAttribute
    {
        public static Queue<Exception> ExpQueue = new Queue<Exception>();
        public override void OnException(ExceptionContext filterContext)
        {
             ExpQueue.Enqueue(filterContext.Exception);
            base.OnException(filterContext);    
        }
    }
}