/****************************************************************************
 *Copyright (c) 2016 All Rights Reserved.
 *CLR版本： 4.0.30319.42000
 *机器名称：DESKTOP-V7CFIC3
 *公司名称：
 *命名空间：LG.OA.WEB.Models.SearchModels
 *文件名：  SearchDemoContext
 *版本号：  V1.0.0.0
 *唯一标识：df3c804e-5834-4fb6-9e85-24f13e9e3de5
 *当前的用户域：DESKTOP-V7CFIC3
 *创建人：  zouqi
 *电子邮箱：zouyujie@126.com
 *创建时间：2016/7/9 8:35:11

 *描述：
 *
 *=====================================================================
 *修改标记
 *修改时间：2016/7/9 8:35:11
 *修改人： zouqi
 *版本号： V1.0.0.0
 *描述：
 *
 *****************************************************************************/
using System.Data.Entity;

namespace LG.OA.WEB.Models.SearchModels
{
    public class SearchModelContext : DbContext
    {
        public SearchModelContext() : base("name=SearchModelContext") { }
        public DbSet<Article> Article { get; set; }
        //下面两个属性是新增加的
        public DbSet<SearchTotal> SearchTotal { get; set; }
        public DbSet<SearchDetail> SearchDetail { get; set; }
    }
}