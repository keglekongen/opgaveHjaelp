   M S B A M L   `   `   `  ����  Bluefin     Bluefin.View.AddRestaurant   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	     � Title$  Add a Restaurant��5      $	��450��6   $	��500��6,   ��5      �� 5	   
    �� Color$ #D5E8D4��6   .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5       $
��Auto �6    � ColumnDefinitions 5"   
   �� 5#      $
��Auto �6   �� 5$      $��* �6   .+�5'   
   �� $��Name of the Restaurant:��6   $��0��62   $��0��6?   �� 5(   
   -   5         ��Name$ NameTextBox��5(      $��0��6'   $��1��64   �� 5*   
   $��Address:��6   $��1��6#   $��0��60   $��0,10,0,0q�6@   �� 5+   
   -   5        $ AddressTextBox��5+      $��1��6*   $��1��67   �� 5-   
   $��Phone Number:��6   $��2��6(   $��0��65   $��0,10,0,0q�6E   �� 5.   
   -   5        $ PhoneNumberTextBox��5.      $��2��6.   $��1��6;   �� 50   
   $��Email:��6   $��3��6!   $��0��6.   $��0,10,0,0q�6>   �� 51   
   -   5        $ EmailTextBox��51      $��3��6(   $��1��65   �� 53   
   $��CVR Number:��6   $��4��6&   $��0��63   $��0,10,0,0q�6C   �� 54   
   -   5        $ CVRNumberTextBox��54      $��4��6,   $��1��69   �� 56   
   $��Italian Menu:��6   $��5��6(   $��0��65   $��0,10,0,0q�6E   �� 57   
   -   5        $ gg��57      $��5��6   $��1��6+   &   System.Windows.Controls.DataGrid  59   
   -   5          Name$ MenuDataGrid��59      $��7��6)   $��0��66   $��2��6F      AutoGenerateColumns$ False��5:         Columns 5;      0  *System.Windows.Controls.DataGridTextColumn  5<      ,  &System.Windows.Controls.DataGridColumn   Header$
 Name��6%   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 63   �� *Name+  5=      $ Description��6%   	 6:   �� *Description+  5>      $ Price��6%   	 64   �� *Price+  5?      $ Ingredients��6%   	 6:   �� *Ingredients+4  .System.Windows.Controls.DataGridTemplateColumn  5@      $ 
Menu Image��6)   
   CellTemplate
 5A      �� 5B      .R�5C      �� $	��100��6A   $	��100��6M   ��6$   �� *	MenuImage+6M   5D      5F      5H      �� 5J   
   $��Add Restaurant��6   $��12��6*   $��0��68   $��2��6H   $��Bottom=�5K      $��	0,140,0,0q�6(   �� 5M   
   $��Add Menu��6   $��6��6$   $��1��61   $��	10,10,0,0q�6A   5N      5O      