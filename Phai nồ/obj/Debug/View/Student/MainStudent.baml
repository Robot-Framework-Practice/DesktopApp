   M S B A M L   `   `   `  ����D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Đồ_án.ComponentsĐồ_án.Components  5      K*clr-namespace:Đồ_án.Components.StudentĐồ_án.Components.Student  5      9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  5	           Đồ_án.View.MainStudent   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      :d2http://schemas.microsoft.com/expression/blend/2008  5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      9
components"clr-namespace:Đồ_án.Components     5      A
Components*clr-namespace:Đồ_án.Components.Student     5      7	ViewModel!clr-namespace:Đồ_án.ViewModel     5	        N� Title$  MainStudent��5       � DataContext 5      .   (Đồ_án.ViewModel.MainStudentViewModel  5   
   .��5      � 
������� � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone  $	��970��6$   $��90��60      Mode$ Inverted=�6<   $��16q�6L   
���OO/�.��5      ]� .+�5      '  !MaterialDesignThemes.Wpf.PopupBox  $��Right=�6*      PlacementMode$ BottomAndAlignRightEdges=�6A   
�������$��20(�5   *      PopupContent. 5      �� 
�������.@�5      �� $	��150��6&   $��50��62   .��5      �� $��Logout��6k   
���OO/�$	��150��5   %   $��50��61   ��5   %   �� *	ShowLogin+   LoginViewModel �� Source# [  ��5   "   �� 5    &    �� ImageSource$- '\Resources\icons8_close_window_52px.png��61   5"      5#      �� 5$      $	��150��6&   $��50��62   .��5%      �� $
��Exit��6l   
���OO/�$	��150��5&   %   $��50��61   ��5%   %   �� *ExitCommand+  ExitViewModel# [ 5'      5(      5)      5*      �� 5+       �� Orientation$ 
Horizontal=�6   .+�5,      �� $��Center=�6    $��16 0 0 0q�6;   $��Classes��6M   $��25(�6\   5-      5.      5/      �� 51   
   $��1��6   $��Center=�6"   $	��950��52      .@�54      �� -   5        $��
ListTopNav��55      $��Listing��56      .��57      �  58      �� 59      �� 5:      $��80 �6(   .+�5=      )   #Đồ_án.Components.StudentListing  $��0��60   $��Center=�6=   6\   � 5?      $��1��6   y�5@      �� *IsRoleAdmin+# [  .+�5B      �� -   5        	 ��Name$	 AddBtn��5C      $��Add new Classes��5D      $��16(�5E      $��Center=�5F      $��Center=�5G      $	��400��5H      $��40��5I      ��5J      �� *AddStudentCommand+6E   5L      5M      5N      �� 5O      -   5        
 ��Name$
 RegisterTopNav��5O      $��Register Class��6.   .��5P      2   ,Đồ_án.Components.Student.StudentRegister  5Q      �� 5R      -   5        $
 SearchTopNav��5S      $��	Searching��5T      .��5U      +   %Đồ_án.Components.StudentSearching  $	��900��6.   6<   5V      5X      5\      5]      