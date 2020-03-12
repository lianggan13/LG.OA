/****************************************************************************
 *Copyright (c) 2016 All Rights Reserved.
 *CLR版本： 4.0.30319.42000
 *机器名称：DESKTOP-V7CFIC3
 *公司名称：
 *命名空间：LG.OA.WEB.Models.SearchModels
 *文件名：  SearchTotal
 *版本号：  V1.0.0.0
 *唯一标识：34455344-b25a-4a94-8ed4-ee719485d376
 *当前的用户域：DESKTOP-V7CFIC3
 *创建人：  zouqi
 *电子邮箱：zouyujie@126.com
 *创建时间：2016/7/9 14:45:46

 *描述：
 *
 *=====================================================================
 *修改标记
 *修改时间：2016/7/9 14:45:46
 *修改人： zouqi
 *版本号： V1.0.0.0
 *描述：
 *
 *****************************************************************************/
using System;
using System.ComponentModel.DataAnnotations;

namespace LG.OA.WEB.Models.SearchModels
{
    public class SearchTotal
    {
        public Guid Id { get; set; }
        [StringLength(50)]
        public string KeyWords { get; set; }
        public int SearchCounts { get; set; }
    }
}