using LG.OA.WEB.Filter;
using LG.OA.WEB.LuceneAndPanGu;
using log4net;
using Spring.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace LG.OA.WEB
{
    public class MvcApplication : SpringMvcApplication//System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            StartLog4NetListen();
            StartLuceneIndexListen();
            AreaRegistration.RegisterAllAreas();
            GlobalConfiguration.Configure(WebApiConfig.Register);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        private void StartLuceneIndexListen()
        {
            SearchIndexManager.Manager.StartBuildIndexThread();
        }

        private void StartLog4NetListen()
        {
            log4net.Config.XmlConfigurator.Configure();
            ThreadPool.QueueUserWorkItem(o =>
            {
                while (true)
                {
                    if (WebExceptionAttribute.ExpQueue.Count>0)
                    {
                        Exception exp = WebExceptionAttribute.ExpQueue.Dequeue();
                        if(exp != null)
                        {
                            ILog log = LogManager.GetLogger("ErrorMsg");
                            log.Error(exp.ToString());
                        }
                        else
                        {
                            Thread.Sleep(3000);
                        }
                    }
                    else
                    {
                        Thread.Sleep(3000);
                    }

                }

            });
        }
    }
}
