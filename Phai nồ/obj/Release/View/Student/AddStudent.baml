   M S B A M L   `   `   `  ���� D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Đồ_án.ViewĐồ_án.View  9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  M+clr-namespace:Đồ_án.ViewModel.DashBroadĐồ_án.ViewModel.DashBroad      Đồ_án.View.AddStudent   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  (localclr-namespace:Đồ_án.View  1	ViewModel!clr-namespace:Đồ_án.ViewModel  =vmdashboard+clr-namespace:Đồ_án.ViewModel.DashBroad     StudentListingViewModel  � DataContext#  [   N� Title$ 
AddStudent��.��� 
�������.+��  � RowDefinitions �� $
��auto ��� $
��auto �.+�(  "MaterialDesignThemes.Wpf.ColorZone  $	��970��$��90��   Mode$ Inverted=�$��16q�
���OO/�.��]� .+�'  !MaterialDesignThemes.Wpf.PopupBox  $��Right=�   PlacementMode$ BottomAndAlignRightEdges=�
�������$��20(�   PopupContent. �� 
�������.@��� $	��150��$��50��.���� $��Logout��
���OO/�$	��150��$��50������ *	ShowLogin+  LoginViewModel �� Source# [ ����  �� ImageSource$- '\Resources\icons8_close_window_52px.png���� $	��150��$��50��.���� $
��Exit��
���OO/�$	��150��$��50������ *ExitCommand+  ExitViewModel# [ ��  �� Orientation$ 
Horizontal=�.+��� $+��%\Resources\icons8_customer_30px_1.png���� $��Center=�$��16 0 0 0q�$��Profile��$��25(��� 	 �� Padding$	 20q�
�������$��1q�
 �� CornerRadius$
 10��$��10,100,10,10q�._��� $	��537��.���� .+���  �� Padding$ 10q�$��Information��$��18(��  � ColumnDefinitions �� $	��110 ��� $
��691* ��� $	��91* �.+��� $ 
8 10 10 10q�$��
Subject ID���� $��0 10 0 0q�$��1��$��2������ *	IdSubject+�  �� $	��110 ��� $
��691* ��� $	��91* �.+��� $ 
8 10 10 10q�$��Class ID���� $��0 10 0 0q�$��1��$��2������ *Class.IdClass+�  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Ngày Bắt Đầu���� $��0 10 0 0q�$��1������ *
Class.NgBD+�  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Ngày Kết Thúc���� $��0 10 0 0q�$��1������ *
Class.NgKT+� $	��100�� �� �� .+��� $��	20,0,20,0q�$��0��$��Confirm������ *
AddClass+�� $��	20,0,20,0q�$��1��$��Cancel�����	#FFED6E93���� *MainStudentCommand+  .   (Đồ_án.ViewModel.MainStudentViewModel  