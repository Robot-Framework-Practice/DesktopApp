   M S B A M L   `   `   `  ���� D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Đồ_án.ComponentsĐồ_án.Components  9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  ]3clr-namespace:Đồ_án.ViewModel.DashBroad.Teacher%Đồ_án.ViewModel.DashBroad.Teacher      Đồ_án.View.Teacher   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  :d2http://schemas.microsoft.com/expression/blend/2008  R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     9
components"clr-namespace:Đồ_án.Components     7	ViewModel!clr-namespace:Đồ_án.ViewModel     BVM3clr-namespace:Đồ_án.ViewModel.DashBroad.Teacher        TeacherViewModel  � DataContext#  [  .��� 
������� � RowDefinitions �� $
��auto ��� .+�(  "MaterialDesignThemes.Wpf.ColorZone  $	��970��$��90��   Mode$ Inverted=�$��16q�
���OO/�.��]� .+�'  !MaterialDesignThemes.Wpf.PopupBox  $��Right=�   PlacementMode$ BottomAndAlignRightEdges=�
�������$��20(�   PopupContent. �� 
�������.@��� $	��150��$��50��.���� $��Logout��
���OO/�$	��150��$��50������ *	ShowLogin+����  �� ImageSource$- '\Resources\icons8_close_window_52px.png��  (   "Đồ_án.ViewModel.LoginViewModel  �� $	��150��$��50��.���� $
��Exit��
���OO/�$	��150��$��50������ *ExitCommand+  ExitViewModel �� Source# [ ��  �� Orientation$ 
Horizontal=�.+��� $��Center=�$��16 0 0 0q�$��Teacher��$��25(��� $��1��$��Center=�$	��950��.@��� $��Listing��.���  �� �� $��80 �.+�)   #Đồ_án.Components.TeacherListing  $��0��$	��800��$��Center=�� $��1��.+��� $��Add new Teacher��$��16(�$��Center=�$��Center=�$	��400��$��40������ *InsertNewTeacher+�� -   $
��tab2��$��Update�� �� 
IsSelected �� *Index+	 �� Mode$	 TwoWay=�
 �� UpdateSourceTrigger$
 PropertyChanged=�.��� .+�*   $Đồ_án.Components.TeacherUpdating  $��	0,0,0,120q�$	��800��$��Center=��� $��	Searching��.��+   %Đồ_án.Components.TeacherSearching  