   M S B A M L   `   `   `  ����B  >Bluefin, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Bluefin.ViewBluefin.View  5   	       Bluefin.View.LoginWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:Bluefin.View     5   	   $	��600��5   	   $	��600��6   
������ .��5
      � .+�5   
   �� $��Center=�6   $��Center=�62   .+�5      �� -   5          ��Name$  labelUsername��5      $
��User��6+   
���k���$��Medium"�5      $��20(�5      $��	-60,0,0,5q�5      �� 5      -   5         ��Name$ txtUsername��5         errorTemplate =� ErrorTemplate# [  5   l   $��Medium"�5      $��20(�5      
������� �� 
CaretBrush
 ��� �$��0,0,0,2q�5      $��-60,0,-40,0q�5      $��0,0,0,0q�5      ��5      �� *
Username+ �� ValidatesOnExceptions$
 True�� �� UpdateSourceTrigger$ PropertyChanged=�.��5   #   .��5!   )   5#      �� 5%      -   5        $  labelPassword��5%      $��Password��6+   
���k���$��Medium"�5'      $��20(�5(      $��	-60,0,0,5q�5)      �� 5-      -   5        $ txtPassword��5.      # [  5/   l   $��Medium"�50      $��20(�51      
�������
 ��� �$��0,0,0,2q�54      $��-60,0,-60,0q�55      ��5/      �� *
Password+$
 True��$ PropertyChanged=�55      �� 5A      -   5         ��Name$ LoginButton��5A      $��Login��5B      $��0,20,0,0q�5C      
�����_�$��20(�5E        ButtonTheme#��[ 5F      5G      5J      5K      5L      