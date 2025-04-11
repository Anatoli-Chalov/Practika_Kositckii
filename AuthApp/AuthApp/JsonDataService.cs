using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Windows;

namespace AuthApp
{
    public static class JsonDataService
    {
        private static readonly string FolderPath = Path.Combine(Directory.GetCurrentDirectory(), "Пароли");
        private static readonly string FilePath = Path.Combine(FolderPath, "users.json");

        public static List<User> LoadUsers()
        {
            try
            {
                if (!Directory.Exists(FolderPath))
                {
                    Directory.CreateDirectory(FolderPath);
                }

                if (File.Exists(FilePath))
                {
                    string json = File.ReadAllText(FilePath);
                    return JsonConvert.DeserializeObject<List<User>>(json) ?? new List<User>();
                }
                return new List<User>();
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка загрузки пользователей: {ex.Message}");
                return new List<User>();
            }
        }

        public static void SaveUsers(List<User> users)
        {
            try
            {
                if (!Directory.Exists(FolderPath))
                {
                    Directory.CreateDirectory(FolderPath);
                }

                string json = JsonConvert.SerializeObject(users, Formatting.Indented);
                File.WriteAllText(FilePath, json);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка сохранения пользователей: {ex.Message}");
            }
        }
    }
}