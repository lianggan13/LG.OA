using Quartz;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace QuartzTask
{
    //[PersistJobDataAfterExecution]
    //[DisallowConcurrentExecution]
    class QuartzJob : IJob
    {
        public Task Execute(IJobExecutionContext context)
        {
            SearchKeyWorksService bll = new SearchKeyWorksService();
            bll.DeleteAllKeyWordsRank();
            bll.InsertKeyWordsRank();
            return Task.Factory.StartNew(() => Console.WriteLine($"【统计搜索关键词】任务完成:{DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")}"));
        }
    }
}
