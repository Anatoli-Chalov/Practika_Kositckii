using System.Windows;
using System.IO;

namespace AuthApp
{
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);

            // Создаем папку "Пароли" если ее нет
            string folderPath = Path.Combine(Directory.GetCurrentDirectory(), "Пароли");
            if (!Directory.Exists(folderPath))
            {
                Directory.CreateDirectory(folderPath);
            }
        }
    }
}