   M S B A M L   `   `   `  ���� D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Đồ_án	Đồ_án  /clr-namespace:Đồ_án.ViewĐồ_án.View  5clr-namespace:Đồ_án.CommandĐồ_án.Command  9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  ]3clr-namespace:Đồ_án.ViewModel.DashBroad.Subject%Đồ_án.ViewModel.DashBroad.Subject  ;"clr-namespace:Đồ_án.ComponentsĐồ_án.Components  ]3clr-namespace:Đồ_án.ViewModel.DashBroad.Teacher%Đồ_án.ViewModel.DashBroad.Teacher      Đồ_án.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     )localclr-namespace:Đồ_án     -Viewclr-namespace:Đồ_án.View     3Commandclr-namespace:Đồ_án.Command     7	ViewModel!clr-namespace:Đồ_án.ViewModel     BVM3clr-namespace:Đồ_án.ViewModel.DashBroad.Subject     5Themes"clr-namespace:Đồ_án.Components     EViewM3clr-namespace:Đồ_án.ViewModel.DashBroad.Teacher       � Icon$  \Resources\logo-uit.png�� � Title$ 
MainWindow��$	��700��$
��1220�� � AllowsTransparency .  � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=�
������ .��� .+��� ���	#FF437575 �� CornerRadius$ 25��$	��700���  � ColumnDefinitions �� $	��230 ��� $	��970 �.+��� $��0��
���OO/�$ 	25,0,0,25��$	��700��._��� $��0��$��0,0,0,0q�.+��� $ 25��
���OO/�$��10q�._��� $ 25��$	��200��$	��100��
�������._��� $��\Resources\logo-uit.png��$��0q��� $��0,30,0,0q�$	��230��$	��480��.+���  �� Orientation$ 
Horizontal=�y��� *IsRoleAdmin+   LoginViewModel �� Source# [  .+��� $��0��$%��\Resources\icons8_home_26px.png��$
��Left=�$��35��$��35��$��10,0,0,0q��� -   	 ��Name$	 btnHome��$��0��$
��Home��$��20(�$��60��$	��185��
���OO/�
�������$��DemiBold"�$��0,0,0,0q����� *	HomeFrame+  HomeViewModel# [ �� $ 
Horizontal=�.+��� $��1��$(��"\Resources\icons8_search_100px.png��$
��Left=�$��35��$��35��$��10,0,0,0q��� -   $	 
btnProfile��$��1��$��55��$��Profile��$��20(�
���OO/�
�������$��DemiBold"�$��0,0,0,0q�$
��Left=�$	��185������ *ProfileCommand+  ProfileViewModel# [ �� $ 
Horizontal=�.+��� $��2��$(��"\Resources\icons8_edit_100px_3.png��$
��Left=�$��35��$��35��$��10,0,0,0q��� -   $��	btnInsert��$��2��$��55��$��	Education��$��20(�
���OO/�
�������$��DemiBold"�$��0,0,0,0q�$
��Left=�$	��185������ *EducationCommand+  EducationViewModel# [ �� $ 
Horizontal=�y��� *IsRoleAdmin+# [  .+��� $��3��$.��(\Resources\icons8_student_male_100px.png��$
��Left=�$��35��$��35��$��10,0,0,0q��� -   $	 
btnClasses��$��3��$��55��$��Student��$��20(�
���OO/�
�������$��DemiBold"�$��0,0,0,0q�$	��185������ *MainClassCommand+  MainClassViewModel# [ �� $ 
Horizontal=�y��� *IsRoleAdmin+# [  .+��� $��5��$&�� \Resources\icons8_user_100px.png��$
��Left=�$��35��$��35��$��10,0,0,0q��� -   $��
btnTeacher��$��5��$��55��$	��185��$��Teacher��$��20(�
���OO/�
�������$��DemiBold"�$��0,0,0,0q����� *TeacherFrame+  TeacherViewModel# [ �� $ 
Horizontal=�.+��� $��6��$.��(\Resources\icons8_insert_table_100px.png��$
��Left=�$��35��$��35��$��10,0,0,0q��� -   $��
btnSubject��$��6��$��55��$	��185��$��Subject��$��20(�
���OO/�
�������$��DemiBold"�$��0,0,0,0q����� *SubjectFrame+  SubjectViewModel# [ �� $ 
Horizontal=�.+��� $��4��$3��-\Resources\icons8_university_campus_100px.png��$
��Left=�$��35��$��35��$��10,0,0,0q��� -   $	 btnSchedule��$��4��$��55��$	��185��$��Classes��$��20(�
���OO/�
�������$��DemiBold"�$��0,0,0,0q����� *MainStudentCommand+  MainStudentViewModel# [ �� $ 
Horizontal=�.+��� $��7��$*��$\Resources\icons8_wrench_100px_1.png��$
��Left=�$��35��$��35��$��10,0,0,0q��� -   $	 
btnSetting��$��7��$��Setting��$��55��$	��185��$��20(�
���OO/�
�������$��DemiBold"�$��0,0,0,0q����� *SettingCommand+  SettingViewModel# [  � -	   
  �Name$
 	MainFrame��  � NavigationUIVisibility$ Hidden=�$��1������  �� ImageSource$  \Resources\HomePIcture.png�� j� Stretch$ Uniform=�