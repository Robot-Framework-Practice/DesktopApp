   M S B A M L   `   `   `  ���� D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Đồ_án.ComponentsĐồ_án.Components  9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  ]3clr-namespace:Đồ_án.ViewModel.DashBroad.Subject%Đồ_án.ViewModel.DashBroad.Subject      Đồ_án.View.Subject   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  :d2http://schemas.microsoft.com/expression/blend/2008  R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     9
components"clr-namespace:Đồ_án.Components     7	ViewModel!clr-namespace:Đồ_án.ViewModel     BVM3clr-namespace:Đồ_án.ViewModel.DashBroad.Subject       � DataContext  <   6Đồ_án.ViewModel.DashBroad.Subject.SubjectViewModel  .��� 
������� � RowDefinitions �� $
��auto ��� .+�(  "MaterialDesignThemes.Wpf.ColorZone  $	��970��$��90��   Mode$ Inverted=�$��16q�
���OO/�.��]� .+�'  !MaterialDesignThemes.Wpf.PopupBox  $��Right=�   PlacementMode$ BottomAndAlignRightEdges=�
�������$��20(�   PopupContent. �� 
�������.@��� $	��150��$��50��.���� $��Logout��
���OO/�$	��150��$��50������ *	ShowLogin+����  �� ImageSource$- '\Resources\icons8_close_window_52px.png��  (   "Đồ_án.ViewModel.LoginViewModel  �� $	��150��$��50��.���� $
��Exit��
���OO/�$	��150��$��50������ *ExitCommand+   ExitViewModel �� Source# [  ��  �� Orientation$ 
Horizontal=�.+��� $��Center=�$��16 0 0 0q�$��Subject��$��25(��� $��1��$��Center=�$	��950��.@��� $��Listing��.���  �� �� $��80 �.+�� $��0�� � ColumnDefinitions �� $
��1.2* ��� .+�)   #Đồ_án.Components.SubjectListing  $��0��� $��1�� �� $
��auto ��� .+��� $��0��
�������$��3q�	 �� CornerRadius$	 0��$��52��$	��350��$��10q�._��  �� $��5* ��� .+��� )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Subjects��$��15(�$��10q�$��0������ *Filter+ �� UpdateSourceTrigger$ PropertyChanged=��� $��1��$��55��$��60��.���� $(��"\Resources\icons8_search_100px.png��$��25��$��25��$��-8, -5, 0, 0q�� $��1��.+��� 
�������$��1q�$	 10��$��10,10,30,10q�._��� ���� *SubjectFiltering+$ PropertyChanged=� �� View �� .P���  �� Width$	 200��$��
Class name�� �� DisplayMemberBinding �� *NameSubject+�� $	 120��$��Class ID�� �� *	IdSubject+� $��1��y��� *IsRoleAdmin+  LoginViewModel# [ .+��� $��Add new Subject��$��16(�$��Center=�$��Center=�$	��400��$��40������ *InsertNewSubject+�� -   $
��tab2��$��Update�� �� 
IsSelected �� *Index+ �� Mode$ TwoWay=�$ PropertyChanged=�.��� .+�*   $Đồ_án.Components.SubjectUpdating  $��0,0,0,50q�$	��800��$��Center=�