   M S B A M L   `   `   `  ����D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Đồ_án.ComponentsĐồ_án.Components  5      9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  5      ]3clr-namespace:Đồ_án.ViewModel.DashBroad.Subject%Đồ_án.ViewModel.DashBroad.Subject  5	          Đồ_án.View.Home   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      :d2http://schemas.microsoft.com/expression/blend/2008  5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      9
components"clr-namespace:Đồ_án.Components     5      7	ViewModel!clr-namespace:Đồ_án.ViewModel     5      BVM3clr-namespace:Đồ_án.ViewModel.DashBroad.Subject     5	         HomeViewModel  � DataContext#  [  5
      .��5      � 
������� � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone  $	��970��6$   $��90��60      Mode$ Inverted=�6<   $��16q�6L   
���OO/�.��5      ]� .+�5      '  !MaterialDesignThemes.Wpf.PopupBox  $��Right=�6*      PlacementMode$ BottomAndAlignRightEdges=�6A   
�������$��20(�5   *      PopupContent. 5      �� 
�������.@�5      �� $	��150��6&   $��50��62   .��5      �� $��Logout��6k   
���OO/�$	��150��5   %   $��50��61   ��5   %   �� *	ShowLogin+  LoginViewModel �� Source# [ ��5   "   �� 5   &    �� ImageSource$- '\Resources\icons8_close_window_52px.png��61   5      5       �� 5!      $	��150��6&   $��50��62   .��5"      �� $
��Exit��6m   
���OO/�$	��150��5#   %   $��50��61   ��5"   %   �� *ExitCommand+  ExitViewModel# [ 5#   1   5$      5%      5&      �� 5'       �� Orientation$ 
Horizontal=�6   .+�5(      �� $��Center=�6    $��16 0 0 0q�6;   $
��Home��6M   $��25(�6Y   5)      5*      5+      �� 5-   
   $��1��6   $��Center=�6"   $	��950��5.      .@�5/      �� $��Listing��50      .��51      �  52      �� 53      �� 54      $��80 �6(    � ColumnDefinitions 56      �� 57      �� 58      .+�5;      .   (Đồ_án.Components.NotifycationListing  $��0��65   $��2��6B   $	��900��6V   $��0,10,0,0q�6b   $��Center=�6t   � 5<      $��1��6   $��0��6(   .+�5>      �� -   5        	 ��Name$	 
AddNewNoti��5?      $��Add new Notifycation��5@      $��16(�5A      $��Center=�5B      $��Center=�5C      $	��400��5D      $��40��5E      ��5F      �� *InsertNewNotifycation+6I   5H      �� 5I      -   5        $	 	DelAllBtn��5I      $��1��60   $��1��6@   $	��400��6M   
����p��$��
Delete All��6t   $��40��5J   ;   ��6   �� *	DeleteAll+6;   5K      5L      �� 5N      -   5        $
��tab2��5N      $��Update��5O      .��5P      � .+�5Q      /   )Đồ_án.Components.NotifycationUpdating  $��0,0,0,50q�66   $	��900��6H   $��Center=�6T   5R      5S      5Y      5]      5^      