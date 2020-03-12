/****************************************************************************
 *Copyright (c) 2016 All Rights Reserved.
 *CLR版本： 4.0.30319.42000
 *机器名称：DESKTOP-V7CFIC3
 *公司名称：
 *命名空间：LG.OA.WEB.Models.SearchModels
 *文件名：  SearchResult
 *版本号：  V1.0.0.0
 *唯一标识：e96a3d03-aeae-48b6-be96-7b2ff47b7e9c
 *当前的用户域：DESKTOP-V7CFIC3
 *创建人：  zouqi
 *电子邮箱：zouyujie@126.com
 *创建时间：2016/7/3 18:38:29

 *描述：
 *
 *=====================================================================
 *修改标记
 *修改时间：2016/7/3 18:38:29
 *修改人： zouqi
 *版本号： V1.0.0.0
 *描述：
 *
 *****************************************************************************/
using System;

namespace LG.OA.WEB.Models.SearchModels
{
    public class SearchResult
    {
        public int Id { get; set; }
        public string Msg { get; set; }
        public string Title { get; set; }
        public DateTime CreateTime { get; set; }
        public string Url { get; set; }
    }
}