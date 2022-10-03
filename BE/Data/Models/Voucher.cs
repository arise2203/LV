namespace BE.Data.Models
{
    public class Voucher
    {

        public int Idvoucher { get; set; }
        public string Namevc { get; set; }
        public long Maxprice { get; set; }
        public long Cent { get; set; }
        public DateTime Expiry { get; set; }

    }
}
