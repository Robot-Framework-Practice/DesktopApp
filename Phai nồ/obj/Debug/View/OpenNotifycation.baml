   M S B A M L   `   `   `  ����D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Đồ_án.ViewĐồ_án.View  5      %    Đồ_án.View.OpenNotifycation   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:Đồ_án.View     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5         ScheduleViewModel  � DataContext#  [  5      .��5      � 
�������$	��700��6#   $	��Top=�60   .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone  $	��970��6$   $��90��60      Mode$ Inverted=�6<   $��16q�6L   
���OO/�.��5      ]� .+�5      '  !MaterialDesignThemes.Wpf.PopupBox  $��Right=�6*      PlacementMode$ BottomAndAlignRightEdges=�6A   
�������$��20(�5   *      PopupContent. 5      �� 
�������.@�5      �� $	��150��6&   $��50��62   .��5      �� $��Logout��6k   
���OO/�$	��150��5   %   $��50��61   ��5   %   �� *	ShowLogin+  LoginViewModel �� Source# [ ��5   "   �� 5   &    �� ImageSource$- '\Resources\icons8_close_window_52px.png��61   5      5      �� 5      $	��150��6&   $��50��62   .��5      �� $
��Exit��6l   
���OO/�$	��150��5   %   $��50��61   ��5   %   �� *ExitCommand+  ExitViewModel# [ ��5   "   �� 5   &   $- '\Resources\icons8_close_window_52px.png��61   5       5!      5"      5#      �� 5$       �� Orientation$ 
Horizontal=�6   .+�5%      �� $��Center=�6    $��16 0 0 0q�6;   $��Notifycation��6M   $��25(�5&       5'      5(      5)      �� 5*   
   $	��960��6   $	��600��6   $��1q�6*   
������� �� CornerRadius$ 20��6Q    �� Padding$ 10q�5+      $��0,90,0,0q�6   ._�5,      �� $y�Visible=�6   .��5-      �� .+�5.      �� 	 �� Padding$	 10q�6    $ ��Notifycation's Information��5/      $��18(�50      6)   � 51      
 � ColumnDefinitions
 52      �� 53      $	��110 �6/   �� 54      .+�56      �� $	 
8 10 10 10q�57      $��ID Notifycation��58      59      �� 5:      $��0 10 0 0q�6"   {�.  $��1��5;   &   ��5<   &   �� *OpenNotifycation.IdNotify+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�5=   )   5>      � 5?      
 5@      �� 5A      $	��110 �6/   �� 5B      .+�5D      �� $	 
8 10 10 10q�5E      $��Header��5F      5G      �� 5H      $��0 10 0 0q�6"   $��1��5I   &   {�.  ��5J   &   �� *OpenNotifycation.Header+$ TwoWay=�5K   )   5L      � 5M      
 5N      �� 5O      $	��110 �6/   �� 5P      .+�5R      �� $	 
8 10 10 10q�5S      $
��Date��5T      5U      (  "System.Windows.Controls.DatePicker  5V      $��0 10 0 0q�6%   {�.  $��1��5W   &   $	��200��66   $
��Left=�6B      SelectedDate 5X   &   �� *OpenNotifycation.DateNotify+$ TwoWay=�$ PropertyChanged=�5Y   )   5Z      � 5j      
 5k      �� 5l      $	��110 �6/   �� 5m      $
��691* �6/   �� 5n      $	��91* �6/   .+�5p      �� $	 
8 10 10 10q�5q      $��Content��5r      5s      5t      �� 5u      $��	10 10 0 0q�6   $	��830��62   $	��360��6>   $
��Left=�6K   " �� VerticalScrollBarVisibility$ Visible=�6f   $��1��5v      $��	10,10,0,0q�6.    ! MaterialDesignOutlinedTextBox#��[ 6A   $��2��5w      
������� �� TextWrapping$
 Wrap=�6E    �� AcceptsReturn . {�.  ��5x      �� *OpenNotifycation.Content+$ TwoWay=�$ PropertyChanged=�6|   � 5y      $	��100��6   $��0,0,0,0q�6(   
 5z      �� 5{      �� 5|      .+�5~      �� $��	20,0,20,0q�6!   $��0��64   $��2��6D   $
��Back��6X   ���	#FFED6E93��6~   �� *EducationFrame+5      5�      5�      5�      5�      5�      