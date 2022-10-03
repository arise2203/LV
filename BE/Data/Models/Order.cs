namespace BE.Data.Models
{ 
    public class Order
    {
        public int Idorder { get; set; } 
        public int VouchersIdvoucher { get; set; }
        public int BillIdbill { get; set; }
        public string? StatusBook { get; set; }
        public string? Note { get; set; }
        public DateTime OrderAt { get; set; }
        public string Address { get; set; }
        public string? Location { get; set; }
        public byte InPlace { get; set; }
    }
}
