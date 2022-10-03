using BE.Data.Contexts;
using Microsoft.AspNetCore.Mvc;



namespace BE.Controllers
{
    [Route("api/[controller]")]
    [ApiController]

    public class UsersController : ControllerBase
    {
        private readonly BeContext _context;
        
        public UsersController(BeContext context)
        {
            _context = context;
           
            
        }
        [HttpGet("getListUser")]
        public ActionResult getListUser()
        {
            try
            {
                var listUser = _context.users.ToList(); 
                return Ok(listUser);
            }
            catch (Exception ex)
            {
                return BadRequest(ex);
            }
        }

       /* [HttpPost("addListUser")]
        public IActionResult addListUser(AddUserDtos us)
        {
            try {
                var user = _context.users.Find(u => u.Username == us.Username);
                if(user == null)
                {
                    user.User
                }
            
            }*/
        


    }
}
