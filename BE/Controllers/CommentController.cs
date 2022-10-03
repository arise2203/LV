using BE.Data.Contexts;
using BE.Data.Dtos.CommentDtos;
using BE.Data.Models;
using Microsoft.AspNetCore.Mvc;

namespace BE.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CommentController : ControllerBase
    {
        private readonly BeContext _context;

        public CommentController(BeContext context)
        {
            _context = context;

        }
        [HttpGet("getListComment")]
        public ActionResult getListComment()
        {
            try
            {
                var listcomment = _context.comments.ToList();
                return Ok(listcomment);
            }
            catch(Exception ex)
            {
                return BadRequest(ex);
            }
        }
        [HttpPost("addComment")]
        public IActionResult addComment(AddCommentDtos ac)
        {
            try
            {
                var c = new Comment();
                c.Comment1 = ac.Comment1;
                c.ClassCmt=ac.ClassCmt;
                _context.Add(c);
                _context.SaveChanges();
                return Ok(c);
            }
            catch(Exception ex)
            {
                return BadRequest(ex);
            }
        }
        [HttpPut("editComment")]
        public IActionResult upadteComment(EditCommentDtos ec)
        {
            try
            {
                var c = _context.comments.Find(ec.Idcmt);
                if(c == null)
                {
                    return NotFound();
                }
                else
                {
                    c.Comment1=ec.Comment1;
                    
                }
                return Ok();
            }
            catch(Exception ex)
            {
                return BadRequest(ex);
            }
        }
    }
}
