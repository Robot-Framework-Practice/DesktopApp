   M S B A M L   `   `   `  ����D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Đồ_án.ViewĐồ_án.View  5      9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  5      ]3clr-namespace:Đồ_án.ViewModel.DashBroad.Teacher%Đồ_án.ViewModel.DashBroad.Teacher  5	      M+clr-namespace:Đồ_án.ViewModel.DashBroadĐồ_án.ViewModel.DashBroad  5
      *    $Đồ_án.View.InsertNewNotifycation   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      (localclr-namespace:Đồ_án.View  5      1	ViewModel!clr-namespace:Đồ_án.ViewModel  5      <VM3clr-namespace:Đồ_án.ViewModel.DashBroad.Teacher  5	      =vmdashboard+clr-namespace:Đồ_án.ViewModel.DashBroad  5
         HomeViewModel  � DataContext#  [  5      .��5      � 
�������.+�5   
   �  � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    .+�5      (  "MaterialDesignThemes.Wpf.ColorZone  $	��970��6(   $��90��64      Mode$ Inverted=�6@   $��16q�6P   
���OO/�.��5      ]� .+�5      '  !MaterialDesignThemes.Wpf.PopupBox  $��Right=�6.      PlacementMode$ BottomAndAlignRightEdges=�6E   
�������$��20(�5   *      PopupContent. 5      �� 
�������.@�5      �� $	��150��6*   $��50��66   .��5   "   �� $��Logout��6o   
���OO/�$	��150��5   %   $��50��61   ��5   )   �� *	ShowLogin+  LoginViewModel �� Source# [ ��5   &   �� 5    *    �� ImageSource$+ %\Resources\icons8_customer_30px_1.png��65   5"   #   5#      �� 5$      $	��150��6*   $��50��66   .��5%   "   �� $
��Exit��6p   
���OO/�$	��150��5&   %   $��50��61   ��5%   )   �� *ExitCommand+  ExitViewModel# [ ��5'   &   �� 5(   *   $- '\Resources\icons8_close_window_52px.png��65   5*   #   5+      5,      5-      �� 5.       �� Orientation$ 
Horizontal=�6!   .+�5/      �� $+��%\Resources\icons8_customer_30px_1.png��6    �� 50      $��Center=�6$   $��16 0 0 0q�6?   $��Information��6Q   $��25(�51       52      53      54      �� 58       �� Padding$ 20q�59      
�������$��1q�5;      	 �� CornerRadius$	 10��5<      $��10,100,10,10q�5=      ._�5>      �� .+�5?      �� 
 �� Padding$
 10q�6    $ ��Notifycation's Information��5@      $��18(�5A      6)   � 5C       � ColumnDefinitions 5D      �� 5E      $	��110 �6/   �� 5F      .+�5H      �� $
 
8 10 10 10q�5I      $��ID Notifycation��5J      5K      �� 5L      $��0 10 0 0q�6"   $��1��5M   &   ��5N   &   �� *NewNotifycation.IdNotify+ �� Mode$ TwoWay=�5O   )   5P      � 5Q       5R      �� 5S      $	��110 �6/   �� 5T      .+�5V      �� $
 
8 10 10 10q�5W      $��Header��5X      5Y      �� 5Z      $��0 10 0 0q�6"   $��1��5[   &   ��5\   &   �� *NewNotifycation.Header+$ TwoWay=�5]   )   5^      � 5_       5`      �� 5a      $	��110 �6/   �� 5b      $
��691* �6/   �� 5c      $	��91* �6/   .+�5e      �� $
 
8 10 10 10q�5f      $��Content��5g      5h      5i      �� 5j      $��	10 10 0 0q�6   $	��890��62   $	��330��6>   $
��Left=�6K   " �� VerticalScrollBarVisibility$ Visible=�6f   $��1��5k   &   $��	10,10,0,0q�66    ! MaterialDesignOutlinedTextBox#��[ 6I   $��2��5l   &   
������� �� TextWrapping$
 Wrap=�6M    �� AcceptsReturn . ��5m   &   �� *NewNotifycation.Content+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   � 5n      $	��100��6   $��0,0,0,0q�6(    5o      �� 5p      �� 5q      .+�5s      �� $��	20,0,20,0q�6!   $��0��64   $
��Next��6D   ��6S   �� *InsertNewRegisterNotifycation+�� 5t      $��	20,0,20,0q�6!   $��1��64   $��Cancel��6D   ���	#FFED6E93��6l   �� *	HomeFrame+5u      5v      5w      5x      5y      5z      