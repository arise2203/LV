namespace BE.Data.Models
{
    public class Notification
    {
        public int Idnoification { get; set; }
        public int ShopIduser2 { get; set; } 
        public string? From { get; set; }
        public string? To { get; set; }
        public byte? Seen { get; set; }
        public string? ContentNofi { get; set; }
        public DateTime? NofiAt { get; set; }
    }
}
