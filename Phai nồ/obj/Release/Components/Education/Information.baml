   M S B A M L   `   `   `  ���� D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  ;"clr-namespace:Đồ_án.ComponentsĐồ_án.Components  &     Đồ_án.Components.Information   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     7	viewmodel!clr-namespace:Đồ_án.ViewModel     4local"clr-namespace:Đồ_án.Components        ProfileViewModel  � DataContext#  [   � 	Resources  �� 
TargetType �� Property �� Value��%�   '��       '9� =     �� " ��.���  � ��$ 25(���  � ��$ Normal$��� " 9�.���  � ��$ Profile����  � ��$
 Bold"�.��� 
�������.+��� $��Right=�$	��520��$	��900��$��Bottom=�$��Visible=�.���� $��Bottom=�$
��1500��$	��950��$��0,0,0,20q�.+�� $��0,10,0,0q�y��� *IsRoleAdmin+  LoginViewModel �� Source# [  � ColumnDefinitions �� $	��250 ��� $	��220 ��� .+��� $��0��$��Enter ID Student: ��$��	30,10,0,0q��� -    ��Name$ TextBoxEnterID��$��1��$	��200��$
��Left=�$��Bottom=�$��20(� �� TextAlignment$
 Left=����� *FindID+	 �� Mode$	 TwoWay=�
 �� UpdateSourceTrigger$
 PropertyChanged=��� $��2��$
��Find��$��90��$��	0,0,390,0q�
���OO/�$��Bottom=����� *FindCommand+���� 9� $��Information ��$��30(�$��0,30,0,0q� 9� 
IsExpanded . {�. .��� {�.  $��0,10,0,0q� ��%1   '��       �� " ��.���  � ��$ Normal"� �� $	��250 ��� $	��375 ���  � RowDefinitions �� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 �.+��� $��Name:��$��Center=�$��0��$��0��$��20(� �� Padding$ 30,0,0,0q�$
��Left=�$��0,0,0,29q�$��2��$��87���� -   $ TextBoxName��$��Normal"�$��Bottom=�$��0��$��1��$��15(�$��	0,0,200,0q�$	��200������ *Student.DetailUser.FullName+$	 TwoWay=�$
 PropertyChanged=��� $��Gender:��$��Center=�$��0��$��1��$��20(�$ 30,0,0,0q�$
��Left=�$��0,0,0,29q�$��2��$��99���� -   $ TextBoxGender��$��Normal"�$��Bottom=�$��1��$��1��$��15(�$��	0,0,200,0q�$	��200������ *Gender+$	 TwoWay=�$
 PropertyChanged=��� $��Date Of Birth��$��Center=�$��0��$��2��$��20(�$ 30,0,0,0q�$
��Left=�$��0,0,0,29q�$��2��$	��165���� -   $ TextBoxDateOfBirth��$��Normal"�$��Bottom=�$��2��$��1��$��15(�$��	0,0,200,0q�$	��200������ * Student.DetailUser.DateOfBirth+$	 TwoWay=�$
 PropertyChanged=��� $��
BirthPlace��$��Center=�$��0��$��3��$��20(�$ 30,0,0,0q�$
��Left=�$��0,0,0,28q�$��2��$	��145���� $��Normal"�$��Bottom=�$��3��$��1��$��15(�$��	0,0,200,0q�$��35��$	��200������ *Student.DetailUser.BirthPlace+$	 TwoWay=�$
 PropertyChanged=��� $��Identify Number��$��Center=�$��0��$��4��$��20(�$ 30,0,0,0q�$
��Left=�$��0,8,0,2q�$	��245���� -   $ 	TextBoxID��$��Normal"�$��Bottom=�$��4��$��1��$��15(�$��	0,0,200,0q�$	��200������ *Student.DetailUser.CCCD+$	 TwoWay=�$
 PropertyChanged=��� $��0��$��7��$��Place issue ID��$��20(�$ 50,0,0,0q�$
��Left=�$	��200���� -   $ TextBoxPlaceIssueID��$��Normal"�$��8��$��0��$��15(�$��20,0,0,0q�$	��250��$��Bottom=����� *Student.DetailUser.PLACE_CCCD+$	 TwoWay=�$
 PropertyChanged=��� $��1��$��7��$��Phone Number��$��20(�$��80,0,0,0q�$
��Left=�$	��164���� -   $ TextBoxPhoneNumber��$��Normal"�$��8��$��1��$��15(�$��0,0,20,0q�$	��250��$��Bottom=����� * Student.DetailUser.PhoneNumber+$	 TwoWay=�$
 PropertyChanged=��� $��2��$��7��$��Ethnic��$��20(�$ 30,0,0,0q�$
��Left=�$	��164���� -   $ TextBoxEthnic��$��Normal"�$��8��$��2��$��15(�$��	0,0,110,0q�$��Bottom=�$	��200������ *Student.DetailUser.Ethnic+$	 TwoWay=�$
 PropertyChanged=�9� $��Information about Family��$��30(�$��0,20,0,0q�{�.   �� *
IsExpanded+$	 OneWay=�$
 PropertyChanged=�y��� *IsSV+$
 PropertyChanged=�.��� {�.  $��0,10,0,0q� ��%1   '��       �� " ��.���  � ��$ Normal"� �� $	��250 ��� $	��375 ���  �� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 �.+��� $��DemiBold"�$��1. Father Information��$��0��$��0��$��20(�$��30,0,0,0q��� $��Name:��$��Center=�$��0��$��1��$��20(�$ 30,0,0,0q�$
��Left=�$��0,0,0,29q�$��2��$��87���� -	   $ IIFTextBoxName��$��Normal"�$��Bottom=�$��1��$��1��$��15(�$��	0,0,200,0q�$	��200������ *Father.FullName+$	 TwoWay=�$
 PropertyChanged=��� $��Occupation:��$��Center=�$��0��$��2��$��20(�$ 30,0,0,0q�$
��Left=�$��0,0,0,29q�$��2��$	��150���� -
   $ IIFTextBoxOccupation��$��Normal"�$��Bottom=�$��2��$��1��$��15(�$��	0,0,200,0q�$	��200������ *Father.Occupation+$	 TwoWay=�$
 PropertyChanged=��� $��Date Of Birth��$��Center=�$��0��$��3��$��20(�$ 30,0,0,0q�$
��Left=�$��0,0,0,29q�$��2��$	��165���� -   $ IIFTextBoxDateOfBirth��$��Normal"�$��Bottom=�$��3��$��1��$��15(�$��	0,0,200,0q�$	��200������ *Father.DateOfBirth+$	 TwoWay=�$
 PropertyChanged=��� $��Country��$��Center=�$��0��$��4��$��20(�$ 30,0,0,0q�$
��Left=�$��0,0,0,28q�$��2��$	��145���� -   $ IIFComboBoxCountry��$��Normal"�$��Bottom=�$��4��$��1��$��15(�$��	0,0,200,0q�$��35��$	��200������ *Father.Country+$	 TwoWay=�$
 PropertyChanged=�.���� $��Identify Number��$��Center=�$��0��$��5��$��20(�$ 30,0,0,0q�$
��Left=�$��0,8,0,2q�$	��245���� -   $ IIFTextBoxID��$��Normal"�$��Bottom=�$��5��$��1��$��15(�$��	0,0,200,0q�$	��200������ *Father.CCCD+$	 TwoWay=�$
 PropertyChanged=��� $��0��$��7��$��Address��$��20(�$ 50,0,0,0q�$
��Left=�$	��200���� -   $ IIFTextBoxAddress��$��Normal"�$��8��$��0��$��15(�$��20,0,0,0q�$	��250��$��Bottom=����� *Father.Address+$	 TwoWay=�$
 PropertyChanged=��� $��1��$��7��$��Phone Number��$��20(�$��80,0,0,0q�$
��Left=�$	��164���� -   $ IIFTextBoxPhoneNumber��$��Normal"�$��8��$��1��$��15(�$��0,0,20,0q�$	��250��$��Bottom=����� *Father.PhoneNumber+$	 TwoWay=�$
 PropertyChanged=��� $��2��$��7��$��Ethnic��$��20(�$ 30,0,0,0q�$
��Left=�$	��164���� -   $ IIFTextBoxEthnic��$��Normal"�$��8��$��2��$��15(�$��	0,0,110,0q�$��Bottom=�$	��200������ *Father.Ethnic+$	 TwoWay=�$
 PropertyChanged=��� $��DemiBold"�$��2. Mother Information��$��0��$��10��$��20(�$��30,0,0,0q��� $��Name:��$��Center=�$��0��$��11��$��20(�$ 30,0,0,0q�$
��Left=�$��0,0,0,29q�$��2��$��87���� -   $ IIMTextBoxName��$��Normal"�$��Bottom=�$��11��$��1��$��15(�$��	0,0,200,0q�$	��200������ *Mother.FullName+$	 TwoWay=�$
 PropertyChanged=��� $��Occupation:��$��Center=�$��0��$��12��$��20(�$ 30,0,0,0q�$
��Left=�$��0,0,0,29q�$��2��$	��150���� -   $ IIMTextBoxOccupation��$��Normal"�$��Bottom=�$��12��$��1��$��15(�$��	0,0,200,0q�$	��200������ *Mother.Occupation+$	 TwoWay=�$
 PropertyChanged=��� $��Date Of Birth��$��Center=�$��0��$��13��$��20(�$ 30,0,0,0q�$
��Left=�$��0,0,0,29q�$��2��$	��165���� -   $ IIMTextBoxDateOfBirth��$��Normal"�$��Bottom=�$��13��$��1��$��15(�$��	0,0,200,0q�$	��200������ *Mother.DateOfBirth+$	 TwoWay=�$
 PropertyChanged=��� $��Country��$��Center=�$��0��$��14��$��20(�$ 30,0,0,0q�$
��Left=�$��0,0,0,28q�$��2��$	��145���� -   $ IIMComboBoxCountry��$��Normal"�$��Bottom=�$��14��$��1��$��15(�$��	0,0,200,0q�$��35��$	��200������ *Mother.Country+$	 TwoWay=�$
 PropertyChanged=��� $��Identify Number��$��Center=�$��0��$��15��$��20(�$ 30,0,0,0q�$
��Left=�$��0,8,0,2q�$	��245���� -   $ IIMTextBoxID��$��Normal"�$��Bottom=�$��15��$��1��$��15(�$��	0,0,200,0q�$	��200������ *Mother.CCCD+$	 TwoWay=�$
 PropertyChanged=��� $��0��$��17��$��Address��$��20(�$ 50,0,0,0q�$
��Left=�$	��200���� -   $ IIMTextBoxAddress��$��Normal"�$��18��$��0��$��15(�$��20,0,0,0q�$	��250��$��Bottom=����� *Mother.Address+$	 TwoWay=�$
 PropertyChanged=��� $��1��$��17��$��Phone Number��$��20(�$��80,0,0,0q�$
��Left=�$	��164���� -   $ IIMTextBoxPhoneNumber��$��Normal"�$��18��$��1��$��15(�$��0,0,20,0q�$	��250��$��Bottom=����� *Mother.PhoneNumber+$	 TwoWay=�$
 PropertyChanged=��� $��2��$��17��$��Ethnic��$��20(�$ 30,0,0,0q�$
��Left=�$	��164���� -   $ IIMTextBoxEthnic��$��Normal"�$��18��$��2��$��15(�$��	0,0,110,0q�$��Bottom=�$	��200������ *Mother.Ethnic+$	 TwoWay=�$
 PropertyChanged=�9� $��More Information��$��30(�$��0,20,0,0q�{�.   �� *
IsExpanded+$	 OneWay=�$
 PropertyChanged=�y��� *IsSV+$
 PropertyChanged=�.��� {�.  $��0,10,0,0q� ��%1   '��       �� " ��.���  � ��$ Normal"� �� $	��265 ��� $	��375 ���  �� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 ��� $��35 �.+��� $��Secondary School:��$��Bottom=�$��0��$��0��$��20(�$ 30,0,0,0q�$
��Left=�$��0,0,0,1q�$	��250���� -   $ TextBoxSecondarySchool��$��Normal"�$��Bottom=�$��0��$��1��$��15(�$��	0,0,200,0q�$	��200������ *$"Student.DetailUser.SecondarySchool+$	 TwoWay=�$
 PropertyChanged=��� $��Health Insurance ID:��$��Center=�$��0��$��1��$��20(�$ 30,0,0,0q�$
��Left=�$��0,0,0,29q�$��2��$	��250���� -   $ TextBoxHealthInsuranceID��$��Normal"�$��Bottom=�$��1��$��1��$��15(�$��	0,0,200,0q�$	��200������ *&$Student.DetailUser.HealthInsuranceID+$	 TwoWay=�$
 PropertyChanged=��� $��Academic Achievement��$��Center=�$��0��$��2��$��20(�$ 30,0,0,0q�$
��Left=�$��0,0,0,29q�$��2��$	��250���� -   $  TextBoxAcademicAchievement��$��Normal"�$��Bottom=�$��2��$��1��$��15(�$��	0,0,200,0q�$	��200������ *(&Student.DetailUser.AcademicAchievement+$	 TwoWay=�$
 PropertyChanged=��� $��0��$��4��$��Faculty Code��$��20(�$ 50,0,0,0q�$
��Left=�$	��200���� -   $ TextBoxFacultyCode��$��Normal"�$��5��$��0��$��15(�$��20,0,0,0q�$	��250��$��Bottom=����� * Student.DetailUser.FacultyCode+$	 TwoWay=�$
 PropertyChanged=��� $��1��$��4��$��FacultyName��$��20(�$��80,0,0,0q�$
��Left=�$	��164���� -   $ TextBoxFacultyName��$��Normal"�$��5��$��1��$��15(�$��0,0,20,0q�$	��250��$��Bottom=����� * Student.DetailUser.FacultyName+$	 TwoWay=�$
 PropertyChanged=��� $��2��$��4��$��Majors��$��20(�$ 30,0,0,0q�$
��Left=�$	��164���� -   $ TextBoxMajors��$��Normal"�$��5��$��2��$��15(�$��	0,0,110,0q�$��Bottom=�$	��200������ *Student.DetailUser.Majors+$	 TwoWay=�$
 PropertyChanged=�