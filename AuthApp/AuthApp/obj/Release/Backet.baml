   M S B A M L   `   `   `  ���� B  >AuthApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:AuthAppAuthApp      AuthApp.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     'localclr-namespace:AuthApp       � Title$5  /ООО АвтоКод - Главное меню��$	��600��$	��900�� � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ CanMinimize=�.���  � RowDefinitions �� $
��Auto ��� $��* ��� $
��Auto �.+��� $��0�����	#FF3A7D44 �� Padding$ 10q�._��  � ColumnDefinitions �� $
��Auto ��� $��* ��� $
��Auto �.+��� $��1��$��Center=�$��18(�
����������� *CashierName+�� $��2��$��
Выход��$
��10,5q�
������ 
�������
����������� *LogoutCommand+� $��1�� �� $��2* ��� $��* �.+�&   System.Windows.Controls.DataGrid  -     Name$ ProductsGrid��$��0��   AutoGenerateColumns .     SelectionMode$ Single=�	   
IsReadOnly	 . $��10q����� *
Products+
 �� SelectedItem
 �� *SelectedProduct+   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Название��   Width5  /System.Windows.Controls.DataGridLengthConverter$ * 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *Name+  $ Категория��$ *  �� *
Category+  $ Количество��$ *  �� *
Quantity+  $ Цена��$ *  �� *Price+�� $��1��
�������$��1q�$��10q�._��  �� $
��Auto ��� $��* ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��Корзина:��$��16(�$��5q��� $��1��$��5q����� *	CartItems+���� .R��� .+��� $
��Bold"����� *Product.Name+�� ���� *
Quantity+ �� StringFormat$ 	{0} шт.���� ���� *
TotalPrice+$ {0} р.���� $��2��$��16(�$��5q�$
��Bold"����� *TotalAmount+$* $Итоговая сумма: {0} р.���� $��3�� �� Orientation$ 
Horizontal=�$��5q�.+��� $��Количество:��$��Center=�$��0,0,5,0q��� -    ��Name$ QuantityTextBox��$��50������ *SelectedQuantity+ �� UpdateSourceTrigger$ PropertyChanged=��� $��Добавить��$��10,0,0,0q�$
��10,5q����� *AddToCartCommand+{��� *CanAddToCart+�� $��4��$��Оформить��$��5q�$
��10,5q�$��Stretch=����� *CheckoutCommand+�� $��2��.@��� ���� *StatusMessage+