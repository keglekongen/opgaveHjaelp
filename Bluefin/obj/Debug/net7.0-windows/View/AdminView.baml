   M S B A M L   `   `   `  ����B  >Bluefin, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Bluefin.ViewBluefin.View  5          Bluefin.View.AdminView   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:Bluefin.View     5      
������ .��5
      � .+�5   
   �� $��Center=�6   $��Center=�62   .+�5      �� -   5          ��Name$  labelUsername��5      $
��User��5      
���k���$��Medium"�5      $��20(�5      $��	-60,0,0,5q�5      �� 5      -   5         ��Name$ txtUsername��5      $��Medium"�5      $��20(�5      
������� �� 
CaretBrush
 ��� �$��0,0,0,2q�5      $��-60,0,-40,0q�5      $��0,0,0,0q�5         errorTemplate =� ErrorTemplate# [  5   l   ��6   �� *
Username+ �� ValidatesOnExceptions$
 True�� �� UpdateSourceTrigger$ PropertyChanged=�.��5      .��5#   )   5%      �� 5'      -   5        $  labelPassword��5(      $��Password��5'      
���k���$��Medium"�5*      $��20(�5+      $��	-60,0,0,5q�5,      �� 50      -   5        $ txtPassword��51      $��Medium"�52      $��20(�53      
�������
 ��� �$��0,0,0,2q�56      $��-60,0,-60,0q�57      # [  58   l   ��6   �� *
Password+$
 True��$ PropertyChanged=�6l   �� 5E      -   5         ��Name$ LoginButton��5E      $��Login��5H      $��0,20,0,0q�5I      
�����_�$��20(�5K        ButtonTheme#��[ 5L      ��5F      �� *
LoginCMD+��5G      �� 5L   :   5O      5P      5Q      