   M S B A M L   `   `   `  ����D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Đồ_án	Đồ_án  5   	   /clr-namespace:Đồ_án.ViewĐồ_án.View  5   	   5clr-namespace:Đồ_án.CommandĐồ_án.Command  5   	   9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  5	   	   ]3clr-namespace:Đồ_án.ViewModel.DashBroad.Subject%Đồ_án.ViewModel.DashBroad.Subject  5
   	   ;"clr-namespace:Đồ_án.ComponentsĐồ_án.Components  5   	   ]3clr-namespace:Đồ_án.ViewModel.DashBroad.Teacher%Đồ_án.ViewModel.DashBroad.Teacher  5   	       Đồ_án.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:Đồ_án     5   	   -Viewclr-namespace:Đồ_án.View     5   	   3Commandclr-namespace:Đồ_án.Command     5   	   7	ViewModel!clr-namespace:Đồ_án.ViewModel     5	   	   BVM3clr-namespace:Đồ_án.ViewModel.DashBroad.Subject     5
   	   5Themes"clr-namespace:Đồ_án.Components     5   	   EViewM3clr-namespace:Đồ_án.ViewModel.DashBroad.Teacher     5   	     � Icon$  \Resources\logo-uit.png��5   	    � Title$ 
MainWindow��5   	   $	��700��6   $
��1220��6)    � AllowsTransparency .  � WindowStyle$
 None=�5   #    � WindowStartupLocation$ CenterScreen=�5   	   
������ .��5      � .+�5   
   �� ���	#FF437575 �� CornerRadius$ 25��6(   $	��700��6:   � 5   
    � ColumnDefinitions 5      �� 5      $	��230 �6#   �� 5      $	��970 �6#   .+�5      �� $��0��6   
���OO/�$ 	25,0,0,25��6@   $	��700��6Y   ._�5      �� $��0��6   $��0,0,0,0q�6-   .+�5      �� $ 25��6   
���OO/�$��10q�6K   ._�5       �� $ 25��6!   $	��200��64   $	��100��6@   
�������._�5!      �� $��\Resources\logo-uit.png��6$   $��0q�6E   5"      5#      �� 5%      $��0,30,0,0q�6!   $	��230��63   $	��480��6?   .+�5&      ��  �� Orientation$ 
Horizontal=�6p   y�6%   �� *IsRoleAdmin+   LoginViewModel �� Source# [  .+�5(      �� $��0��6$   $%��\Resources\icons8_home_26px.png��5)      $
��Left=�5*      $��35��5+      $��35��6(   $��10,0,0,0q�5,      �� 5-      -   5        	 ��Name$	 btnHome��5-   %   $��0��5.      $
��Home��5/      $��20(�50      $��60��51      $	��185��6)   
���OO/�
�������$��DemiBold"�54      $��0,0,0,0q�63   ��55      �� *	HomeFrame+  HomeViewModel# [ 56      59      �� 5<      $ 
Horizontal=�6%   .+�5>      �� $��1��6$   $(��"\Resources\icons8_search_100px.png��5?      $
��Left=�5@      $��35��5A      $��35��6(   $��10,0,0,0q�5B      �� 5D      -   5        $	 
btnProfile��5F      $��1��5D   %   $��55��5G      $��Profile��5H      $��20(�5I      
���OO/�
�������$��DemiBold"�5L      $��0,0,0,0q�63   $
��Left=�6M   $	��185��6h   ��5E      �� *ProfileCommand+  ProfileViewModel# [ 5N      5Q      �� 5S      $ 
Horizontal=�6%   .+�5V      �� $��2��6$   $(��"\Resources\icons8_edit_100px_3.png��5W      $
��Left=�5X      $��35��5Y      $��35��6(   $��10,0,0,0q�5Z      �� 5\      -   5        $��	btnInsert��5]      $��2��5\   %   $��55��5_      $��	Education��5`      $��20(�5a      
���OO/�
�������$��DemiBold"�5d      $��0,0,0,0q�63   $
��Left=�6M   $	��185��6h   ��5^      �� *EducationCommand+  EducationViewModel# [ 5e      5h      �� 5j      $ 
Horizontal=�6p   y�6%   �� *IsRoleAdmin+# [  .+�5m      �� $��3��6$   $.��(\Resources\icons8_student_male_100px.png��5n      $
��Left=�5o      $��35��5p      $��35��6(   $��10,0,0,0q�5q      �� 5s      -   5        $	 
btnClasses��5t      $��3��5s   %   $��55��5u      $��Student��5v      $��20(�5w      
���OO/�
�������$��DemiBold"�5z      $��0,0,0,0q�5{      $	��185��5|   n   ��6   �� *MainClassCommand+  MainClassViewModel# [ 5~      5�      �� 5�      $ 
Horizontal=�6p   y�6%   �� *IsRoleAdmin+# [  .+�5�      �� $��5��6$   $&�� \Resources\icons8_user_100px.png��5�      $
��Left=�5�      $��35��5�      $��35��6(   $��10,0,0,0q�5�      �� 5�      -   5        $��
btnTeacher��5�      $��5��5�   %   $��55��5�      $	��185��5�      $��Teacher��5�      $��20(�5�      
���OO/�
�������$��DemiBold"�5�      $��0,0,0,0q�63   ��5�      �� *TeacherFrame+  TeacherViewModel# [ 5�      5�      �� 5�      $ 
Horizontal=�6%   .+�5�      �� $��6��6$   $.��(\Resources\icons8_insert_table_100px.png��5�      $
��Left=�5�      $��35��5�      $��35��6(   $��10,0,0,0q�5�      �� 5�      -   5        $��
btnSubject��5�      $��6��5�   %   $��55��5�      $	��185��5�      $��Subject��5�      $��20(�5�      
���OO/�
�������$��DemiBold"�5�      $��0,0,0,0q�63   ��5�      �� *SubjectFrame+  SubjectViewModel# [ 5�      5�      �� 5�      $ 
Horizontal=�6%   .+�5�      �� $��4��6$   $3��-\Resources\icons8_university_campus_100px.png��5�      $
��Left=�5�      $��35��5�      $��35��6(   $��10,0,0,0q�5�      �� 5�      -   5        $	 btnSchedule��5�      $��4��5�   %   $��55��5�      $	��185��5�      $��Classes��5�      $��20(�5�      
���OO/�
�������$��DemiBold"�5�      $��0,0,0,0q�63   ��5�      �� *MainStudentCommand+  MainStudentViewModel# [ 5�      5�      �� 5�      $ 
Horizontal=�6%   .+�5�      �� $��7��6$   $*��$\Resources\icons8_wrench_100px_1.png��5�      $
��Left=�5�      $��35��5�      $��35��6(   $��10,0,0,0q�5�      �� 5�      -   5        $	 
btnSetting��5�   %   $��7��5�      $��Setting��5�      $��55��5�      $	��185��5�      $��20(�5�      
���OO/�
�������$��DemiBold"�5�      $��0,0,0,0q�63   ��5�      �� *SettingCommand+  SettingViewModel# [ 5�      5�      5�      5�      5�       � 5�      -	   5        
  �Name$
 	MainFrame��5�        � NavigationUIVisibility$ Hidden=�5�      $��1��5�      ��5�      �� 5�       �� ImageSource$  \Resources\HomePIcture.png��6!    j� Stretch$ Uniform=�6J   5�      5�      5�      5�      