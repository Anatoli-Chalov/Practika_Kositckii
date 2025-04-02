using System.Windows;
using System.Windows.Input;
using System.Collections.Generic;

namespace AuthApp
{
    public partial class MainWindow : Window
    {
        private List<User> users = new List<User>
        {
            new User { Username = "admin", Password = "12345" }
        };

        public MainWindow()
        {
            InitializeComponent();
            UsernameTextBox.Focus();
        }

        // Обработчик для гиперссылки регистрации
        private void RegisterHyperlink_Click(object sender, RoutedEventArgs e)
        {
            var registerWindow = new RegisterWindow(users);
            registerWindow.Owner = this;
            registerWindow.ShowDialog();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            AttemptLogin();
        }

        private void Window_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                AttemptLogin();
            }
        }

        private void AttemptLogin()
        {
            string username = UsernameTextBox.Text.Trim();
            string password = PasswordBox.Password;

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                ShowErrorMessage("Введите логин и пароль!");
                return;
            }

            var user = users.Find(u => u.Username == username && u.Password == password);

            if (user != null)
            {
                ShowSuccessMessage($"Добро пожаловать, {username}!");
            }
            else
            {
                ShowErrorMessage("Неверный логин или пароль!");
            }
        }

        private void ShowErrorMessage(string message)
        {
            MessageBox.Show(message, "Ошибка",
                MessageBoxButton.OK, MessageBoxImage.Error);
            PasswordBox.Clear();
            PasswordBox.Focus();
        }

        private void ShowSuccessMessage(string message)
        {
            MessageBox.Show(message, "Успех",
                MessageBoxButton.OK, MessageBoxImage.Information);
        }
    }

    public class User
    {
        public string Username { get; set; }
        public string Password { get; set; }
    }
}