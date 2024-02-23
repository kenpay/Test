using Ex1.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Web;

namespace Ex1.Controllers
{
    public class Note
    {
        public int Id { get; set; }
        [ForeignKey("StudentNavigation")]
        public int Student {  get; set; }
        [ForeignKey("MaterieNavigation")]
        public int Materia { get; set; }
        public int Nota { get; set; }

        public virtual Student StudentNavigation { get; set; }
        public virtual Materie MaterieNavigation { get; set; }
    }
}