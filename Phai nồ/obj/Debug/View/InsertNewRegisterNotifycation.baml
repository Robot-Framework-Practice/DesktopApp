   M S B A M L   `   `   `  ����D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Đồ_án.ViewĐồ_án.View  5      9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  5      ]3clr-namespace:Đồ_án.ViewModel.DashBroad.Teacher%Đồ_án.ViewModel.DashBroad.Teacher  5	      M+clr-namespace:Đồ_án.ViewModel.DashBroadĐồ_án.ViewModel.DashBroad  5
      2    ,Đồ_án.View.InsertNewRegisterNotifycation   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      (localclr-namespace:Đồ_án.View  5      1	ViewModel!clr-namespace:Đồ_án.ViewModel  5      <VM3clr-namespace:Đồ_án.ViewModel.DashBroad.Teacher  5	      =vmdashboard+clr-namespace:Đồ_án.ViewModel.DashBroad  5
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
�������$��1q�5;      	 �� CornerRadius$	 10��5<      $��10,100,10,10q�5=      ._�5>      �� $	��537��6   .��5?      �� .+�5@      �� 
 �� Padding$
 10q�6$   $ ��Notifycation's Information��5A      $��18(�5B      6)   � 5D       � ColumnDefinitions 5E      �� 5F   "   $	��110 �63   �� 5G   "   .+�5I      �� $
 
8 10 10 10q�5J      $��ID Notifycation��5K      5L      �� 5M      $��0 10 0 0q�6&   $��1��5N   &   {�.  ��5O   &   �� *NewNotifycation.IdNotify+ �� Mode$ OneWay=�5P   )   5Q      � 5R       5S      �� 5T   "   $	��110 �63   �� 5U   "   $
��691* �63   �� 5V   "   $	��91* �63   .+�5X      �� $
 
8 10 10 10q�5Y      $��To��5Z      5[      �� 5\      $��0 10 0 0q�6'    �� 
IsEditable .  $��1��5]   &   $��2��5^   &    �� SelectedItem 5_   &   �� *SelectedType+ �� Text 5`   &   �� *path+$ OneWayToSource=� �� UpdateSourceTrigger$ PropertyChanged=�.@�5a   "   �� $��SV��6/   �� 5b   "   $��GV��6/   �� 5c   "   $	��All��6/   5d      5e      � 5f       5g      �� 5h   "   $	��110 �63   �� 5i   "   .+�5k      �� $
 
8 10 10 10q�5l      $
��Date��5m      5n      (  "System.Windows.Controls.DatePicker  5o      $��0 10 0 0q�6)   $��1��5p   &   $	��200��66   $
��Left=�6B      SelectedDate 5q   &   �� *NewNotifycation.DateNotify+$ TwoWay=�$ PropertyChanged=�5r   )   5s      � 5t       5u      �� 5v   "   $	��110 �63   �� 5w   "   .+�5y      �� $
 
8 10 10 10q�5z      $
��Time��5{      5|      5�      � 5�      $	��100��6   $��0,50,0,0q�6,    5�      �� 5�   "   �� 5�   "   .+�5�      �� $��	20,0,20,0q�6%   $��0��68   $��Confirm��6H   ��6Z   �� *AddNotifycation+�� 5�      $��	20,0,20,0q�6%   $��1��68   $
��Back��6H   ���	#FFED6E93��6n   �� *InsertNewNotifycation+5�      5�      5�      5�      5�      5�      5�      