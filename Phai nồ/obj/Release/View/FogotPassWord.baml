   M S B A M L   `   `   `  ���� D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Đồ_án.ViewĐồ_án.View  ;"clr-namespace:Đồ_án.ComponentsĐồ_án.Components  E'clr-namespace:Đồ_án.ViewModel.LoginĐồ_án.ViewModel.Login  "    Đồ_án.View.FogotPassWord   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     .localclr-namespace:Đồ_án.View     _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3b+http://schemas.microsoft.com/xaml/behaviors  _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  3
components"clr-namespace:Đồ_án.Components  3utils'clr-namespace:Đồ_án.ViewModel.Login    � Title$  FogotPassWord��$	��380��$	��300�� � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � AllowsTransparency . 
���   � � WindowStartupLocation$ CenterScreen=�.���� -    ��Name$ 	mainLogin��   LoginViewModel � DataContext# [  .+��� $��10q�.+��� $��PASSWORD��$��Segoe UI Black)�$��24(�$
��0,10q�
�������$	��Top=�$��Center=��� $
��0,15q� �� Orientation$ 
Horizontal=�.+�'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Email=�$��Center=����#999999�� -   	 ��Name$	 focusFirstTextBox��
�������)  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Email��$	��250��$��5q����� *Gmail+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�" �� ValidatesOnNotifyDataErrors . .�� =� ErrorTemplate �� .R��� .+��� �� 
���  ��$	��250��$
��Wrap=����� *ErrorContent+.��� $��0,0,0,15q�.+��� $ 
Horizontal=�.+�  $ 	ShieldKey=�$��Center=����#999999�� -   $	 
OTPTextBox��
�������$
 OTP code��$	��250��$��5q����� *	OTPInView+$ TwoWay=�$ PropertyChanged=� . .�� �� .R��� .+��� �� 
���  ��$	��250��$
��Wrap=����� *ErrorContent+.���� -    ��Name$ SendCodeBtn��$
��Auto��$��Right=�$��Center=����� *GetOTPCodeCommand+���� .R��� $��0,0,16,0q�$��Center=�$��16(�����  �� 
TargetType" ��.���  �� Property � �� �� Value$ 	Send Code����  � �� �#999999 �� Triggers ^�  ^� 
Conditions ��  �� Binding �� *	IsGetCode+ �� Value True��  �� *TimeCountDown+ �� 	Converter /   )Đồ_án.ViewModel.Login.IsNullConverter  	 false.0���  � �� �� *TimeCountDown+��  � �� �#999999^�  ��  �� *	IsGetCode+ True��  �� *TimeCountDown+    true.0���  � ��$ 	Try Again������ " �� P�  P� Property �@J�IsMouseOver P� Value . . ���  �@�Cursor$
 Hand��^�  ��  �� *	IsGetCode+ True��  �� *TimeCountDown+   	 false.0���  � {� .  �� $ 
Horizontal=�.+�  $	 Key=�$��Center=����#999999.   (Đồ_án.Components.BindablePasswordBox  -     Name$ NewPassEdit��
�������   TextPasswordBox$ New Password��   Password �� *NewPassWord+$ TwoWay=�$ PropertyChanged=� .  �� .R��� .+��� �� 
���  ��$	��250��$
��Wrap=����� *ErrorContent+�� $��	0,15,0,30q�$ 
Horizontal=�.+�  $	 Key=�$��Center=����#999999  -   $ ConfirmPassEdit��
�������$ Confirm New Password�� �� *ConfirmNewPassword+$ TwoWay=�$ PropertyChanged=� �� .R��� .+��� �� 
���  ��$	��250��$
��Wrap=����� *ErrorContent+� $��0,10,0,0q�y��� *
IsRegister+  InverseVisibilityConverter# [  � ColumnDefinitions �� $	��94* ��� $
��183* �.+��� $��Don't get OTP code?��$
��Left=�$��Center=�$��60,0,0,0q����#999999$��1�� J� InputBindings d�  �� Command$  ��  d� MouseAction$  	LeftClicke��� -   $ 
ConfirmBtn��! �� 	IsDefault! . $��Center=�$��CONFIRM��$��Impact)�$��18(�$	��100�����#f0f0f0���	#FF307CD6
���   ����� *ConFirmCommand+�� 
" �� Top$" 10��# �� Right$# 10��
������ $��0q����� *CloseFogotPassWordWindow+.��  $ CloseBox=�$��Center=�
�������