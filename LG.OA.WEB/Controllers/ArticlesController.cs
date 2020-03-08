using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using LG.OA.WEB.LuceneAndPanGu;
using LG.OA.WEB.Models.SearchModels;
using Webdiyer.WebControls.Mvc;

namespace LG.OA.WEB.Controllers
{
    public class ArticlesController : Controller
    {
        private SearchModelContext db = new SearchModelContext();
        // https://localhost:44379/Articles/Index
        // GET: Articles
        public ActionResult Index()
        {
            db.Database.CreateIfNotExists();

            List<Article> articleFromFile = new List<Article>(); 
            var files = System.IO.Directory.GetFiles(Request.MapPath(@"\LuceneAndPanGu\Articles\"), "*.txt");
            foreach (var file in files)
            {
                Article article = new Article();
                article.Title = file.Substring(file.LastIndexOf(@"\") + 1, file.Length - file.LastIndexOf(@"\") - 1);
                article.Content = System.IO.File.ReadAllText(file, System.Text.Encoding.Default);
                articleFromFile.Add(article);
                ViewBag.ArticleFiles = articleFromFile;
            }

            return View(db.Article.ToList());
        }


      
        // GET: Articles/Details/5
        public ActionResult Details(string kw, int id = 0)
        {
            Article article = db.Article.Find(id);
            if (article == null)
            {
                return HttpNotFound();
            }
            if (!string.IsNullOrEmpty(kw))
            {
                List<string> lstkw = SearchIndexManager.Manager.PanGuSplitWord(kw);
                var result = article.Content;
                foreach (var v in lstkw)
                {
                    result = result.Replace(v, "<span style='Color:Red'>" + v + "</span>");
                }
                article.Content = result;
            }
            //return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            //return HttpNotFound();
            return View(article);

        }

        // GET: Articles/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Articles/Create
        // 为了防止“过多发布”攻击，请启用要绑定到的特定属性，有关 
        // 详细信息，请参阅 https://go.microsoft.com/fwlink/?LinkId=317598。
        [HttpGet]
        //[ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Create([Bind(Include = "ArticleId,Title,Content,CreateTime")] Article article)
        {
            if (ModelState.IsValid)
            {
                article.CreateTime =  DateTime.Now;
                db.Article.Add(article);
                db.SaveChanges();
                SearchIndexManager.Manager.AddQueue(article);   // 新增数据 --> 数据队列 --> 加入索引你库
                return RedirectToAction("Index", "Articles");
            }

            return View(article);
        }
        [HttpPost]
        public ActionResult Create(string Title,string Content)
        {

            Create(new Article { Title = Title,Content=Content });
            return this.Content("添加索引成功");
        }

        // GET: Articles/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Article article = db.Article.Find(id);
            if (article == null)
            {
                return HttpNotFound();
            }
            return View(article);
        }

        // POST: Articles/Edit/5
        // 为了防止“过多发布”攻击，请启用要绑定到的特定属性，有关 
        // 详细信息，请参阅 https://go.microsoft.com/fwlink/?LinkId=317598。
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ArticleId,Title,Content,CreateTime")] Article article)
        {
            if (ModelState.IsValid)
            {
                db.Entry(article).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(article);
        }

        // GET: Articles/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Article article = db.Article.Find(id);
            if (article == null)
            {
                return HttpNotFound();
            }
            return View(article);
        }

        // POST: Articles/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Article article = db.Article.Find(id);
            db.Article.Remove(article);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
