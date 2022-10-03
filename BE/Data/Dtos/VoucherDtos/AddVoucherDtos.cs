using System.ComponentModel.DataAnnotations;

namespace BE.Data.Dtos.VoucherDtos
{
    public class AddVoucherDtos
    {
        [Required]
        public string Namevc { get; set; }
        [Required]
        public long Maxprice { get; set; }
        [Required]
        public long Cent { get; set; }
        [Required]
        public DateTime Expiry { get; set; }
    }
}
