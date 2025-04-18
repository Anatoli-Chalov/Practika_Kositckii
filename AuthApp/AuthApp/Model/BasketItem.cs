namespace AuthApp.Model
{
    public class BasketItem
    {
        public Product Product { get; set; }
        public int Quantity { get; set; }
        public double TotalPrice => Product.Price * Quantity;
        public string DisplayText => $"{Product?.Name} x{Quantity} - {TotalPrice:f2}p.";

    }
}
