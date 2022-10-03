namespace BE.Data.Models

{
    public class User
    {
        public int Iduser { get; set; } 
        public string Username { get; set; } 
        public string Password { get; set; }
        public string Fullname { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public DateTime? Birthday { get; set; }
        public byte ClassOrder { get; set; }
        public byte Block { get; set; }
        public DateTime? RegisterAt { get; set; }

        
    }
}
