/****************************************************************************
 *Copyright (c) 2016 All Rights Reserved.
 *CLR版本： 4.0.30319.42000
 *机器名称：DESKTOP-V7CFIC3
 *公司名称：
 *命名空间：LG.OA.WEB.Models.SearchModels
 *文件名：  SearchDetail
 *版本号：  V1.0.0.0
 *唯一标识：8a1ce924-4a2e-41dd-8d71-b3869d2e8f82
 *当前的用户域：DESKTOP-V7CFIC3
 *创建人：  zouqi
 *电子邮箱：zouyujie@126.com
 *创建时间：2016/7/9 14:46:37

 *描述：
 *
 *=====================================================================
 *修改标记
 *修改时间：2016/7/9 14:46:37
 *修改人： zouqi
 *版本号： V1.0.0.0
 *描述：
 *
 *****************************************************************************/
using System;
using System.ComponentModel.DataAnnotations;

namespace LG.OA.WEB.Models.SearchModels
{
    public class SearchDetail
    {
        public Guid Id { get; set; }
        [StringLength(50)]
        public string KeyWords { get; set; }
        public Nullable<DateTime> SearchDateTime { get; set; }
    }
}