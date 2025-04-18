using AuthApp.Model;
using System.Text.Json.Serialization;

namespace AuthApp.Model
{
    public class Users
    {
        [JsonPropertyName("login")]
        public string Login { get; set; }

        [JsonPropertyName("password")]
        public string Password { get; set; }

        [JsonPropertyName("fullname")]
        public string Fullname { get; set; }

        [JsonPropertyName("role")]
        public UserRole Role { get; set; }
    }
}
