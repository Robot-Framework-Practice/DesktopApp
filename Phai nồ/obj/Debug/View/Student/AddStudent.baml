   M S B A M L   `   `   `  ����D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Đồ_án.ViewĐồ_án.View  5      9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  5	      M+clr-namespace:Đồ_án.ViewModel.DashBroadĐồ_án.ViewModel.DashBroad  5
          Đồ_án.View.AddStudent   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      (localclr-namespace:Đồ_án.View  5      1	ViewModel!clr-namespace:Đồ_án.ViewModel  5	      =vmdashboard+clr-namespace:Đồ_án.ViewModel.DashBroad  5
         StudentListingViewModel  � DataContext#  [  5       N� Title$ 
AddStudent��5      .��5      � 
�������.+�5   
   �  � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    .+�5      (  "MaterialDesignThemes.Wpf.ColorZone  $	��970��6(   $��90��64      Mode$ Inverted=�6@   $��16q�6P   
���OO/�.��5      ]� .+�5      '  !MaterialDesignThemes.Wpf.PopupBox  $��Right=�6.      PlacementMode$ BottomAndAlignRightEdges=�6E   
�������$��20(�5   *      PopupContent. 5      �� 
�������.@�5      �� $	��150��6*   $��50��66   .��5   "   �� $��Logout��6o   
���OO/�$	��150��5   %   $��50��61   ��5   )   �� *	ShowLogin+  LoginViewModel �� Source# [ ��5   &   �� 5    *    �� ImageSource$- '\Resources\icons8_close_window_52px.png��65   5"   #   5#      �� 5$      $	��150��6*   $��50��66   .��5%   "   �� $
��Exit��6p   
���OO/�$	��150��5&   %   $��50��61   ��5%   )   �� *ExitCommand+  ExitViewModel# [ 5'   #   5(      5)      5*      �� 5+       �� Orientation$ 
Horizontal=�6!   .+�5,      �� $+��%\Resources\icons8_customer_30px_1.png��6    �� 5-      $��Center=�6$   $��16 0 0 0q�6?   $��Profile��6Q   $��25(�6`   5.      5/      50      �� 53      	 �� Padding$	 20q�54      
�������$��1q�56      
 �� CornerRadius$
 10��57      $��10,100,10,10q�58      ._�59      �� $	��537��6   .��5:      �� .+�5;      ��  �� Padding$ 10q�6$   $��Information��5<      $��18(�5=      6)   � 5@       � ColumnDefinitions 5A      �� 5B   "   $	��110 �63   �� 5C   "   $
��691* �63   �� 5D   "   $	��91* �63   .+�5F      �� $ 
8 10 10 10q�5G      $��
Subject ID��5H      5I      �� 5J      $��0 10 0 0q�6&   $��1��5K   &   $��2��5L   &   ��5M   &   �� *	IdSubject+6C   5N      � 5P       5Q      �� 5R   "   $	��110 �63   �� 5S   "   $
��691* �63   �� 5T   "   $	��91* �63   .+�5V      �� $ 
8 10 10 10q�5W      $��Class ID��5X      5Y      �� 5Z      $��0 10 0 0q�6&   $��1��5[   &   $��2��5\   &   ��5]   &   �� *Class.IdClass+6G   5^      � 5`       5a      �� 5b   "   $	��110 �63   �� 5c   "   .+�5e      �� $ 
8 10 10 10q�5f      $��Ngày Bắt Đầu��5g      5h      �� 5i      $��0 10 0 0q�6&   $��1��5j   &   ��5k   &   �� *
Class.NgBD+5l   )   5m      � 5o       5p      �� 5q   "   $	��110 �63   �� 5r   "   .+�5t      �� $ 
8 10 10 10q�5u      $��Ngày Kết Thúc��5v      5w      �� 5x      $��0 10 0 0q�6&   $��1��5y   &   ��5z   &   �� *
Class.NgKT+5{   )   5|      � 5�      $	��100��6    5�      �� 5�   "   �� 5�   "   .+�5�      �� $��	20,0,20,0q�6%   $��0��5�   %   $��Confirm��5�   %   ��5�   %   �� *
AddClass+5�      �� 5�      $��	20,0,20,0q�6%   $��1��68   $��Cancel��6H   ���	#FFED6E93��6p   �� *MainStudentCommand+  5�   "   .   (Đồ_án.ViewModel.MainStudentViewModel  5�   &   5�      5�      5�      5�      5�      5�      5�      5�      