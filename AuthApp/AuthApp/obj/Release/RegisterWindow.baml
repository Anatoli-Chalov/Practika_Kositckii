   M S B A M L   `   `   `  ���� B  >AuthApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:AuthAppAuthApp      AuthApp.RegisterWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     'localclr-namespace:AuthApp       � Title$  Регистрация��$	��350��$	��400�� � WindowStartupLocation$ CenterOwner=� � 
ResizeMode$ NoResize=�.��� ����  �� 
StartPoint$	 0,0&� �� EndPoint$	 1,1&�.���  � Color$ #ffa500�� � Offset$ 0Q�� $ #ff0000��$ 1Q�.+��� 
������� �� CornerRadius$ 10��$	��300��$	��280��$��Center=�$��Center=�._��� $��20q�$��Center=�.+��� $��Регистрация��$��20(�$
��Bold"�$��Center=�$��0,0,0,20q��� $��Логин:��$	��5,0q��� -    ��Name$ UsernameTextBox��$��5,0,5,10q�$��30��$��5q��� $��Пароль:��$	��5,0q�G� -   	 G�Name$	 PasswordBox��$��5,0,5,10q�$��30��$��5q��� $*��$Подтвердите пароль:��$	��5,0q�G� -   $	 ConfirmPasswordBox��$��5,0,5,20q�$��30��$��5q��� -   
 ��Name$
 RegisterButton��$*��$Зарегистрироваться��$��35�����#000000
�������$
��Bold"�$��0q�����  �� 
TargetType" ��.���  �� Property � �� �� Value �#ffa500 �� Triggers P�  P� Property �@J�IsMouseOver P� Value . . ���  � �� �#000000��  �@�Cursor$
 Hand���� $��0,-10,329,279q�$"��/Новый проект.png��$
��Fill=�