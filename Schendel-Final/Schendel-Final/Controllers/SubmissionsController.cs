using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Schendel_Final;
using Microsoft.AspNetCore.Authorization;

namespace Schendel_Final.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SubmissionsController : ControllerBase
    {
        private readonly SchendelcsfinalContext _context;

        public SubmissionsController(SchendelcsfinalContext context)
        {
            _context = context;
        }

        // GET: api/Submissions
        [Authorize]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Submission>>> GetSubmission()
        {
          if (_context.Submission == null)
          {
              return NotFound();
          }
            return await _context.Submission.ToListAsync();
        }

        // GET: api/Submissions/5
        [Authorize]
        [HttpGet("{id}")]
        public async Task<ActionResult<Submission>> GetSubmission(int id)
        {
          if (_context.Submission == null)
          {
              return NotFound();
          }
            var submission = await _context.Submission.FindAsync(id);

            if (submission == null)
            {
                return NotFound();
            }

            return submission;
        }

        // PUT: api/Submissions/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [Authorize]
        [HttpPut("{id}")]
        public async Task<IActionResult> PutSubmission(int id, Submission submission)
        {
            if (id != submission.SubmissionId)
            {
                return BadRequest();
            }

            _context.Entry(submission).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!SubmissionExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Submissions
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [Authorize]
        [HttpPost]
        public async Task<ActionResult<Submission>> PostSubmission(Submission submission)
        {
          if (_context.Submission == null)
          {
              return Problem("Entity set 'SchendelcsfinalContext.Submission'  is null.");
          }
            _context.Submission.Add(submission);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (SubmissionExists(submission.SubmissionId))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetSubmission", new { id = submission.SubmissionId }, submission);
        }

        // DELETE: api/Submissions/5
        [Authorize]
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteSubmission(int id)
        {
            if (_context.Submission == null)
            {
                return NotFound();
            }
            var submission = await _context.Submission.FindAsync(id);
            if (submission == null)
            {
                return NotFound();
            }

            _context.Submission.Remove(submission);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool SubmissionExists(int id)
        {
            return (_context.Submission?.Any(e => e.SubmissionId == id)).GetValueOrDefault();
        }
    }
}
