   M S B A M L   `   `   `  ���� D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Đồ_án.ViewĐồ_án.View  9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  M+clr-namespace:Đồ_án.ViewModel.DashBroadĐồ_án.ViewModel.DashBroad      Đồ_án.View.Class   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  (localclr-namespace:Đồ_án.View  1	ViewModel!clr-namespace:Đồ_án.ViewModel  4VM+clr-namespace:Đồ_án.ViewModel.DashBroad    N� Title$  Class��.��� 
�������.+��  � RowDefinitions �� $
��auto ��� $
��auto �.+�(  "MaterialDesignThemes.Wpf.ColorZone  $	��970��$��90��   Mode$ Inverted=�$��16q�
���OO/�.��]� .+�'  !MaterialDesignThemes.Wpf.PopupBox  $��Right=�   PlacementMode$ BottomAndAlignRightEdges=�
�������$��20(�   PopupContent. �� 
�������.@��� $	��150��$��50��.���� $��Logout��
���OO/�$	��150��$��50��   LoginViewModel � DataContext# [  ���� *	ShowLogin+����  �� ImageSource$+ %\Resources\icons8_customer_30px_1.png���� $	��150��$��50��.���� $
��Exit��
���OO/�$	��150��$��50������ *ExitCommand+  ExitViewModel �� Source# [ ���� $- '\Resources\icons8_close_window_52px.png����  �� Orientation$ 
Horizontal=�.+��� $+��%\Resources\icons8_customer_30px_1.png���� $��Center=�$��16 0 0 0q�$��Detail Information��$��25(��� 	 �� Padding$	 20q�
�������$��1q�
 �� CornerRadius$
 10��$��10,100,10,10q�._��� $	��537��.���� .+���  �� Padding$ 10q�$��Information��$��18(��  � ColumnDefinitions �� $	��110 ��� .+��� $ 
8 10 10 10q�$
��Name���� $��0 10 0 0q�$��1��$��0,0,10,0q����� *DetailStudent.FullName+�  �� $	��110 ��� $	��500 ��� $	��110 ��� .+��� $ 
8 10 10 10q�$
��MSSV���� $��0 10 0 0q�$��1��$��0,0,34,0q����� *	IdStudent+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� $��2��$��0,20,0,0q�$��Default PassWord���� $��0 10 0 0q�$��3��$��	0,10,10,0q����� *DefaultPassWord+$ TwoWay=�$ PropertyChanged=��  �� $	��110 ��� $
��201* ��� $
��459* ��� $
��122* �.+��� $ 
8 10 10 10q�$��Gmail���� $��0 10 0 0q�$��1��$��0,0,10,0q�$��3������ *Gmail+$ TwoWay=�$ PropertyChanged=��  �� $	��110 ��� $
��201* ��� $
��459* ��� $
��122* �.+��� $ 
8 10 10 10q�$��Gender���� {�.  $��0 10 0 0q�$��1��$��0,0,10,0q�$��3������ *DetailStudent.Gender+�  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Date of birth���� $��12(�$��1��$��0,0,10,0q�$��0 10 0 0q����� *DetailStudent.DateOfBirth+�  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Birth place���� $��0 10 0 0q�$��1��$��0,0,10,0q����� *DetailStudent.BirthPlace+�  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Identify Number���� $��0 10 0 0q�$��1��$��0,0,10,0q����� *DetailStudent.CCCD+�  �� �� �� .+�� $��0�� �� �� .+��� $��Center=�$ 
8 10 10 10q�$��Place issue ID���� $��1��$	��100������ *DetailStudent.PLACE_CCCD+� $��1�� �� �� .+��� $��Center=�$ 
8 10 10 10q�$��Phone number���� $��1��$	��100������ *DetailStudent.PhoneNumber+� $��2�� �� �� .+��� $��Center=�$ 
8 10 10 10q�$��Ethnic���� $��1��$	��100������ *DetailStudent.Ethnic+�� $ 10q�$��Family information��$��18(��  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Father's name���� $��0 10 0 0q�$��1��$��0,0,10,0q����� *Father.FullName+�  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Oppcupation���� $��0 10 0 0q�$��1��$��0,0,10,0q����� *Father.Occupation+�  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Date of birth���� $��0 10 0 0q�$��12(�$��1��$��0,0,10,0q����� *Father.DateOfBirth+�  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Country���� $��0 10 0 0q�$��1��$��0,0,10,0q����� *Father.Country+�  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Identify Number���� $��0 10 0 0q�$��1��$��0,0,10,0q����� *Father.CCCD+�  �� �� �� .+�� $��0�� �� �� .+��� $��Center=�$ 
8 10 10 10q�$��Address���� $��1��$	��100��$��0,0,10,0q����� *Father.Address+� $��1�� �� �� .+��� $��Center=�$ 
8 10 10 10q�$��Phone number���� $��1��$	��100��$��0,0,10,0q����� *Father.PhoneNumber+� $��2�� �� �� .+��� $��Center=�$ 
8 10 10 10q�$��Ethnic���� $��1��$	��100��$��0,0,10,0q����� *Father.Ethnic+�  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Mother's name���� $��0 10 0 0q�$��1��$��0,0,10,0q����� *Mother.NAME+�  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Oppcupation���� $��0 10 0 0q�$��1��$��0,0,10,0q����� *Mother.Occupation+�  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Date of birth���� $��0 10 0 0q�$��12(�$��1��$��0,0,10,0q����� *Mother.DateOfBirth+�  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Country���� $��0 10 0 0q�$��1��$��0,0,10,0q����� *Mother.Country+�  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Identify Number���� $��0 10 0 0q�$��1��$��0,0,10,0q����� *Mother.CCCD+�  �� �� �� .+�� $��0�� �� �� .+��� $��Center=�$ 
8 10 10 10q�$��Address���� $��1��$	��100��$��0,0,10,0q����� *Mother.Address+� $��1�� �� �� .+��� $��Center=�$ 
8 10 10 10q�$��Phone number���� $��1��$	��100������ *Mother.PhoneNumber+� $��2�� �� �� .+��� $��Center=�$ 
8 10 10 10q�$��Ethnic���� $��1��$	��100������ *Mother.Ethnic+�� $ 10q�$��More information��$��18(��  �� $	��130 ��� .+��� $ 
8 10 10 10q�$��Secondary school���� $��0 10 0 0q�$��1������ *DetailStudent.SecondarySchool+�  �� $	��130 ��� .+��� $ 
8 10 10 10q�$��Health Insurance ID���� $��0 10 0 0q�$��1������ *!DetailStudent.HealthInsuranceID+�  �� $	��130 ��� .+��� $ 
8 10 10 10q�$��Achievement���� $��0 10 0 0q�$��1������ *#!DetailStudent.AcademicAchievement+�  �� �� �� .+�� $��0�� �� �� .+��� $��Center=�$ 
8 10 10 10q�$��FacultyCode���� $��1��$	��100������ *DetailStudent.FacultyCode+� $��1�� �� �� .+��� $��Center=�$ 
8 10 10 10q�$��FacultyName���� $��1��$	��100������ *DetailStudent.FacultyName+� $��2�� �� �� .+��� $��Center=�$ 
8 10 10 10q�$��Majors���� $��1��$	��100������ *DetailStudent.Majors+� $	��100�� �� �� .+��� $��	20,0,20,0q�$��0��$��Confirm������ *
AddCommand+�� $��	20,0,20,0q�$��1��$��Cancel�����	#FFED6E93���� *MainClassCommand+ ,   &Đồ_án.ViewModel.MainClassViewModel  