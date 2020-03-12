//------------------------------------------------------------------------------
// <auto-generated>
//    此代码是根据模板生成的。
//
//    手动更改此文件可能会导致应用程序中发生异常行为。
//    如果重新生成代码，则将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace LG.OA.Model.OAModels
{
    using Newtonsoft.Json;
    using System;
    using System.Collections.Generic;
    
    public partial class UserInfo
    {
        public UserInfo()
        {
            this.OrderInfo = new HashSet<OrderInfo>();
            this.R_UserInfo_ActionInfo = new HashSet<R_UserInfo_ActionInfo>();
            this.RoleInfo = new HashSet<RoleInfo>();
        }
    
        public int ID { get; set; }
        public string UName { get; set; }
        public string Pwd { get; set; }
        public string ShowName { get; set; }
        public short DelFlag { get; set; }
        public string Remark { get; set; }
        public System.DateTime ModfiedOn { get; set; }
        public System.DateTime SubTime { get; set; }
    
        [JsonIgnore]
        public virtual ICollection<OrderInfo> OrderInfo { get; set; }
        [JsonIgnore]
        public virtual ICollection<R_UserInfo_ActionInfo> R_UserInfo_ActionInfo { get; set; }
        [JsonIgnore]
        public virtual ICollection<RoleInfo> RoleInfo { get; set; }
    }
}
