   M S B A M L   `   `   `  ���� D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Đồ_án.ViewĐồ_án.View  9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  ]3clr-namespace:Đồ_án.ViewModel.DashBroad.Subject%Đồ_án.ViewModel.DashBroad.Subject  M+clr-namespace:Đồ_án.ViewModel.DashBroadĐồ_án.ViewModel.DashBroad  %    Đồ_án.View.InsertNewSubject   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  (localclr-namespace:Đồ_án.View  1	ViewModel!clr-namespace:Đồ_án.ViewModel  <VM3clr-namespace:Đồ_án.ViewModel.DashBroad.Subject  =vmdashboard+clr-namespace:Đồ_án.ViewModel.DashBroad    � DataContext  <   6Đồ_án.ViewModel.DashBroad.Subject.SubjectViewModel  .��� 
�������.+��  � RowDefinitions �� $
��auto ��� $
��auto �.+�(  "MaterialDesignThemes.Wpf.ColorZone  $	��970��$��90��   Mode$ Inverted=�$��16q�
���OO/�.��]� .+�'  !MaterialDesignThemes.Wpf.PopupBox  $��Right=�   PlacementMode$ BottomAndAlignRightEdges=�
�������$��20(�   PopupContent. �� 
�������.@��� $	��150��$��50��.���� $��Logout��
���OO/�$	��150��$��50������ *	ShowLogin+   LoginViewModel �� Source# [  ����  �� ImageSource$+ %\Resources\icons8_customer_30px_1.png���� $	��150��$��50��.���� $
��Exit��
���OO/�$	��150��$��50������ *ExitCommand+  ExitViewModel# [ ���� $- '\Resources\icons8_close_window_52px.png����  �� Orientation$ 
Horizontal=�.+��� $+��%\Resources\icons8_customer_30px_1.png���� $��Center=�$��16 0 0 0q�$��Information��$��25(���  �� Padding$ 20q�
�������$��1q�	 �� CornerRadius$	 10��$��10,100,10,10q�._��� $	��537��.���� .+��� 
 �� Padding$
 10q�$��Subject's Information��$��18(��  � ColumnDefinitions �� $	��110 ��� .+��� $
 
8 10 10 10q�$��ID���� $��0 10 0 0q�$��1������ *NewSubject.IdSubject+ �� Mode$ TwoWay=��  �� $	��110 ��� $
��691* ��� $	��91* �.+��� $
 
8 10 10 10q�$��Name Subject���� $��0 10 0 0q�$��1��$��2������ *NewSubject.NameSubject+$ TwoWay=��  �� $	��110 ��� .+��� $
 
8 10 10 10q�$��Theory Credits���� $��0 10 0 0q�$��1������ *NewSubject.TinChiLT+�  �� $	��110 ��� .+��� $
 
8 10 10 10q�$��Pratice Credits���� $��0 10 0 0q�$��1������ *NewSubject.TinChiTH+�  �� $	��110 ��� .+��� $
 
8 10 10 10q�$��
Date Start��(  "System.Windows.Controls.DatePicker  $��	0 10 0 10q�$��1��   SelectedDate �� *NewSubject.NgBD+�  �� $	��110 ��� .+��� $
 
8 10 10 10q�$��Date End��  $��	0 10 0 10q�$��1�� �� *NewSubject.NgKT+�  �� $	��110 ��� .+��� $
 
8 10 10 10q�$��Type Education���� $��0 10 0 0q�$��1������ *NewSubject.HeDT+� $	��100��$��0,10,0,0q� �� $	��150 ��� �� $	��150 ���  �� �� .+��� $
 	8 10 0 10q�$��Ratio Process��$��0��$��0���� $
 	8 10 0 10q�$��Ratio Pratice��$��2��$��0���� $
 	8 10 0 10q�$��Ratio Half Semester��$��0��$��1���� $
 	8 10 0 10q�$��Ratio Semester��$��2��$��1���� $	��200��$
��Left=�$��	0 10 0 10q�$��1��$��0��$��Center=����� *NewSubject.RatioQT+�� $	��200��$
��Left=�$��	0 10 0 10q�$��1��$��1��$��Center=����� *NewSubject.RatioGK+�� $	��200��$
��Left=�$��	0 10 0 10q�$��3��$��0��$��Center=����� *NewSubject.RatioTH+�� $	��200��$
��Left=�$��	0 10 0 10q�$��3��$��1��$��Center=����� *NewSubject.RatioCK+� $	��100��$��0,20,0,0q� �� �� .+��� $��	20,0,20,0q�$��0��$��Confirm������ *
AddSubject+�� $��	20,0,20,0q�$��1��$��Cancel�����	#FFED6E93���� *SubjectFrame+