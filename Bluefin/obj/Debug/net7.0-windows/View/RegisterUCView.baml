   M S B A M L   `   `   `  ����B  >Bluefin, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Bluefin.ViewBluefin.View  5      !    Bluefin.View.RegisterUCView   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:Bluefin.View     5      .��5	      � .+�5
   
   �   � RowDefinitions  5      �� 5      $
��auto �6    �� 5      �� 5      $	��100 �6    .+�5      �� $��0��6   .+�5      �� $��Register��6   $��24(�6+   $��Center=�69   
�������6V   5      �� 5      $��1��6    �� Orientation$ 
Horizontal=�6'   $��0,40,0,0q�6@   $��Center=�6R   .+�5      �� .+�5      �� -   5         ��Name$ FName��5      $��	Firstname��6,   $��16(�6@   
�������6N   �� 5      -   5        $ LName��5      $��Lastname��6,   $��16(�6?   
�������6M   �� 5      -   5        $ Phone��5      $��
Mobile no.��6+   $��16(�6@   
�������6N   �� 5      -   5        $ Email��5      $��Email��6,   $��16(�6<   
�������6J   �� 5      -   5        $ Username��5      $��Username��6/   $��16(�6B   
�������6P   �� 5      -   5        $ Password��5      $��Password��6/   $��16(�6B   
�������6P   �� 5      -   5        $ 	Password2��5      $��Password��60   $��16(�6C   
�������6Q   5       �� 5"      .+�5#      �� -   5         ��Name$ txtFirstName��5#         errorTemplate =� ErrorTemplate# [  6�   $��
20,5,20,10q�6�   $	��300��6�   ��64   �� *	FirstName+ �� ValidatesOnExceptions$
 True�� �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5$      -	   5        $ txtLastName��5$      # [  6�   $��
20,5,20,10q�6�   $	��300��6�   ��63   �� *
LastName+$
 True��$ PropertyChanged=�6�   �� 5%      -
   5        $ txtPhoneNumber��5%      # [  6�   $��
20,5,20,10q�6�   $	��300��6�   ��66   �� *PhoneNumber+$
 True��$ PropertyChanged=�6�   �� 5&      -   5        $ txtEmail��5&      # [  6�   $��
20,5,20,10q�6�   $	��300��6�   ��60   �� *Email+$
 True��$ PropertyChanged=�6�   �� 5'      -   5        $ txtUsername��5'      # [  6�   $��
20,5,20,10q�6�   $	��300��6�   ��63   �� *
Username+$
 True��$ PropertyChanged=�6�   �� 5(      -   5        $ txtPassword��5(      # [  6�   $��
20,5,20,10q�6�   $	��300��6�   ��63   �� *	Password1+$
 True��$ PropertyChanged=�6�   �� 5)      -   5        $ txtPassword2��5)      # [  6�   $��
20,5,20,10q�6�   $	��300��6�   ��64   �� *	Password2+$
 True��$ PropertyChanged=�6�   5+      5/      �� 51      $��3��6   $��Center=�6&   $	��Top=�6C   .+�52      �� -   5        $��Register��52      $��16(�6-   $	��100��6;   $��25��6G     ButtonTheme#��[ 6S   6x   53      56      58      59      