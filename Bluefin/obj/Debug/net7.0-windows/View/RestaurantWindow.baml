   M S B A M L   `   `   `  ����  Bluefin#    Bluefin.View.RestaurantWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   $	��450��5   	   $	��900��5   	   ��5	      �� 5
   
     �� Color$  #252525��6   .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      �� 5      $��50 �6    � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �� $��1��6   $��1��5      $��
50,20,50,0q�5      $��2��6)   .+�5      �� $��
MenuTitle:��6   
�������6)   �� 5      -   5         ��Name$ txtMenuTitle��5         errorTemplate =� ErrorTemplate# [  6�   ��6,   �� *mvm.MenuTitle+ �� ValidatesOnExceptions$
 True�� �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5!      $��Name:��6   
�������6$   �� 5"      -   5        $ txtName��5"      # [  6�   ��6'   �� *mvm.DishTitle+$
 True��$ PropertyChanged=�6�   �� 5$      $��Description:��6   
�������6+   �� 5%      -   5        $ txtDescription��5%      # [  6�   ��6.   �� *mvm.Description+$
 True��$ PropertyChanged=�6�   �� 5'      $��Price:��6   
�������6%   �� 5(      -   5        $ txtPrice��5(      # [  6�   ��6(   �� *	mvm.Price+$
 True��$ PropertyChanged=�6�   �� 5*      $��Ingredients:��6   
�������6+   �� 5+      -   5        $ txtIngredients��5+      # [  6�   ��6.   �� *mvm.Ingredients+$
 True��$ PropertyChanged=�6�   5-      �� 5/   
    �� Orientation$ 
Horizontal=�6   $��2��50      $��1��51      $��Center=�52      $
��Left=�53      $��	175,0,0,0q�60   .+�55      �� -   5        $��Add Menu��55        ButtonTheme#��[ 56      $	��100��58      $��30��59      5;      �� 5=   
   $ 
Horizontal=�6   $��2��5>      $��Center=�5?      $��Center=�5@      .+�5B      �� -   5        $��Add Restaurant��5B      #��[ 5D      $	��130��5E      $��30��5F      5H      �� 5I   
   ���#404040$��2��5J      5L      �� 5M   
   -   5        $��Close��5M      $��30��5N      $	��100��5O      $
��Left=�5P      $��20,0,0,0q�5Q      #��[ 5R      $��Center=�5T      5V      �� 5W   
   $��1��6   $��0��5X      $��0,20,0,0q�5Y      .+�5Z      &   System.Windows.Controls.DataGrid  -	   5          Name$ MenuDataGrid��5Z      	   AutoGenerateColumns$	 False��5[      $��8��6'   $	��240��68   $	��296��6E   
   Columns
 5]      0  *System.Windows.Controls.DataGridTextColumn  5^      ,  &System.Windows.Controls.DataGridColumn   Header$
 Name��6)   1  +System.Windows.Controls.DataGridBoundColumn   Binding 67   �� *Name+  5_      $ Description��6)    6>   �� *Description+  5`      $ Price��6)    68   �� *Price+  5a      $ Ingredients��6)    6>   �� *Ingredients+4  .System.Windows.Controls.DataGridTemplateColumn  5b      $ 
Menu Image��6-      CellTemplate 5c      �� 5d      .R�5e   "   �� $	��100��6E   $	��100��6Q   ��6(   �� *	MenuImage+6Q   5f      5h      5j      5k      5l      5m      