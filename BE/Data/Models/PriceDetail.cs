namespace BE.Data.Models
{
    public class PriceDetail
    {
        public int ProductIdproduct { get; set; } 
        public DateTime DateDate { get; set; }
        public long PriceImport { get; set; }
        public long PriceExport { get; set; }
    }
}
