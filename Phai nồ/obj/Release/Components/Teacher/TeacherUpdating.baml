   M S B A M L   `   `   `  ���� D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Đồ_án.ComponentsĐồ_án.Components  ]3clr-namespace:Đồ_án.ViewModel.DashBroad.Teacher%Đồ_án.ViewModel.DashBroad.Teacher  *    $Đồ_án.Components.TeacherUpdating   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     4local"clr-namespace:Đồ_án.Components     BVM3clr-namespace:Đồ_án.ViewModel.DashBroad.Teacher        TeacherViewModel  � DataContext#  [  .��� 
�������.+��� $	��780��$	��430��$��1q�
������� �� CornerRadius$ 20�� �� Padding$ 10,0,0,0q�$��0,10,0,0q�._��� $	��430��.���� .+���  �� Padding$ 10q�$��Teacher's Information��$��18(��  � ColumnDefinitions �� $	��110 ��� .+��� $ 
8 10 10 10q�$��ID���� $��0 10 0 0q�{�.  $��1������ *UpdateTeacher.IdUser+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��  �� $	��110 ��� $
��691* ��� $	��91* �.+��� $ 
8 10 10 10q�$
��Name���� $��0 10 0 0q�$��1��$��2������ *#!UpdateTeacher.DetailUser.FullName+$ TwoWay=�$ PropertyChanged=��  �� $��58.948 ��� $��51.052 ��� $	��67* ��� $
��575* �.+��� $ 
8 10 10 10q�$��Gmail��$��2���� $��0 10 0 0q�$��2��$��2������ *UpdateTeacher.Email+$ TwoWay=�$ PropertyChanged=��  �� $	��110 ��� .+��� $ 
8 10 10 10q�$
��CCCD���� $��0 10 0 0q�$��1������ *UpdateTeacher.DetailUser.CCCD+$ TwoWay=�$ PropertyChanged=��  �� $	��110 ��� $
��691* ��� $	��91* �.+��� $ 
8 10 10 10q�$��Place issue ID���� $��0 10 0 0q�$��1��$��2������ *%#UpdateTeacher.DetailUser.PLACE_CCCD+$ TwoWay=�$ PropertyChanged=��  �� $	��110 ��� $
��691* ��� $	��91* �.+��� $ 
8 10 10 10q�$��Ethnic���� $��0 10 0 0q�$��1��$��2������ *!UpdateTeacher.DetailUser.Ethnic+$ TwoWay=�$ PropertyChanged=��  �� $	��110 ��� $
��691* ��� $	��91* �.+��� $ 
8 10 10 10q�$��Date of birth���� $��0 10 0 0q�$��1��$��2������ *&$UpdateTeacher.DetailUser.DateOfBirth+$ TwoWay=�$ PropertyChanged=��  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Birth place���� $��0 10 0 0q�$��1������ *%#UpdateTeacher.DetailUser.BirthPlace+$ TwoWay=�$ PropertyChanged=��  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Phone Number���� $��0 10 0 0q�$��1������ *&$UpdateTeacher.DetailUser.PhoneNumber+$ TwoWay=�$ PropertyChanged=��  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Address���� $��0 10 0 0q�$��1������ *" UpdateTeacher.DetailUser.Address+$ TwoWay=�$ PropertyChanged=��  �� $	��150 ��� .+��� $ 
8 10 10 10q�$��New PassWord (Optional)���� $��0 10 0 0q�$��1������ *UpdatePassWord+$ TwoWay=�$ PropertyChanged=�� $	��100��$��0,50,0,0q� �� �� .+��� $��	20,0,20,0q�$��0��$��Update������ *UpdateInformation+�� $��	20,0,20,0q�$��1��$��Cancel�����	#FFED6E93���� *TeacherFrame+