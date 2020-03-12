namespace QuartzTask.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;


    public partial class SearchTotals
    {
        public Guid Id { get; set; }

        [StringLength(50)]
        public string KeyWords { get; set; }

        public int SearchCounts { get; set; }
    }
}
