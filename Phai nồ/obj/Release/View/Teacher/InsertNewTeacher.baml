   M S B A M L   `   `   `  ���� D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Đồ_án.ViewĐồ_án.View  9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  ]3clr-namespace:Đồ_án.ViewModel.DashBroad.Teacher%Đồ_án.ViewModel.DashBroad.Teacher  M+clr-namespace:Đồ_án.ViewModel.DashBroadĐồ_án.ViewModel.DashBroad  %    Đồ_án.View.InsertNewTeacher   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  (localclr-namespace:Đồ_án.View  1	ViewModel!clr-namespace:Đồ_án.ViewModel  <VM3clr-namespace:Đồ_án.ViewModel.DashBroad.Teacher  =vmdashboard+clr-namespace:Đồ_án.ViewModel.DashBroad     TeacherViewModel  � DataContext#  [  .��� 
�������.+��  � RowDefinitions �� $
��auto ��� $
��auto �.+���  �� Padding$ 20q�
�������$��1q� �� CornerRadius$ 10��$��10,100,10,10q�._��� $	��537��.���� .+���  �� Padding$ 10q�$��Teacher's Information��$��18(��  � ColumnDefinitions �� $	��110 ��� .+��� $ 
8 10 10 10q�$
��Name���� $��0 10 0 0q�$��1������ *NewDetailTeacher.FullName+ �� Mode$ TwoWay=��  �� $	��110 ��� $	��400 ��� .+��� $ 
8 10 10 10q�$��ID���� $��0 10 0 0q�$��1��$	��350��$
��Left=����� *	IdTeacher+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�� $��2�� �� $	��110 ��� .+��� $  8 10 10 10q�$��Default PassWord���� $��0 10 0 0q�$��1������ *DefaultPassWord+$ TwoWay=�$ PropertyChanged=��  �� $	��110 ��� $
��691* ��� $	��91* �.+��� $ 
8 10 10 10q�$
��CCCD���� $��0 10 0 0q�$��1��$��2������ *NewDetailTeacher.CCCD+$ TwoWay=�$ PropertyChanged=��  �� $	��110 ��� $
��691* ��� $	��91* �.+��� $ 
8 10 10 10q�$��Place issue ID���� $��0 10 0 0q�$��1��$��2������ *NewDetailTeacher.PLACE_CCCD+$ TwoWay=�$ PropertyChanged=��  �� $	��110 ��� $
��691* ��� $	��91* �.+��� $ 
8 10 10 10q�$��Ethnic���� $��0 10 0 0q�$��1��$��2������ *NewDetailTeacher.Ethnic+$ TwoWay=�$ PropertyChanged=��  �� $	��110 ��� $
��691* ��� $	��91* �.+��� $ 
8 10 10 10q�$��Date of birth���� $��0 10 0 0q�$��1��$��2������ *NewDetailTeacher.DateOfBirth+$ TwoWay=��  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Birth place���� $��0 10 0 0q�$��1������ *NewDetailTeacher.BirthPlace+$ TwoWay=��  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Phone Number���� $��0 10 0 0q�$��1������ *NewDetailTeacher.PhoneNumber+�  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Address���� $��0 10 0 0q�$��1������ *NewDetailTeacher.Address+� $	��100��$��0,50,0,0q� �� �� .+��� $��	20,0,20,0q�$��0��$��Confirm������ *
AddTeacher+�� $��	20,0,20,0q�$��1��$��Cancel�����	#FFED6E93���� *TeacherFrame+