using Ex1.Filters;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Mvc;

namespace Ex1.Controllers
{
    public class StudentController : ApiController
    {
        private readonly UniversitateContext _context;
        public StudentController()
        {
            _context = new UniversitateContext();
        }
        // GET api/<controller>
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Student/GetDetails/5
        [Filters.BasicAuthentication]
        public async Task<IHttpActionResult> GetDetails(int id)
        {
            var student = await _context.Student.FindAsync(id);

            if (student == null)
            {
                return NotFound();
            }

            var note = await _context.Note
                .Where(n => n.Student == id)
                .Include(n => n.Materia)
                .Select(n => new { Materie = n.MaterieNavigation.Nume, Nota = n.Nota })
                .ToListAsync();

            var result = new
            {
                Nume = student.Nume,
                Prenume = student.Prenume,
                Note = note
            };

            return Json(result);
        }

        [System.Web.Http.HttpGet]
        [Filters.BasicAuthentication]
        public async Task<IHttpActionResult> MediaGenerala(int id)
        {
            var student = await _context.Student.FindAsync(id);

            if (student == null)
            {
                return NotFound();
            }

            var note = await _context.Note
                .Where(n => n.Student == id)
                .GroupBy(n => n.Materia)
                .Select(g => g.OrderByDescending(n => n.Id).FirstOrDefault())
                .ToListAsync();

            if (note.Count == 0)
            {
                return Ok("Studentul nu are note înregistrate.");
            }

            var mediaGenerala = note.Average(n => n.Nota);

            return Ok(mediaGenerala);
        }

        // POST api/<controller>
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
    }
}