   M S B A M L   `   `   `  ���� D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Đồ_án.ComponentsĐồ_án.Components  !    Đồ_án.Components.Result   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  .local"clr-namespace:Đồ_án.Components     ResultViewModel  � DataContext#  �    � 	Resources  �� MergedDictionaries �� Source��  �� $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.DataGrid.xaml?�%    .���� 
�������$��0,20,0,0q�.+��� $��Center=�
������$��Right=� �� Orientation$ 
Horizontal=�y��� *IsRoleAdmin+  LoginViewModel �� Source# [   �� 
TargetType �� Property �� Value��%-   '��       �� " ��.���  � ��$ 20(�.+��� $
��10,0q�$��	Teacher: ��$��Center=�d� 	 d� 	IsChecked	 �� *	IsChecked+�� $
��10,0q�$��	student: ��$��Center=��� $
��10,0q�$��IdUser: ��$��Center=��� $
��10,0q�
�������$��20(�)  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 	Choose ID������ *	ListUsers+ �� SelectedItem �� *SelectedUser+�� $	��500��$
��Auto=�$
��Auto=�y��� *IsSV+ �� UpdateSourceTrigger$ PropertyChanged=�.����  � IsSharedSizeScope .  $��20(�
�����p����� *StudentResultDisplays+$ PropertyChanged=����� .R��� 
�������$��Center=�.+��� 
���OO/� �� CornerRadius$ 35�� �� Padding$ 50,20q�$��Center=�$��Center=�._��� $��20(�
�������$
��Bold"����� *	HK_Year+� $	��800��
���  ��$��	0,10,0,20q� � ColumnDefinitions �� $��1* ��� $��2* ��� $��1* ��� $��1* ��� $��1* ��� $��1* ��� $��1* ��� $��1* �.+��� 
����� �$��0��
�����p�$
��MaMH���� $��1��$	��Lop���� $��2��$��TC���� $��3��$��QT���� $��4��$��GK���� $��5��$��TH���� $��6��$��CK���� $��7��$��TB���� $	��300��
������$
��Auto=�$
��Auto=�.����  .  $��20(�$
��10,0q����� *List+���� .R��  �� $��1* ��� $��2* ��� $��1* ��� $��1* ��� $��1* ��� $��1* ��� $��1* ��� $��1* �.+��� $��0������ *MaMH+�� $��1������ *MaLop+�� $��2������ *TC+�� $��3������ *QT+�� $��4������ *GK+�� $��5������ *TH+�� $��6������ *CK+�� $��7������ *TB+ �� StringFormat$ F���� $ 50,20q�$��Center=�$��Center=�$��	580,0,0,0q�._��� $ 
Horizontal=�.+��� $��TB HK: �� �� TextAlignment$ Center=�$��20(�
���OO/�$
��Bold"��� $ Center=�$��20(�
���  ��$
��Bold"����� *TB_HK+$ F���� y��� *IsGV+$ PropertyChanged=�.+��� $	��500��$��Save Changes������ *SaveUpdated+�� $	��500��$
��Auto=�$
��Auto=�.���� $��20(�
���OO/����� *TeacherResultDisplays+���� .R��� $
��auto��
�������$��Center=�.+��� 
���OO/�$ 35��$ 50,20q�$��Center=�$��Center=�._��� $��20(�
�������$
��Bold"����� *	HK_Year+�� $��20(����� *List+���� .R��� 
����ح�$ 20,10q�$��50,20q�$��Center=�$��Center=�._��� .+�]� .+��� $��Class: ��$ Center=�$��20(�
���OO/�$
��Bold"��� $ Center=�$��20(�
���  ��$
��Bold"����� *MaLop+�� $ Center=�$��20(�
����  �$��Right=�$
��Bold"����� *HeSo+&   System.Windows.Controls.DataGrid     AutoGenerateColumns .     CanUserDeleteRows .     CanUserAddRows .  $	��300����. $
��Auto=�$
��Auto=����� *List+   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$
 MaSV��   Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *MaSV+  $ HoTen��$
 Auto  �� *HoTen+  $ QT��$
 auto  �� *QT+  $ GK��$
 auto  �� *GK+  $ TH��$
 auto  �� *TH+  $ CK��$
 auto  �� *CK+  $ TB��$
 auto    
IsReadOnly .  �� *TB+�� $ 50,20q�$��Center=�$��Center=�$��	580,0,0,0q�._��� $ 
Horizontal=�.+��� $��TB Lop: ��$ Center=�$��20(�
���OO/�$
��Bold"��� $ Center=�$��20(�
���  ��$
��Bold"����� *TB_Lop+$ F��