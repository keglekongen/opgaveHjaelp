   M S B A M L   `   `   `  ����B  >Bluefin, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Bluefin.ViewBluefin.View  5   	   5clr-namespace:Bluefin.ViewModelBluefin.ViewModel  62   !    Bluefin.View.RegisterWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:Bluefin.View     5   	   5	viewmodelclr-namespace:Bluefin.ViewModel     62   $	��600��5   	   $	��600��6   
������ .��5      �� ���#252525._�5   
   �   � RowDefinitions  5      �� 5      $��50 �6    �� 5      $
��auto �6    �� 5      �� 5      $��50 �6    .+�5      �� ���#404040$��Center=�5      .+�5      �� -   5        $��Close��5      $��30��5      $	��100��5      $
��Left=�5      $��20,0,0,0q�5         ButtonTheme#��[  5      $��Center=�5      5      5      �� 5!      $��1��6   .+�5"      �� $��Register��6   $��24(�6+   $��Center=�69   
�������6V   5$      �� 5%      $��2��6    �� Orientation$ 
Horizontal=�6'   $��0,40,0,0q�6@   $��Center=�6R   .+�5'      �� .+�5(      �� -   5         ��Name$ FName��5(      $��	Firstname��6,   $��16(�6@   
�������6N   �� 5)      -   5        $ LName��5)      $��Lastname��6,   $��16(�6?   
�������6M   �� 5*      -   5        $ Phone��5*      $��
Mobile no.��6+   $��16(�6@   
�������6N   �� 5+      -   5        $ Email��5+      $��Email��6,   $��16(�6<   
�������6J   �� 5,      -   5        $ Username��5,      $��Username��6/   $��16(�6B   
�������6P   �� 5-      -   5        $ Password��5-      $��Password��6/   $��16(�6B   
�������6P   �� 5.      -   5        $ 	Password2��5.      $��Password��60   $��16(�6C   
�������6Q   50      �� 52      .+�53      �� -	   5         ��Name$ txtFirstName��53        errorTemplate =� ErrorTemplate# [ 6�   $��
20,5,20,10q�6�   $	��300��6�   ��64   �� *	FirstName+ �� ValidatesOnExceptions$
 True�� �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 54      -
   5        $ txtLastName��54      # [ 6�   $��
20,5,20,10q�6�   $	��300��6�   ��63   �� *
LastName+$
 True��$ PropertyChanged=�6�   �� 55      -   5        $ txtPhoneNumber��55      # [ 6�   $��
20,5,20,10q�6�   $	��300��6�   ��66   �� *PhoneNumber+$
 True��$ PropertyChanged=�6�   �� 56      -   5        $ txtEmail��56      # [ 6�   $��
20,5,20,10q�6�   $	��300��6�   ��60   �� *Email+$
 True��$ PropertyChanged=�6�   �� 57      -   5        $ txtUsername��57      # [ 6�   $��
20,5,20,10q�6�   $	��300��6�   ��63   �� *
Username+$
 True��$ PropertyChanged=�6�   �� 58      -   5        $ txtPassword��58      # [ 6�   $��
20,5,20,10q�6�   $	��300��6�   ��63   �� *	Password1+$
 True��$ PropertyChanged=�6�   �� 59      -   5        $ txtPassword2��59      # [ 6�   $��
20,5,20,10q�6�   $	��300��6�   ��64   �� *	Password2+$
 True��$ PropertyChanged=�6�   5;      5?      �� 5A      $��3��6   $��Center=�6&   $��Center=�6C   .+�5B      �� -   5        $��Register��5B      $��16(�6-   $	��100��6;   $��25��6G   #��[  6h   5C      5F      5G      5I      