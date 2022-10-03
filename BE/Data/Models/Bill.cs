namespace BE.Data.Models
{
    public class Bill
    {
        public int Idbill { get; set; } 
        public int OrderIdorder { get; set; } 
        public string? StatusBook { get; set; }
        public DateTime PayAt { get; set; }
        public string PhoneNumber { get; set; }
    }
}
