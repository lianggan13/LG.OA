using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LG.OA.Model.Enums
{
    public enum DeleteEnum
    {
        Normal = 0,
        Deleted = 1
    }

    public enum WFStepEnum
    {
        UnProecess = 0,
        Processed = 1
    }
    public enum WF_InstanceEnum
    {
        Processing = 0,
        Processed = 1,
        Frozen = 2
    }
}
