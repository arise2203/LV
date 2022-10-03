using BE.Data.Contexts;
using BE.Data.Dtos.ProductDtos;
using BE.Data.Models;
using Microsoft.AspNetCore.Mvc;



namespace BE.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        private readonly BeContext _context;

        public ProductController(BeContext context)
        {
            _context = context;

        }
        [HttpGet("getListProduct")]
        public ActionResult getListProduct()
        {
            try
            {
                var listProduct = _context.products.ToList();
                return Ok(listProduct);
            }
            catch(Exception ex)
            {
                return BadRequest(ex);
            }
        }
        [HttpPost("addProduct")]
        public IActionResult addProduct(AddProductDtos ap)
        {
            try
            {
                var add_p = _context.products.SingleOrDefault(p => p.NameProduct == ap.NameProduct);
                if(add_p == null)
                {
                    var p = new Product();
                    p.NameProduct = ap.NameProduct;
                    p.IdProducer = ap.IdProducer;
                    p.ImgPath=ap.ImgPath;
                    p.Element=ap.Element;
                    p.Desc=ap.Desc;
                    p.Quantily=ap.Quantily;
                    _context.Add(p);
                    _context.SaveChanges();
                    return Ok(p);
                }
                return Ok();
            }
            catch(Exception ex)
            {
                return BadRequest(ex);
            }
        }
        [HttpPut("editProduct")]
        public IActionResult updateProduct(EditProductDtos ep)
        {
            try
            {
                var edit_p = _context.products.Find(ep.Idproduct);
                if(edit_p == null)
                {
                    return NotFound("San pham khong ton tai");
                }
                else
                {
                    edit_p.NameProduct=ep.NameProduct;
                    
                    edit_p.Quantily=ep.Quantily;
                    ep.Element=ep.Element;
                    _context.SaveChanges();
                    return Ok();
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex);
            }
        }
    }
}
