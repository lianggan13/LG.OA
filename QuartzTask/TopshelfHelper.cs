using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Topshelf;

namespace QuartzTask
{
    /// <summary>
    /// Topshelf部署Windows服务
    /// </summary>
  public  class TopshelfHelper
    {
        public static void BuildHost(string description,string displayName,string serviceName)
        {
            HostFactory.Run(x =>
            {
                // x.UseLog4Net();
                x.Service<TownCrier>(s =>
                {
                    s.ConstructUsing(name => new TownCrier());
                    s.WhenStarted(tc => tc.Start());
                    s.WhenStopped(tc => tc.Stop());
                });
                x.RunAsLocalSystem();
                x.SetDescription(description);
                x.SetDisplayName(displayName);
                x.SetServiceName(serviceName);

                x.EnablePauseAndContinue();
            });
           
        }

    }
    public class TownCrier
    {
        //private Task<IScheduler> scheduler;
        Task<bool> QuartzTask;
        bool stop = false;
        public TownCrier()
        {
            ////从配置中读取计划执行策略
            //XMLSchedulingDataProcessor processor = new XMLSchedulingDataProcessor(new SimpleTypeLoadHelper());
            //ISchedulerFactory sf = new StdSchedulerFactory();
            //scheduler = sf.GetScheduler();
            //processor.ProcessFileAndScheduleJobs("~/quartz_jobs.xml", scheduler);//quartz_jobs.xml文件路径
            // QuartzTask = QuartzHelper.ExecuteInterval<QuartzJob>(5);
            while (!stop)
            {
                Console.WriteLine("Doing...");
                Thread.Sleep(500);
            }
        }
        public void Start()
        {
            //scheduler.Start();//启动quartz服务
            // QuartzTask.Wait();
            Console.WriteLine("Start");
            stop = false;
        }
        public void Stop()
        {
            // QuartzHelper.StopTask();

            stop = true;
            Console.WriteLine("End.");

        }
    }
}
