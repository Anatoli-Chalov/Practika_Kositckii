   M S B A M L   `   `   `  ����B  >AuthApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:AuthAppAuthApp  5   	       AuthApp.RegisterWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:AuthApp     5   	     � Title$  Регистрация��5   	   $	��350��5	   	   $	��400��5
   	    � WindowStartupLocation$ CenterOwner=�5   	    � 
ResizeMode$ NoResize=�5   	   .��5      � ��5   
   �� 5       �� 
StartPoint$	 0,0&�6"    �� EndPoint$	 1,1&�63   .��5      �  � Color$ #ffa500��6    � Offset$ 0Q�6/   � 5      $ #ff0000��6   $ 1Q�6/   5      .+�5   
   �� 
������� �� CornerRadius$ 10��5      $	��300��5      $	��280��5      $��Center=�5      $��Center=�5      ._�5      �� $��20q�6   $��Center=�6%   .+�5      �� $��Регистрация��6   $��20(�5      $
��Bold"�5      $��Center=�5      $��0,0,0,20q�5       �� 5"      $��Логин:��6   $	��5,0q�6*   �� 5#      -   5         ��Name$ UsernameTextBox��5#      $��5,0,5,10q�5$      $��30��5%      $��5q�5&      �� 5(      $��Пароль:��6   $	��5,0q�6+   G� 5)      -   5        	 G�Name$	 PasswordBox��5)      $��5,0,5,10q�5*      $��30��5+      $��5q�5,      �� 5.      $*��$Подтвердите пароль:��6   $	��5,0q�67   G� 5/      -   5        $	 ConfirmPasswordBox��5/      $��5,0,5,20q�50      $��30��51      $��5q�52      �� 54      -   5        
 ��Name$
 RegisterButton��54      $*��$Зарегистрироваться��55      $��35��56      ���#000000
�������$
��Bold"�59      $��0q�5:      ��5<      �� 5=       �� 
TargetType" ��6    .�5>      ��  �� Property � �� �� Value �#ffa5006;    �� Triggers 5?      P� 5@   "    P� Property �@J�IsMouseOver P� Value . . �5A   &   ��  � �� �#0000006C   �� 5B   &    �@�Cursor$
 Hand��6?   5C   #   5E      5G      5H      5I      �� 5J   
   $��0,-10,329,279q�6   $"��/Новый проект.png��6'   $
��Fill=�6B   5K      5L      