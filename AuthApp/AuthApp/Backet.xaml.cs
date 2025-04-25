using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Windows;
using System.Windows.Input;
using Newtonsoft.Json;

namespace AuthApp
{
    public partial class BacketWindow : Window
    {
        public BacketWindow()
        {
            InitializeComponent();
            this.DataContext = new MainWindowViewModel();
        }
    }

    public class MainWindowViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        private ObservableCollection<Product> _products = new ObservableCollection<Product>();
        public ObservableCollection<Product> Products
        {
            get => _products;
            set
            {
                _products = value;
                OnPropertyChanged(nameof(Products));
            }
        }

        private Product _selectedProduct;
        public Product SelectedProduct
        {
            get => _selectedProduct;
            set
            {
                _selectedProduct = value;
                OnPropertyChanged(nameof(SelectedProduct));
                OnPropertyChanged(nameof(CanAddToCart));
            }
        }

        private int _selectedQuantity = 1;
        public int SelectedQuantity
        {
            get => _selectedQuantity;
            set
            {
                _selectedQuantity = value;
                OnPropertyChanged(nameof(SelectedQuantity));
                OnPropertyChanged(nameof(CanAddToCart));
            }
        }

        public bool CanAddToCart => SelectedProduct != null &&
                                  SelectedQuantity > 0 &&
                                  SelectedQuantity <= (SelectedProduct?.Qty ?? 0);

        private ObservableCollection<CartItem> _cartItems = new ObservableCollection<CartItem>();
        public ObservableCollection<CartItem> CartItems
        {
            get => _cartItems;
            set
            {
                _cartItems = value;
                OnPropertyChanged(nameof(CartItems));
                OnPropertyChanged(nameof(TotalAmount));
            }
        }

        public decimal TotalAmount => CartItems.Sum(item => item.TotalPrice);

        private string _statusMessage = "Готово к работе";
        public string StatusMessage
        {
            get => _statusMessage;
            set
            {
                _statusMessage = value;
                OnPropertyChanged(nameof(StatusMessage));
            }
        }

        private string _cashierName = "Продавец: Михаил Хастал-Оглы";
        public string CashierName
        {
            get => _cashierName;
            set
            {
                _cashierName = value;
                OnPropertyChanged(nameof(CashierName));
            }
        }

        public ICommand AddToCartCommand { get; }
        public ICommand CheckoutCommand { get; }
        public ICommand LogoutCommand { get; }

        public MainWindowViewModel()
        {
            AddToCartCommand = new RelayCommand(AddToCart, () => CanAddToCart);
            CheckoutCommand = new RelayCommand(Checkout, () => CartItems.Count > 0);
            LogoutCommand = new RelayCommand(Logout);

            LoadProducts();
        }

        private void LoadProducts()
        {
            try
            {
                // Проверяем существование файла
                if (!File.Exists("products.json"))
                {
                    StatusMessage = "Файл products.json не найден";
                    return;
                }

                string json = File.ReadAllText("products.json");
                var products = JsonConvert.DeserializeObject<Product[]>(json);

                if (products != null)
                {
                    Products = new ObservableCollection<Product>(products);
                    StatusMessage = $"Загружено {products.Length} автомобилей";
                }
                else
                {
                    StatusMessage = "Ошибка: файл products.json пуст или содержит некорректные данные";
                }
            }
            catch (Exception ex)
            {
                StatusMessage = $"Ошибка загрузки: {ex.Message}";
                // Создаем тестовые данные, если файл не загрузился
                Products = new ObservableCollection<Product>
                {
                    new Product { Id = 1, Name = "Тестовый автомобиль", Category = "Тест", Qty = 10, Price = 1000000 }
                };
            }
        }

        private void AddToCart()
        {
            try
            {
                var existingItem = CartItems.FirstOrDefault(item => item.Product.Id == SelectedProduct.Id);

                if (existingItem != null)
                {
                    existingItem.Quantity += SelectedQuantity;
                }
                else
                {
                    CartItems.Add(new CartItem
                    {
                        Product = SelectedProduct,
                        Quantity = SelectedQuantity
                    });
                }

                // Обновляем количество
                SelectedProduct.Qty -= SelectedQuantity;
                OnPropertyChanged(nameof(Products));
                OnPropertyChanged(nameof(TotalAmount));

                StatusMessage = $"Добавлено: {SelectedProduct.Name} ({SelectedQuantity} шт.)";
                SelectedQuantity = 1;
            }
            catch (Exception ex)
            {
                StatusMessage = $"Ошибка при добавлении: {ex.Message}";
            }
        }

        private void Checkout()
        {
            try
            {
                string message = $"Оформлен заказ на сумму {TotalAmount:N0} руб.\n\n";
                message += string.Join("\n", CartItems.Select(item =>
                    $"- {item.Product.Name} ({item.Quantity} шт.) - {item.TotalPrice:N0} руб."));

                MessageBox.Show(message, "Заказ оформлен", MessageBoxButton.OK, MessageBoxImage.Information);

                CartItems.Clear();
                OnPropertyChanged(nameof(TotalAmount));
                StatusMessage = "Готово к новому заказу";
            }
            catch (Exception ex)
            {
                StatusMessage = $"Ошибка оформления: {ex.Message}";
            }
        }

        private void Logout()
        {
            if (MessageBox.Show("Выйти из системы?", "Подтверждение",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                Application.Current.Shutdown();
                // Или показать окно авторизации: new AuthWindow().Show();
            }
        }

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }

    public class Product : INotifyPropertyChanged
    {
        private int _qty;

        public int Id { get; set; }
        public string Name { get; set; }
        public string Category { get; set; }

        public int Qty
        {
            get => _qty;
            set
            {
                _qty = value;
                OnPropertyChanged(nameof(Qty));
                OnPropertyChanged(nameof(Quantity)); // Для DataGrid
            }
        }

        public int Quantity => Qty; // Альяс для привязки в DataGrid

        public decimal Price { get; set; }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }

    public class CartItem : INotifyPropertyChanged
    {
        private int _quantity;

        public Product Product { get; set; }

        public int Quantity
        {
            get => _quantity;
            set
            {
                _quantity = value;
                OnPropertyChanged(nameof(Quantity));
                OnPropertyChanged(nameof(TotalPrice));
            }
        }

        public decimal TotalPrice => Product.Price * Quantity;

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }

    public class RelayCommand : ICommand
    {
        private readonly Action _execute;
        private readonly Func<bool> _canExecute;

        public event EventHandler CanExecuteChanged
        {
            add => CommandManager.RequerySuggested += value;
            remove => CommandManager.RequerySuggested -= value;
        }

        public RelayCommand(Action execute, Func<bool> canExecute = null)
        {
            _execute = execute ?? throw new ArgumentNullException(nameof(execute));
            _canExecute = canExecute;
        }

        public bool CanExecute(object parameter) => _canExecute?.Invoke() ?? true;

        public void Execute(object parameter) => _execute();
    }
}