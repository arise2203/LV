namespace BE.Data.Models
{
    public class Payment
    {
        public int Idpayment { get; set; } 
        public int ShopIduser2 { get; set; } 
        public long PricePay { get; set; }
        public string? ContentPay { get; set; }
        public DateTime PayAt { get; set; }
    }
}
