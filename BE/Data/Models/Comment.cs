namespace BE.Data.Models
{
    public class Comment
    {
        public int Idcmt { get; set; } 
        public int UserIduser { get; set; } 
        public int ProductIdproduct { get; set; }
        public string? Comment1 { get; set; }
        public byte? ClassCmt { get; set; }
    }
}
