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
    using System;
    using System.Collections.Generic;
    
    public partial class LockOwnersTable
    {
        public System.Guid Id { get; set; }
        public long SurrogateLockOwnerId { get; set; }
        public System.DateTime LockExpiration { get; set; }
        public Nullable<System.Guid> WorkflowHostType { get; set; }
        public string MachineName { get; set; }
        public bool EnqueueCommand { get; set; }
        public bool DeletesInstanceOnCompletion { get; set; }
        public byte[] PrimitiveLockOwnerData { get; set; }
        public byte[] ComplexLockOwnerData { get; set; }
        public byte[] WriteOnlyPrimitiveLockOwnerData { get; set; }
        public byte[] WriteOnlyComplexLockOwnerData { get; set; }
        public Nullable<byte> EncodingOption { get; set; }
        public byte WorkflowIdentityFilter { get; set; }
    }
}
