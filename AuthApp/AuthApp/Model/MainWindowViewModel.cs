// MainWindowViewModel.cs
using System.Collections.Generic;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using AuthApp.Model;
using Newtonsoft.Json;

public class MainWindowViewModel : INotifyPropertyChanged
{
    public event PropertyChangedEventHandler PropertyChanged;

    private ObservableCollection<Product> _products;
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

    public bool CanAddToCart => SelectedProduct != null && SelectedQuantity > 0;

    public MainWindowViewModel()
    {
        LoadProducts();
    }

    private void LoadProducts()
    {
        try
        {
            string json = File.ReadAllText("products.json");
            var products = JsonConvert.DeserializeObject<List<Product>>(json);
            Products = new ObservableCollection<Product>(products);
        }
        catch (Exception ex)
        {
            // Обработка ошибок (можно вывести в StatusMessage)
            Console.WriteLine($"Ошибка загрузки продуктов: {ex.Message}");
        }
    }

    protected virtual void OnPropertyChanged(string propertyName)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}