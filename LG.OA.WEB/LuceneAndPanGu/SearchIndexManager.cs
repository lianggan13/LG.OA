using LG.OA.WEB.Models.SearchModels;
using Lucene.Net.Analysis;
using Lucene.Net.Documents;
using Lucene.Net.Index;
using Lucene.Net.Search;
using Lucene.Net.Store;
using PanGu;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Web;
using Webdiyer.WebControls.Mvc;

namespace LG.OA.WEB.LuceneAndPanGu
{
    public sealed class SearchIndexManager
    {
        private static SearchIndexManager _manager = new SearchIndexManager();
        public static SearchIndexManager Manager { get { return _manager = _manager ?? new SearchIndexManager(); } }
        private static string IndexPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "index");//索引所在目录//ConfigurationManager.AppSettings["Lucenedir"];//注意和磁盘上文件夹的大小写一致，否则会报错。将创建的分词内容放在该目录下。
        public static int ShowWords = 800;
        Queue<object> queue = new Queue<object>();  // 索引数据队列


        /// <summary>
        /// 盘古分词
        /// </summary>
        /// <param name="msg"></param>
        /// <returns></returns>
        public List<string> PanGuSplitWord(string msg)
        {
            Analyzer analyzer = new PanGuAnalyzer();
            TokenStream tokenStream = analyzer.TokenStream("", new StringReader(msg));
            List<string> words = new List<string>();
            bool hasnext = false;
            Lucene.Net.Analysis.Tokenattributes.ITermAttribute ita;
            while (hasnext = tokenStream.IncrementToken())
            {
                ita = tokenStream.GetAttribute<Lucene.Net.Analysis.Tokenattributes.ITermAttribute>();
                words.Add(ita.Term);
            }
            #region 以前老版 Lucene.Net 从 TokenStream中获取token对象的方式
            //Lucene.Net.Analysis.Token token = null;
            //while ((token = tokenStream.()) != null)
            //{
            //    sb.Append(token.TermText() + "\r\n");
            //} 
            #endregion
            tokenStream.CloneAttributes();
            return words;
        }
        /// <summary>
        /// 创建HTMLFormatter,参数为高亮单词的前后缀
        /// </summary>
        /// <param name="keywords"></param>
        /// <param name="Content"></param>
        /// <returns></returns>
        public string CreateHightLight(string keywords, string Content)
        {
            PanGu.HighLight.SimpleHTMLFormatter simpleHTMLFormatter =
             new PanGu.HighLight.SimpleHTMLFormatter("<font color=\"red\">", "</font>");
            //创建Highlighter ，输入HTMLFormatter 和盘古分词对象Semgent
            PanGu.HighLight.Highlighter highlighter =
            new PanGu.HighLight.Highlighter(simpleHTMLFormatter,
            new Segment());
            //设置每个摘要段的字符数
            highlighter.FragmentSize = 150;
            //获取最匹配的摘要段
            return highlighter.GetBestFragment(keywords, Content);
        }

        /// <summary>
        /// Lenuce查询
        /// </summary>
        /// <param name="searchText"></param>
        /// <returns></returns>
        public List<SearchResult> LenuceSearch(string searchText)
        {
            FSDirectory directory = FSDirectory.Open(new DirectoryInfo(IndexPath), new NoLockFactory());
            IndexReader reader = IndexReader.Open(directory, true);
            IndexSearcher searcher = new IndexSearcher(reader);
            PhraseQuery query = new PhraseQuery();//查询条件
            query.Add(new Term("Content", searchText));//contains("Content",word)
            List<string> kws = PanGuSplitWord(searchText);
            foreach (string word in kws)//先用空格，让用户去分词，空格分隔的就是词“xx ”
            {
                query.Add(new Term("Content", word));//contains("Content",word)
            }
            query.Slop = 100;//两个词的距离大于100（经验值）就不放入搜索结果，因为距离太远相关度就不高了
            TopScoreDocCollector collector = TopScoreDocCollector.Create(1000, true);//盛放查询结果的容器
            searcher.Search(query, null, collector);//使用query这个查询条件进行搜索，搜索结果放入collector
            //collector.GetTotalHits()总的结果条数
            ScoreDoc[] docs = collector.TopDocs(0, collector.TotalHits).ScoreDocs;//从查询结果中取出第m条到第n条的数据

            List<SearchResult> list = new List<SearchResult>();
            string msg = string.Empty;

            for (int i = 0; i < docs.Length; i++)//遍历查询结果
            {
                int docId = docs[i].Doc;//拿到文档的id。因为Document可能非常占内存（DataSet和DataReader的区别）
                //所以查询结果中只有id，具体内容需要二次查询
                Document doc = searcher.Doc(docId);//根据id查询内容。放进去的是Document，查出来的还是Document
                SearchResult result = new SearchResult();
                result.Id = Convert.ToInt32(doc.Get("Id"));
                msg = doc.Get("Content");//只有 Field.Store.YES的字段才能用Get查出来
                msg = msg.Length > ShowWords ? msg.Substring(0, ShowWords) + "......" : msg;
                result.Msg = CreateHightLight(searchText, msg);//将搜索的关键字高亮显示。
                result.Title = doc.Get("Title");
                result.CreateTime = Convert.ToDateTime(doc.Get("CreateTime"));
                list.Add(result);
            }
            return list;
        }

        // 与查询

        public List<SearchResult> LenuceAndSearch(string kw, int pageNo, int pageLen, out int recCount)
        {
            FSDirectory directory = FSDirectory.Open(new DirectoryInfo(IndexPath), new NoLockFactory());
            IndexReader reader = IndexReader.Open(directory, true);
            IndexSearcher searcher = new IndexSearcher(reader);
            PhraseQuery contentquery = new PhraseQuery();//查询条件
            PhraseQuery titleQuery = new PhraseQuery();//标题查询条件
            List<string> lstkw = PanGuSplitWord(kw);//对用户输入的搜索条件进行拆分。
            foreach (string word in lstkw)
            {
                contentquery.Add(new Term("Content", word));//contains("Content",word)
                titleQuery.Add(new Term("Title", word));
            }
            contentquery.Slop = 100;//两个词的距离大于100（经验值）就不放入搜索结果，因为距离太远相关度就不高了
            BooleanQuery bq = new BooleanQuery();
            //Occur.Should 表示 Or , Must 表示 and 运算
            bq.Add(contentquery, Occur.SHOULD);
            bq.Add(titleQuery, Occur.SHOULD);

            TopScoreDocCollector collector = TopScoreDocCollector.Create(1000, true);//盛放查询结果的容器
            searcher.Search(bq, null, collector);//使用query这个查询条件进行搜索，搜索结果放入collector

            recCount = collector.TotalHits;    //总的结果条数
            ScoreDoc[] docs = collector.TopDocs((pageNo - 1) * pageLen, pageNo * pageLen).ScoreDocs;//从查询结果中取出第m条到第n条的数据

            List<SearchResult> resultList = new List<SearchResult>();
            string msg = string.Empty;
            string title = string.Empty;

            for (int i = 0; i < docs.Length; i++)//遍历查询结果
            {
                int docId = docs[i].Doc;//拿到文档的id，因为Document可能非常占内存（思考DataSet和DataReader的区别）
                //所以查询结果中只有id，具体内容需要二次查询
                Document doc = searcher.Doc(docId);//根据id查询内容。放进去的是Document，查出来的还是Document
                SearchResult result = new SearchResult();
                result.Id = Convert.ToInt32(doc.Get("Id"));
                msg = doc.Get("Content");              //只有 Field.Store.YES的字段才能用Get查出来
                result.Msg = CreateHightLight(kw, msg);//将搜索的关键字高亮显示。
                title = doc.Get("Title");
                foreach (string word in lstkw)
                {
                    title = title.Replace(word, "<span style='color:red;'>" + word + "</span>");
                }
                //result.Title=LuceneHelper.CreateHightLight(kw, title);
                result.Title = title;
                result.CreateTime = Convert.ToDateTime(doc.Get("CreateTime"));
                result.Url = "/Article/Details?Id=" + result.Id + "&kw=" + kw;
                resultList.Add(result);
            }

            return resultList;
        }
        //或查询
        public List<SearchResult> LenuceOrSearch(string kw, int pageNo, int pageLen, out int recCount)
        {
            FSDirectory directory = FSDirectory.Open(new DirectoryInfo(IndexPath), new NoLockFactory());
            IndexReader reader = IndexReader.Open(directory, true);
            IndexSearcher searcher = new IndexSearcher(reader);
            List<PhraseQuery> lstQuery = new List<PhraseQuery>();
            List<string> lstkw = PanGuSplitWord(kw);//对用户输入的搜索条件进行拆分。

            foreach (string word in lstkw)
            {
                PhraseQuery query = new PhraseQuery();//查询条件
                query.Slop = 100;//两个词的距离大于100（经验值）就不放入搜索结果，因为距离太远相关度就不高了
                query.Add(new Term("Content", word));//contains("Content",word)

                PhraseQuery titleQuery = new PhraseQuery();//查询条件
                titleQuery.Add(new Term("Title", word));

                lstQuery.Add(query);
                lstQuery.Add(titleQuery);
            }

            BooleanQuery bq = new BooleanQuery();
            foreach (var v in lstQuery)
            {
                //Occur.Should 表示 Or , Must 表示 and 运算
                bq.Add(v, Occur.SHOULD);
            }
            TopScoreDocCollector collector = TopScoreDocCollector.Create(1000, true);//盛放查询结果的容器
            searcher.Search(bq, null, collector);//使用query这个查询条件进行搜索，搜索结果放入collector

            recCount = collector.TotalHits;    //总的结果条数
            ScoreDoc[] docs = collector.TopDocs((pageNo - 1) * pageLen, pageNo * pageLen).ScoreDocs;//从查询结果中取出第m条到第n条的数据

            List<SearchResult> resultList = new List<SearchResult>();
            string msg = string.Empty;
            string title = string.Empty;

            for (int i = 0; i < docs.Length; i++)//遍历查询结果
            {
                int docId = docs[i].Doc;//拿到文档的id，因为Document可能非常占内存（思考DataSet和DataReader的区别）
                //所以查询结果中只有id，具体内容需要二次查询
                Document doc = searcher.Doc(docId);//根据id查询内容。放进去的是Document，查出来的还是Document
                SearchResult result = new SearchResult();
                result.Id = Convert.ToInt32(doc.Get("Id"));
                msg = doc.Get("Content");//只有 Field.Store.YES的字段才能用Get查出来
                title = doc.Get("Title");
                //将搜索的关键字高亮显示。
                foreach (string word in lstkw)
                {
                    title = title.Replace(word, "<span style='color:red;'>" + word + "</span>");
                }
                result.Msg = CreateHightLight(kw, msg);
                result.Title = title;
                result.CreateTime = Convert.ToDateTime(doc.Get("CreateTime"));
                result.Url = "/Article/Details?Id=" + result.Id + "&kw=" + kw;
                resultList.Add(result);
            }
            return resultList;
        }




        #region 创建 Lucene 索引库


        /// <summary>
        /// 向队列中添加数据
        /// </summary>
        /// <param name="Id"></param>
        /// <param name="title"></param>
        /// <param name="content"></param>
        public void AddQueue(Article article)
        {
            IndexContent indexContent = new IndexContent()
            {
                Id = article.ArticleId.ToString(),
                Title = article.Title,
                Content = article.Content,
                CreateTime = article.CreateTime.ToString(),
                LuceneEnum = LuceneEnum.AddType,// 添加

            };
            queue.Enqueue(indexContent);
        }
        /// <summary>
        /// 向队列中添加要删除数据
        /// </summary>
        /// <param name="Id"></param>
        public void DeleteQueue(string Id)
        {
            IndexContent indexContent = new IndexContent();
            indexContent.Id = Id;
            indexContent.LuceneEnum = LuceneEnum.DeleType;//删除
            queue.Enqueue(indexContent);
        }

        /// <summary>
        /// 开启线程，扫描队列，从队列中获取数据
        /// </summary>
        public void StartBuildIndexThread()
        {
            Thread myThread = new Thread(WriteIndexContent);
            myThread.IsBackground = true;
            myThread.Start();
        }
        private void WriteIndexContent()
        {
            while (true)
            {
                if (queue.Count > 0)
                {
                    CreateIndexContent();
                }
                else
                {
                    Thread.Sleep(5000);//避免造成CPU空转
                }
            }
        }
        private void CreateIndexContent()
        {
            try
            {
                FSDirectory directory = FSDirectory.Open(new DirectoryInfo(IndexPath), new NativeFSLockFactory());//指定索引文件(打开索引目录) FS指的是就是FileSystem
                bool isUpdate = IndexReader.IndexExists(directory);//IndexReader:对索引进行读取的类。该语句的作用：判断索引库文件夹是否存在以及索引特征文件是否存在。
                if (isUpdate)
                {
                    //同时只能有一段代码对索引库进行写操作。当使用IndexWriter打开directory时会自动对索引库文件上锁。
                    //如果索引目录被锁定（比如索引过程中程序异常退出），则首先解锁
                    if (IndexWriter.IsLocked(directory))
                    {
                        IndexWriter.Unlock(directory);
                    }
                }
                using (IndexWriter writer = new IndexWriter(directory, new PanGuAnalyzer(), !isUpdate, Lucene.Net.Index.IndexWriter.MaxFieldLength.UNLIMITED))//向索引库中写索引。这时在这里加锁。
                {

                    while (queue.Count > 0)
                    {
                        IndexContent indexContent = queue.Dequeue() as IndexContent; //将队列中的数据出队
                        writer.DeleteDocuments(new Term("Id", indexContent.Id));
                        if (indexContent.LuceneEnum == LuceneEnum.DeleType)
                        {
                            continue;
                        }
                        Document document = new Document();//表示一篇文档。
                                                           //Field.Store.YES:表示是否存储原值。只有当Field.Store.YES在后面才能用doc.Get("Id")取出值来.Field.Index. NOT_ANALYZED:不进行分词保存
                        document.Add(new Field("Id", indexContent.Id, Field.Store.YES, Field.Index.NOT_ANALYZED));
                        //Field.Index. ANALYZED:进行分词保存:也就是要进行全文的字段要设置分词 保存（因为要进行模糊查询）
                        //Lucene.Net.Documents.Field.TermVector.WITH_POSITIONS_OFFSETS:不仅保存分词还保存分词的距离。
                        //Field.Store.YES不仅要对文章进行分词记录，也要保存原文，就不用去数据库里查一次了
                        //需要进行全文检索的字段加 Field.Index. ANALYZED
                        document.Add(new Field("Title", indexContent.Title, Field.Store.YES, Field.Index.ANALYZED, Lucene.Net.Documents.Field.TermVector.WITH_POSITIONS_OFFSETS));
                        document.Add(new Field("Content", indexContent.Content, Field.Store.YES, Field.Index.ANALYZED, Lucene.Net.Documents.Field.TermVector.WITH_POSITIONS_OFFSETS));
                        document.Add(new Field("CreateTime", indexContent.CreateTime.ToString(), Field.Store.YES, Field.Index.NOT_ANALYZED));
                        //防止存在的数据//delete from t where id=i
                        writer.DeleteDocuments(new Term("Id", indexContent.Id));
                        writer.AddDocument(document);
                    }
                }
                directory.Close();//不要忘了Close，否则索引结果搜不到
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

      
        #endregion
    }
}