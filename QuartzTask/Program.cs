using Quartz;
using Quartz.Impl;
using Quartz.Simpl;
using Quartz.Xml;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Topshelf;

namespace QuartzTask
{
    class Program
    {
        static void Main(string[] args)
        {
            Task<bool> QuartzTask = QuartzHelper.ExecuteInterval<QuartzJob>(20);
            QuartzTask.Wait();

            #region Topshelf部署Windows服务
            //TopshelfHelper.BuildHost("QuartzJob任务定时发送", "QuartzJob", "QuartzJob"); 
            #endregion

            Console.ReadKey();
        }
    }

   

}
