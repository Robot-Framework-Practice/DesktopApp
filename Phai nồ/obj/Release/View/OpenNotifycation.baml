   M S B A M L   `   `   `  ���� D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Đồ_án.ViewĐồ_án.View  %    Đồ_án.View.OpenNotifycation   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     .localclr-namespace:Đồ_án.View     _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes     ScheduleViewModel  � DataContext#  [  .��� 
�������$	��700��$	��Top=�.+�(  "MaterialDesignThemes.Wpf.ColorZone  $	��970��$��90��   Mode$ Inverted=�$��16q�
���OO/�.��]� .+�'  !MaterialDesignThemes.Wpf.PopupBox  $��Right=�   PlacementMode$ BottomAndAlignRightEdges=�
�������$��20(�   PopupContent. �� 
�������.@��� $	��150��$��50��.���� $��Logout��
���OO/�$	��150��$��50������ *	ShowLogin+  LoginViewModel �� Source# [ ����  �� ImageSource$- '\Resources\icons8_close_window_52px.png���� $	��150��$��50��.���� $
��Exit��
���OO/�$	��150��$��50������ *ExitCommand+  ExitViewModel# [ ���� $- '\Resources\icons8_close_window_52px.png����  �� Orientation$ 
Horizontal=�.+��� $��Center=�$��16 0 0 0q�$��Notifycation��$��25(��� $	��960��$	��600��$��1q�
������� �� CornerRadius$ 20�� �� Padding$ 10q�$��0,90,0,0q�._��� $y�Visible=�.���� .+��� 	 �� Padding$	 10q�$ ��Notifycation's Information��$��18(�� 
 � ColumnDefinitions
 �� $	��110 ��� .+��� $	 
8 10 10 10q�$��ID Notifycation���� $��0 10 0 0q�{�.  $��1������ *OpenNotifycation.IdNotify+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�� 
 �� $	��110 ��� .+��� $	 
8 10 10 10q�$��Header���� $��0 10 0 0q�$��1��{�.  ���� *OpenNotifycation.Header+$ TwoWay=�� 
 �� $	��110 ��� .+��� $	 
8 10 10 10q�$
��Date��(  "System.Windows.Controls.DatePicker  $��0 10 0 0q�{�.  $��1��$	��200��$
��Left=�   SelectedDate �� *OpenNotifycation.DateNotify+$ TwoWay=�$ PropertyChanged=�� 
 �� $	��110 ��� $
��691* ��� $	��91* �.+��� $	 
8 10 10 10q�$��Content���� $��	10 10 0 0q�$	��830��$	��360��$
��Left=�" �� VerticalScrollBarVisibility$ Visible=�$��1��$��	10,10,0,0q� ! MaterialDesignOutlinedTextBox#��[ $��2��
������� �� TextWrapping$
 Wrap=� �� AcceptsReturn . {�.  ���� *OpenNotifycation.Content+$ TwoWay=�$ PropertyChanged=�� $	��100��$��0,0,0,0q�
 �� �� .+��� $��	20,0,20,0q�$��0��$��2��$
��Back�����	#FFED6E93���� *EducationFrame+