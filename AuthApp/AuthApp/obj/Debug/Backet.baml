   M S B A M L   `   `   `  ����B  >AuthApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:AuthAppAuthApp  5   	       AuthApp.BacketWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   'localclr-namespace:AuthApp     5   	     � Title$5  /ООО АвтоКод - Главное меню��5   	   $	��600��5   	   $	��900��5   	    � WindowStartupLocation$ CenterScreen=�5   	    � 
ResizeMode$ CanMinimize=�5	   	   .��5
      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $��0��6   ���	#FF3A7D44 �� Padding$ 10q�65   ._�5      �  � ColumnDefinitions 5      �� 5      $
��Auto �6'   �� 5      $��* �6'   �� 5      $
��Auto �6'   .+�5      �� $��1��6   $��Center=�6I   $��18(�5      
���������5   ,   �� *CashierName+5   *   �� 5!      $��2��6   $��
Выход��6)   $
��10,5q�5"      
������ 
�������
���������5!   9   �� *LogoutCommand+5#      5$      5%      � 5(   
   $��1��6    5)      �� 5*      $��2* �6#   �� 5+      $��* �6#   .+�5/      &   System.Windows.Controls.DataGrid  -   5          Name$ ProductsGrid��5/   '   $��0��6      AutoGenerateColumns .     SelectionMode$ Single=�50   3   	   
IsReadOnly	 . $��10q�51   @   ��5/   =   �� *
Products+
 �� SelectedItem
 51      �� *SelectedProduct+   Columns 52      0  *System.Windows.Controls.DataGridTextColumn  53      ,  &System.Windows.Controls.DataGridColumn   Header$ Название��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6T   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6;   �� *Name+6T     54      $ Категория��6)   $ * 6Y    6<   �� *
Category+6Y     55      $ Количество��6)   $ * 6Z    6=   �� *
Quantity+6Z     56      $ Цена��6)   $ * 6Q    67   �� *Price+6Q   58      �� 5;      $��1��6   
�������$��1q�68   $��10q�6L   ._�5<      �  5=      �� 5>      $
��Auto �6(   �� 5?      $��* �6(   �� 5@      $
��Auto �6(   �� 5A      $
��Auto �6(   �� 5B      $
��Auto �6(   .+�5E      �� $��0��6    $��Корзина:��6-   $��16(�6=   $��5q�6K   �� 5G      $��1��6   $��5q�6N   ��6,   �� *	CartItems+��5H      �� 5I      .R�5J   "   �� .+�5K   &   �� $
��Bold"�6N   ��60   �� *Product.Name+6N   �� 5L   &   ��60   �� *
Quantity+ �� StringFormat$ 	{0} шт.���� 5M   &   ��60   �� *
TotalPrice+$ {0} р.��5N   #   5O      5Q      �� 5S      $��2��6    $��16(�5T       $��5q�6.   $
��Bold"�69   ��5S   -   �� *TotalAmount+$* $Итоговая сумма: {0} р.��5T   9   �� 5V      $��3��6!    �� Orientation$ 
Horizontal=�6.   $��5q�6G   .+�5W      �� $��Количество:��6$   $��Center=�67   $��0,0,5,0q�6R   �� 5X      -   5         ��Name$ QuantityTextBox��5X   "   $��50��6;   ��6F   �� *SelectedQuantity+ �� UpdateSourceTrigger$ PropertyChanged=��� 5Y      $��Добавить��6!   $��10,0,0,0q�6Y   $
��10,5q�5Z   !   ��5Y   4   �� *AddToCartCommand+{�5Z   0   �� *CanAddToCart+5[      �� 5]      $��4��6   $��Оформить��6*   $��5q�5^      $
��10,5q�6(   $��Stretch=�67   ��5]   =   �� *CheckoutCommand+5^   7   5_      5`      5a      �� 5d   
   $��2��6   .@�5e      �� ��6   �� *StatusMessage+5f      5g      5h      