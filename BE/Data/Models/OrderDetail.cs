namespace BE.Data.Models
{
    public class OrderDetail
    {
        public int OrderIdorder { get; set; }
        public int ProductIdproduct { get; set; } 
        public string? Note { get; set; }
        public int QuantilyOrder { get; set; }
    }
}
