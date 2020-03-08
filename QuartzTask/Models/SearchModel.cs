namespace QuartzTask.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class SearchModel : DbContext
    {
        public SearchModel()
            : base("name=SearchDBContext")
        {
        }

        public virtual DbSet<SearchDetails> SearchDetails { get; set; }
        public virtual DbSet<SearchTotals> SearchTotals { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
