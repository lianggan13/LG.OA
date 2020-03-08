using QuartzTask.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuartzTask
{
    public class SearchKeyWorksService
    {
        private SearchModel db = new SearchModel();
        /// <summary>
        /// 将统计的明细表的数据插入。
        /// </summary>
        /// <returns></returns>
        public bool InsertKeyWordsRank()
        {
            string sql = "insert into SearchTotals(Id,KeyWords,SearchCounts) select newid(),KeyWords,count(*)  from SearchDetails where DateDiff(day,SearchDetails.SearchDateTime,getdate())<=30 group by SearchDetails.KeyWords";
            return this.db.Database.ExecuteSqlCommand(sql) > 0;
        }
        /// <summary>
        /// 删除汇总中的数据。
        /// </summary>
        /// <returns></returns>
        public bool DeleteAllKeyWordsRank()
        {
            string sql = "truncate table SearchTotals";
            return this.db.Database.ExecuteSqlCommand(sql) > 0;
        }
    }
}
