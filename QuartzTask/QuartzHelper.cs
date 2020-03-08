using Quartz;
using Quartz.Impl;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace QuartzTask
{
    public class QuartzHelper
    {
        static readonly IScheduler _scheduler;
        static QuartzHelper()
        {
            var properties = new NameValueCollection();
            // 设置线程池
            properties["quartz.threadPool.type"] = "Quartz.Simpl.SimpleThreadPool, Quartz";
            //设置线程池的最大线程数量
            properties["quartz.threadPool.threadCount"] = "5";
            //设置作业中每个线程的优先级
            properties["quartz.threadPool.threadPriority"] = ThreadPriority.Normal.ToString();

            // 远程输出配置
            properties["quartz.scheduler.exporter.type"] = "Quartz.Simpl.RemotingSchedulerExporter, Quartz";
            properties["quartz.scheduler.exporter.port"] = "555";  //配置端口号
            properties["quartz.scheduler.exporter.bindName"] = "QuartzScheduler";
            properties["quartz.scheduler.exporter.channelType"] = "tcp"; //协议类型

            // 创建一个调度器工厂
            var schedulerFactory = new StdSchedulerFactory(properties);
            // 生成一个调度器
            _scheduler = schedulerFactory.GetScheduler().Result;
            //  开启调度器
            _scheduler.Start();
        }
        /// <summary>
        /// 时间间隔执行任务
        /// </summary>
        /// <typeparam name="T">任务类，必须实现IJob接口</typeparam>
        /// <param name="seconds">时间间隔(单位：秒)</param>
        public static async Task<bool> ExecuteInterval<T>(int seconds) where T : IJob
        {
            //2、创建工作任务
            IJobDetail job = JobBuilder.Create<T>().Build();
            // 3、创建触发器
            ITrigger trigger = TriggerBuilder.Create()
           .StartNow()
           .WithSimpleSchedule(
                x => x.WithIntervalInSeconds(seconds)
                //x.WithIntervalInMinutes(1)
                .RepeatForever())
           .Build();
            //4、将任务和触发器关联到调度器
            await _scheduler.ScheduleJob(job, trigger);
            return true;
        }

        /// <summary>
        /// 指定时间执行任务
        /// </summary>
        /// <typeparam name="T">任务类，必须实现IJob接口</typeparam>
        /// <param name="cronExpression">cron表达式，即指定时间点的表达式</param>
        public static async Task<bool> ExecuteByCron<T>(string cronExpression) where T : IJob
        {
            //2、创建工作任务
            IJobDetail job = JobBuilder.Create<T>().Build();
            //3、创建触发器
            ICronTrigger trigger = (ICronTrigger)TriggerBuilder.Create()
            .StartNow()
            .WithCronSchedule(cronExpression)
            .Build();
            //4、将任务加入到任务池
            await _scheduler.ScheduleJob(job, trigger);
            return true;
        }
        public static async void StopTask()
        {
            if (!_scheduler.IsShutdown)
                await _scheduler.Shutdown();
        }
    }
}