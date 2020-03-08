using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using LG.OA.WEB.LuceneAndPanGu;
using LG.OA.WEB.Models.SearchModels;
using Newtonsoft.Json;
using Webdiyer.WebControls.Mvc;

namespace LG.OA.WEB.Controllers
{
    public class SearchController : Controller
    {
        private SearchModelContext db = new SearchModelContext();
        // GET: Search
        public ActionResult Index(string txtSearch, bool? hidfIsOr, int id = 1)
        {


            int pageSize = 4;
            int totalCount = 0;
            PagedList<SearchResult> resultPageList = null;
            if (!string.IsNullOrEmpty(txtSearch))//如果点击的是查询按钮
            {
                // 索引查询
                List<SearchResult> resultList = (hidfIsOr == null || hidfIsOr.Value == false) ?
                                        SearchIndexManager.Manager.LenuceAndSearch(txtSearch, id, pageSize, out totalCount) :
                                        SearchIndexManager.Manager.LenuceOrSearch(txtSearch, id, pageSize, out totalCount);
                // 搜索词插入到明细表。
                SearchDetail searchDetail = new SearchDetail { Id = Guid.NewGuid(), KeyWords = txtSearch, SearchDateTime = DateTime.Now };
                db.SearchDetail.Add(searchDetail);
                int r = db.SaveChanges();
                // 索引结果分页
                resultPageList = new PagedList<SearchResult>(resultList, id, pageSize, totalCount);
                resultPageList.CurrentPageIndex = id;
                resultPageList.TotalItemCount = totalCount;
            }
            // 高频词统计
            var keyWords = db.SearchTotal.OrderByDescending(a => a.SearchCounts).Select(x => x.KeyWords).Skip(0).Take(6).ToList();
            ViewBag.KeyWords = keyWords;
            return View(resultPageList);

        }

        //public ActionResult Index2(string txtSearch, string btnSearch, string btnCreate)
        //{
        //    List<SearchResult> list = null;
        //    if (!string.IsNullOrEmpty(btnSearch))//如果点击的是查询按钮
        //    {
        //        list = Search(txtSearch);
        //    }
        //    else if (!string.IsNullOrEmpty(btnCreate)) //如果点击的创建索引按钮
        //    {
        //        string msg = CreateIndex();
        //        ViewData["ShowInfo"] = string.IsNullOrEmpty(msg) ? "创建成功" : msg;
        //    }
        //    return View(list);
        //}
        public string GetHistoryKeyWords(string term)
        {
           if (string.IsNullOrEmpty(term))
                return null;
            string sql = "select KeyWords from SearchTotals where KeyWords like @term";
            var list = db.Database.SqlQuery<string>(sql, new SqlParameter("@term", term + "%")).ToList();
            return JsonConvert.SerializeObject(list.ToArray());
        }
    }
}