   M S B A M L   `   `   `  ���� D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:Đồ_án.ViewModel.DashBroadĐồ_án.ViewModel.DashBroad  9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  M+clr-namespace:Đồ_án.ViewModel.DashBroadĐồ_án.ViewModel.DashBroad  &     Đồ_án.Components.ClassDetail   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     =local+clr-namespace:Đồ_án.ViewModel.DashBroad     7	viewmodel!clr-namespace:Đồ_án.ViewModel     A	dashbroad+clr-namespace:Đồ_án.ViewModel.DashBroad     .��� 
�������.+���   �� Padding$  20q�
�������$��1q� �� CornerRadius$ 10��$��10,10,10,10q�._��� .���� .+��  � ColumnDefinitions �� $
��0.3* ��� .+��� $��0��$+��%\Resources\icons8_male_user_100px.png��� $��1�� � 	Resources  �� 
TargetType �� Property �� Value��%c   '��       �� " ��.���  � ��$ DemiBold"���  � ��$ 15(���  � ��$ Center=� � RowDefinitions �� �� .+��� $��20(�$��	10 10 0 0q����� *#!SelectedDetailStudent.DisplayName+.���� $	��Top=� �� Padding$ 10 5 0 0q�$��1������ *SelectedDetailStudent.IdUser+�  �� $	��130 ��� .+��� $ 
8 10 10 10q�$��PassWord (Optional)���� $��0 10 0 0q�$��1������ *UpdatePassWord+	 �� Mode$	 TwoWay=�
 �� UpdateSourceTrigger$
 PropertyChanged=��  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Gmail���� $��0 10 0 0q�$��1������ *SelectedDetailStudent.Email+�  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Gender���� $��0 10 0 0q�$��1������ *)'SelectedDetailStudent.DetailUser.Gender+�  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Date of birth���� $��0 10 0 0q�$��1������ *.,SelectedDetailStudent.DetailUser.DateOfBirth+.���  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Birth place���� $��0 10 0 0q�$��1������ *-+SelectedDetailStudent.DetailUser.BirthPlace+.���  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Identify Number���� $��0 10 0 0q�$��1������ *'%SelectedDetailStudent.DetailUser.CCCD+.���  �� �� �� .+�� $��0�� �� �� .+��� $
��Left=�$ 
8 10 10 10q�$��Place issue ID���� $��0 10 0 0q�$��1��$	��100������ *-+SelectedDetailStudent.DetailUser.PLACE_CCCD+.��� $��1�� �� �� .+��� $
��Left=�$ 
8 10 10 10q�$��Phone number���� $��0 10 0 0q�$��1��$	��100������ *.,SelectedDetailStudent.DetailUser.PhoneNumber+.��� $��2�� �� �� .+��� $
��Left=�$ 
8 10 10 10q�$��Ethnic���� $��0 10 0 0q�$��1��$	��100������ *)'SelectedDetailStudent.DetailUser.Ethnic+.���� $ 10q�$��Family information��$��18(��  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Father's name���� $��0 10 0 0q�$��1������ *SelectedFather.FullName+.���  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Oppcupation���� $��0 10 0 0q�$��1������ *SelectedFather.Oppcupation+.���  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Date of birth���� $��0 10 0 0q�$��1������ *SelectedFather.DateOfBirth+.���  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Country���� $��0 10 0 0q�$��1������ *SelectedFather.Country+.���  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Identify Number���� $��0 10 0 0q�$��1������ *SelectedFather.CCCD+.���  �� �� �� .+�� $��0�� �� �� .+��� $
��Left=�$ 
8 10 10 10q�$��Place issue ID���� $��0 10 0 0q�$��1��$	��100������ *SelectedFather.Address+.��� $��1�� �� �� .+��� $
��Left=�$ 
8 10 10 10q�$��Phone number���� $��0 10 0 0q�$��1��$	��100������ *SelectedFather.PhoneNumber+.��� $��2�� �� �� .+��� $
��Left=�$ 
8 10 10 10q�$��Ethnic���� $��0 10 0 0q�$��1��$	��100������ *SelectedFather.Ethnic+.���  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Mother's name���� $��0 10 0 0q�$��1������ *SelectedMother.FullName+.���  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Oppcupation���� $��0 10 0 0q�$��1������ *SelectedMother.Occupation+.���  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Date of birth���� $��0 10 0 0q�$��1������ *SelectedMother.DateOfBirth+.���  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Country���� $��0 10 0 0q�$��1������ *SelectedMother.Country+.���  �� $	��110 ��� .+��� $ 
8 10 10 10q�$��Identify Number���� $��0 10 0 0q�$��1������ *SelectedMother.CCCD+.���  �� �� �� .+�� $��0�� �� �� .+��� $
��Left=�$ 
8 10 10 10q�$��Place issue ID���� $��0 10 0 0q�$��1��$	��100������ *SelectedMother.Address+.��� $��1�� �� �� .+��� $
��Left=�$ 
8 10 10 10q�$��Phone number���� $��0 10 0 0q�$��1��$	��100������ *SelectedMother.PhoneNumber+.��� $��2�� �� �� .+��� $
��Left=�$ 
8 10 10 10q�$��Ethnic���� $��0 10 0 0q�$��1��$	��100������ *SelectedMother.Ethnic+.���� $ 10q�$��More information��$��18(��  �� $	��130 ��� .+��� $ 
8 10 10 10q�$��Secondary school���� $��0 10 0 0q�$��1������ *20SelectedDetailStudent.DetailUser.SecondarySchool+.���  �� $	��130 ��� .+��� $ 
8 10 10 10q�$��Health Insurance ID���� $��0 10 0 0q�$��1������ *42SelectedDetailStudent.DetailUser.HealthInsuranceID+.���  �� $	��130 ��� .+��� $ 
8 10 10 10q�$��Achievement���� $��0 10 0 0q�$��1������ *64SelectedDetailStudent.DetailUser.AcademicAchievement+.���  �� �� �� .+�� $��0�� �� �� .+��� $
��Left=�$ 
8 10 10 10q�$��FacultyCode���� $��0 10 0 0q�$��1��$	��100������ *.,SelectedDetailStudent.DetailUser.FacultyCode+.��� $��1�� �� �� .+��� $
��Left=�$ 
8 10 10 10q�$��FacultyName���� $��0 10 0 0q�$��1��$	��100������ *.,SelectedDetailStudent.DetailUser.FacultyName+.��� $��2�� �� �� .+��� $
��Left=�$ 
8 10 10 10q�$��Majors���� $��0 10 0 0q�$��1��$	��100������ *)'SelectedDetailStudent.DetailUser.Majors+.��� $	��100��.+��� $	��200��$��	20,0,20,0q�$��Update������ *UpdateCommand+