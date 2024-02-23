using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Reflection.Emit;
using System.Web;

namespace Ex1.Controllers
{
    public class UniversitateContext : DbContext
    {
        public UniversitateContext() : base("UniversitateDB") { }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
            Database.SetInitializer<UniversitateContext>(null);
            base.OnModelCreating(modelBuilder);
        }

        public DbSet<Student> Student { get; set; }
        public DbSet<Note> Note { get; set; }
    }
}