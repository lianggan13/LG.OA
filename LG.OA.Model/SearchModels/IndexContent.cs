/****************************************************************************
 *Copyright (c) 2016 All Rights Reserved.
 *CLR版本： 4.0.30319.42000
 *机器名称：DESKTOP-V7CFIC3
 *公司名称：
 *命名空间：LG.OA.WEB.Models.SearchModels
 *文件名：  IndexContent
 *版本号：  V1.0.0.0
 *唯一标识：3a4127ca-123a-4e72-a45f-49c03ec82509
 *当前的用户域：DESKTOP-V7CFIC3
 *创建人：  zouqi
 *电子邮箱：zouyujie@126.com
 *创建时间：2016/7/9 10:10:33

 *描述：
 *
 *=====================================================================
 *修改标记
 *修改时间：2016/7/9 10:10:33
 *修改人： zouqi
 *版本号： V1.0.0.0
 *描述：
 *
 *****************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LG.OA.WEB.Models.SearchModels
{
    public class IndexContent
    {
        public string Id { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public string CreateTime { get; set; }
        public LuceneEnum LuceneEnum { get; set; }
    }
}