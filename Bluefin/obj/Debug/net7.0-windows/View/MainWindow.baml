   M S B A M L   `   `   `  ����B  >Bluefin, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:BluefinBluefin  5   	   5clr-namespace:Bluefin.ViewModelBluefin.ViewModel  5   	       Bluefin.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Bluefin     5   	   5	viewModelclr-namespace:Bluefin.ViewModel     5   	     � Title$  
MainWindow��5	   	   $	��600��5
   	   $	��920��6    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	   
������  � AllowsTransparency$
 True��5   	    � DataContext 5      %  Bluefin.ViewModel.MainViewModel  5   
    � 	Resources 5         PacificoFont  TiltPrismFont  
CinzelFont��%�   &	        &	 4     &	 �     *�5   
    /Fonts/#Pacifico-Regular.ttf)�6H   *�5   
   =9C:/Users/chris/source/repos/GitHub/#TiltPrism-Regular.ttf)�6f   *�5   
   &"/Fonts/#Cinl-VariableFont_wght.ttf)�6L   5      .��5      �� ���#252525 �� CornerRadius$ 10��5      ._�5   
   �  � ColumnDefinitions 5      �� 5      $��81 �6#   �� 5       $��53.07 �6#   �� 5!      $��* �6#    � RowDefinitions 5$      �� 5%      $��75 �6    �� 5&      $��* �6    .+�5)      �� $��0��6   $��0��5*      $��3��5+      ���#404040$��2,0,-2,2q�5-      �� 5/      $��0��6   $��1��50      ���#404040$��2��51   &   $��	0,-20,0,0q�52      �� 54      $��Dinner time��6   $��Center=�55      $
��Left=�56      
�������$��22(�58      $��20,0,0,0q�59      #��[ 5:      $��2��6@   �� 5<      $��Right=�6   	 �� Orientation$	 
Horizontal=�5=      $��2��5>      $��Center=�5?      .+�5A      �� -   5        $��50��5A      $��50��5B      $��_��5C      
������ $��0q�5E      
�������$
��Bold"�5G      $��40(�5H      $��0,0,0,15q�5I      5J      �� 5L      -   5        $��50��5L      $��50��5M      $��40(�5N      $	��□��5O      
������ $��0q�5Q      
�������$
��Bold"�5S      $��0,0,0,10q�5U      �� 5W      -   5        $��50��5W      $��50��5X      $��40(�5Y      $��x��5Z      
������ $��0q�5\      
�������$
��Bold"�5^      $��0,0,0,10q�5`      5b      �� 5d      $��1��6   $��2��6&   .+�5e      �� -   5        $��60��5f      $��50��5g      $��Login��5h      
������ $��0q�5j      
�������$
��Bold"�5l      $��20(�5m      $��0,0,0,15q�5n      6/   	� 5|      $
��Home��6   $��50��5}      
�������$��14(�5        MenuButtonTheme#��[ 5�      
 d� 	IsChecked$

 TrueY�5�      ��5�      �� *HomeViewCommand+	� 5�      $��Login��6   $��50��5�      
�������$��14(�5�      #��[ 5�      ��5�      �� *AdminViewCommand+	� 5�      $��Register��6   $��50��5�      
�������$��14(�5�      #��[ 5�      ��5�      �� *RegisterUCCommand+5�      �� 5�      $	��250��6   $��40��5�      $��Center=�5�      $
��Left=�5�      $��5,0,0,0q�5�      $��2��5�        ModernTextBox#��[ 5�      .��6=   5�      �� 5�      $��1��6   $��2��5�      $��
10,12,10,8q�5�      ��5�      �� *CurrentView+5�      5�      5�      5�      