   M S B A M L   `   `   `  ���� B  >AuthApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:AuthAppAuthApp      AuthApp.mainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     'localclr-namespace:AuthApp     -     � Title$  Авторизация��$	��400��$	��400�� � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ NoResize=�.��� ����  �� 
StartPoint$	 0,0&� �� EndPoint$	 1,1&�.���  � Color$ #ffa500�� � Offset$ 0Q�� $ #ff0000��$ 1Q�.+��� 
������� �� CornerRadius$ 10��$	��300��$	��300��$��Center=�$��Center=�._��� $��20q�$��Center=�.+��� $ ��Вход в систему��$��20(�$
��Bold"�$��Center=�$��0,0,0,20q��� $��Логин:��$	��5,0q��� -    ��Name$ UsernameTextBox��$��5,0,5,10q�$��30��$��5q��� $��Пароль:��$	��5,0q�G� -   	 G�Name$	 PasswordBox��$��5,0,5,20q�$��30��$��5q��� -   
 ��Name$
 LoginButton��$��
Войти��$��35��
���   �
�������$
��Bold"�$��0q�$��0,0,0,10q�����  �� 
TargetType" ��.���  �� Property � �� �� Value
 �   � �� Triggers P�  P� Property �@J�IsMouseOver P� Value . . ���  � �� �#333333��  �@�Cursor$
 Hand���� $��Center=�$
��0,10q��� -   .�=;Нет аккаунта? Зарегистрируйтесь�� $	��100��$	��100��$��150,152,150,132q��� $��0,0,329,319q�$"��/Новый проект.png��$
��Fill=� �� BitmapScalingMode$ HighQuality=�