using System.Windows;
using System.Collections.Generic;
using System.Linq;

namespace AuthApp
{
    public partial class RegisterWindow : Window
    {
        private readonly List<User> _users;

        public RegisterWindow(List<User> users)
        {
            InitializeComponent();
            _users = users;
            UsernameTextBox.Focus();
        }

        private void RegisterButton_Click(object sender, RoutedEventArgs e)
        {
            string username = UsernameTextBox.Text.Trim();
            string password = PasswordBox.Password;
            string confirmPassword = ConfirmPasswordBox.Password;

            if (!username.Contains("@") || !username.Contains("."))
            {
                MessageBox.Show("Введите корректный email!", "Ошибка",
                    MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            if (string.IsNullOrEmpty(password))
            {
                MessageBox.Show("Введите пароль!", "Ошибка",
                    MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            if (password != confirmPassword)
            {
                MessageBox.Show("Пароли не совпадают!", "Ошибка",
                    MessageBoxButton.OK, MessageBoxImage.Error);
                PasswordBox.Clear();
                ConfirmPasswordBox.Clear();
                PasswordBox.Focus();
                return;
            }

            if (_users.Any(u => u.Username == username))
            {
                MessageBox.Show("Пользователь с таким email уже существует!", "Ошибка",
                    MessageBoxButton.OK, MessageBoxImage.Error);
                UsernameTextBox.Clear();
                UsernameTextBox.Focus();
                return;
            }

            _users.Add(new User { Username = username, Password = password });
            JsonDataService.SaveUsers(_users);

            MessageBox.Show("Регистрация прошла успешно!", "Успех",
                MessageBoxButton.OK, MessageBoxImage.Information);

            this.Close();
        }
    }
}