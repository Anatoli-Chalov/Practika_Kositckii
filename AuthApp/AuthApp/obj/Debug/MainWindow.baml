   M S B A M L   `   `   `  ����B  >AuthApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:AuthAppAuthApp  5   	       AuthApp.LoginWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:AuthApp     5   	   -   5          � Title$  Авторизация��5   	   $	��400��5	   	   $	��400��5
   	    � WindowStartupLocation$ CenterScreen=�5   	    � 
ResizeMode$ NoResize=�5   	   .��5      � ��5   
   �� 5       �� 
StartPoint$	 0,0&�6"    �� EndPoint$	 1,1&�63   .��5      �  � Color$ #ffa500��6    � Offset$ 0Q�6/   � 5      $ #ff0000��6   $ 1Q�6/   5      .+�5   
   �� 
������� �� CornerRadius$ 10��5      $	��300��5      $	��300��5      $��Center=�5      $��Center=�5      ._�5      �� $��20q�6   $��Center=�6%   .+�5       �� $ ��Вход в систему��6   $��20(�5!      $
��Bold"�5"      $��Center=�5#      $��0,0,0,20q�5$      �� 5'      $��Логин:��6   $	��5,0q�6*   �� 5(      -   5         ��Name$ UsernameTextBox��5(      $��5,0,5,10q�5)      $��30��5*      $��5q�5+      �� 5.      $��Пароль:��6   $	��5,0q�6+   G� 5/      -   5        	 G�Name$	 PasswordBox��5/      $��5,0,5,20q�50      $��30��51      $��5q�52      �� 55      -   5        
 ��Name$
 LoginButton��55      $��
Войти��56      $��35��57      
���   �
�������$
��Bold"�5:      $��0q�5;      $��0,0,0,10q�5<      ��5>      �� 5?       �� 
TargetType" ��6    .�5@      ��  �� Property � �� �� Value
 �   �6;    �� Triggers 5A      P� 5B   "    P� Property �@J�IsMouseOver P� Value . . �5C   &   ��  � �� �#3333336C   �� 5D   &    �@�Cursor$
 Hand��6?   5E   #   5G      5I      �� 5L      $��Center=�6   $
��0,10q�69   �� 5M      -   5        .�5M   @   =;Нет аккаунта? Зарегистрируйтесь5O      5P      5Q      5R      �� 5S   
   $	��100��6   $	��100��6   $��150,152,150,132q�6)   �� 5T   
   $��0,0,329,319q�6   $"��/Новый проект.png��6%   $
��Fill=�6@    �� BitmapScalingMode$ HighQuality=�6O   5W      5X      