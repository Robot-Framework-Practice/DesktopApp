   M S B A M L   `   `   `  ���� D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Đồ_án.ViewĐồ_án.View  1clr-namespace:Đồ_án.ModelĐồ_án.Model  9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel      Đồ_án.View.Profile   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     .localclr-namespace:Đồ_án.View     /Modelclr-namespace:Đồ_án.Model     7	ViewModel!clr-namespace:Đồ_án.ViewModel     _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes     InformationViewModel  � DataContext#  �    N� Title$ Profile��.��� 
�������.+��  � RowDefinitions �� �� $��50 ��� $��2* �.+�� $��0�����	#FF2FB1AC$��0,0,0,31q� � ColumnDefinitions �� $	��910 ��� .+�� $��1��$��90��$	��Top=�.+�'  !MaterialDesignThemes.Wpf.PopupBox  $��Right=�   PlacementMode$ BottomAndAlignRightEdges=�
�������$��20(�   PopupContent. �� 
�������.@��� $	��150��$��50��.���� $��Logout��
���OO/�$	��150��$��50������ *	ShowLogin+����  �� ImageSource$- '\Resources\icons8_close_window_52px.png��  (   "Đồ_án.ViewModel.LoginViewModel  �� $	��150��$��50��.���� $
��Exit��
���OO/�$	��150��$��50������ *ExitCommand+  ExitViewModel �� Source# [ �� .���� $��Remove Avatar��
���OO/����� *RemoveAvatar+�� $��0��$��1q� �� CornerRadius$	 100�����	#FFC4C4DD$��Center=�$	��168��$	��168��}�.  $��
0 50 0 -50q�._��� -   	 ��Name$	 btnImage��$	��168��
������ $��0q�
 � ToolTip$
 UpLoad Your Avatar��$	��168������ *ChangeAvatar+����  �� 
TargetType" ��.R�� .+�A� $	��168��$	��168��
�������$��2������  j� 
AlignmentX$ Center=� j� 
AlignmentY$ Center=� j� Stretch$ Uniform=� �� *Avatar+ �� UpdateSourceTrigger$ PropertyChanged=�  DefaultUserAvatar �� TargetNullValue# [ ����  �� 
TargetType" A� �� Triggers ��  �� Binding ��  �� Path$ IsMouseOver� �� RelativeSource ��  �� AncestorType" �� �� Value True.a���  �� Property �@J�Opacity �� Value$	 0.5Q�'  !MaterialDesignThemes.Wpf.PackIcon  $��40��$��40��$��Center=�$��Center=�   Kind$ Camera=����� "  .���  �@J�Opacity$ 0Q� ��  �� $ IsMouseOver� �� " �� True.a���  �@J�Opacity$ 1Q�� $��2�� � 	Resources ��%I   '��       �� " ��.���  � ��$ 20(���  � ��$ DemiBold"� �� �� $	��400 ��� .+��� $��1��.+��  �� $	��160 ��� .+���  �� Padding$
 0 10q�$��	Full Name���� $
��0 15q�$��1��{�.  $��15(�$��DemiBold"����� *!CurrentUser.DetailUser.FullName+$ PropertyChanged=��  �� $	��160 ��� .+��� $
 0 10q�$��ID user���� $
��0 15q�$��1��{�.  $��15(�$��DemiBold"����� *CurrentUser.IdUser+$ PropertyChanged=��  �� $	��160 ��� .+��� $
 0 10q�$��Gender ���� $
��0 15q�$��1��{�.  $��15(�$��DemiBold"����� *Gender+ �� Mode$ OneWay=�$ PropertyChanged=��  �� $	��160 ��� .+��� $
 0 10q�$��Date Of Birth���� $��0 15 0 0q�$��1��{�.  $��15(�$��DemiBold"����� *$"CurrentUser.DetailUser.DateOfBirth+$ PropertyChanged=��  �� $	��160 ��� .+��� $
 0 10q�$��Birth Place���� $��0 15 0 0q�$��1��{�.  $��15(�$��DemiBold"����� *#!CurrentUser.DetailUser.BirthPlace+$ PropertyChanged=��  �� $	��160 ��� .+��� $
 0 10q�$��Email���� $��0 15 0 0q�$��1��{�.  $��15(�$��DemiBold"����� *CurrentUser.Email+$ PropertyChanged=��  �� $	��160 ��� .+��� $
 0 10q�$��Phone number���� $
��0 15q�$��1��{�.  $��15(�$��DemiBold"����� *$"CurrentUser.DetailUser.PhoneNumber+$ PropertyChanged=�