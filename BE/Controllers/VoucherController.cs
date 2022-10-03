using BE.Data.Contexts;
using BE.Data.Dtos.VoucherDtos;
using BE.Data.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;



namespace webSales.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class VoucherController : ControllerBase
    {
        private readonly BeContext _context;

        public VoucherController(BeContext context)
        {
            _context = context;

        }
        [HttpGet("getListVoucher")]
        public ActionResult getListVoucher()
        {
            try
            {
                var listVoucher = _context.vouchers.ToList();
                return Ok(listVoucher);
            }
            catch(Exception ex)
            {
                return BadRequest(ex);
            }
        }
        [HttpPost("addVoucher")]
        public async Task<IActionResult> addVoucher(AddVoucherDtos v)
        {
            try
            {
                var voucher = await _context.vouchers.SingleOrDefaultAsync(t => t.Namevc.ToLower() == v.Namevc.ToLower());
                if(voucher == null)
                {
                    var vo = new Voucher();
                    vo.Namevc = v.Namevc;
                    vo.Maxprice=v.Maxprice;
                    vo.Cent=v.Cent;
                    vo.Expiry = DateTime.Now;
                    _context.vouchers.Add(vo);
                    await _context.SaveChangesAsync();
                    return Ok(vo);
                }
                return BadRequest("Voucher da ton tai");

            }
            catch(Exception ex)
            {
                return BadRequest(ex);
            }
        }
        [HttpPut("editVoucher")]
        public async Task<ActionResult> editVoucher(EditVoucherDtos req)
        {
            try
            {
                var edit_v = _context.vouchers.Find(req.Idvoucher);
                if(edit_v != null)
                {
                    edit_v.Namevc=req.Namevc;
                    edit_v.Maxprice = req.Maxprice;
                    edit_v.Cent=req.Cent;
                    edit_v.Expiry = DateTime.Now;

                    await _context.SaveChangesAsync();
                    return Ok();
                }
                return NotFound();
            }
            catch(Exception ex)
            {
                return BadRequest(ex);
            }
        }
    }
}
