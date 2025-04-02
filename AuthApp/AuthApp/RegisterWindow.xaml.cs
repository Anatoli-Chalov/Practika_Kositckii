using System.Windows;
using System.Collections.Generic;
using System.Linq;

namespace AuthApp
{
    public partial class RegisterWindow : Window
    {
        private List<User> _users;

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

            // Валидация
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                MessageBox.Show("Заполните все поля!", "Ошибка",
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
                MessageBox.Show("Пользователь с таким логином уже существует!", "Ошибка",
                    MessageBoxButton.OK, MessageBoxImage.Error);
                UsernameTextBox.Clear();
                UsernameTextBox.Focus();
                return;
            }

            // Регистрация нового пользователя
            _users.Add(new User { Username = username, Password = password });

            MessageBox.Show("Регистрация прошла успешно!", "Успех",
                MessageBoxButton.OK, MessageBoxImage.Information);

            this.Close();
        }
    }
}