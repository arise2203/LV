namespace webSales.Data.Dtos.UsersDtos
{
    public class AddUserDtos
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public string Fullname { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public DateTime? Birthday { get; set; }
    }
}
