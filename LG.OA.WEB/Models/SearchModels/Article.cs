/****************************************************************************
 *Copyright (c) 2016 All Rights Reserved.
 *CLR版本： 4.0.30319.42000
 *机器名称：DESKTOP-V7CFIC3
 *公司名称：
 *命名空间：LG.OA.WEB.Models.SearchModels
 *文件名：  Article
 *版本号：  V1.0.0.0
 *唯一标识：ae5c9d38-d1b2-44a4-8a8d-7b6074ebea6d
 *当前的用户域：DESKTOP-V7CFIC3
 *创建人：  zouqi
 *电子邮箱：zouyujie@126.com
 *创建时间：2016/7/9 7:35:37

 *描述：
 *
 *=====================================================================
 *修改标记
 *修改时间：2016/7/9 7:35:37
 *修改人： zouqi
 *版本号： V1.0.0.0
 *描述：
 *
 *****************************************************************************/
using System;
using System.ComponentModel.DataAnnotations;

namespace LG.OA.WEB.Models.SearchModels
{
    public partial class Article
    {
        public int ArticleId { get; set; }
        [StringLength(100)]
        [Display(Name = "文章标题")]
        public string Title { get; set; }
        [StringLength(int.MaxValue)]
        [Display(Name = "文章内容")]
        public string Content { get; set; }
        [Display(Name = "创建时间")]
        public DateTime CreateTime { get; set; }
    }
    //public partial class Article
    //{
    //    public LuceneEnum LuceneEnum { get; set; }
    //}
}