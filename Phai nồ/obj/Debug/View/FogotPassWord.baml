   M S B A M L   `   `   `  ����D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Đồ_án.ViewĐồ_án.View  5   	   ;"clr-namespace:Đồ_án.ComponentsĐồ_án.Components  5   	   E'clr-namespace:Đồ_án.ViewModel.LoginĐồ_án.ViewModel.Login  5   	   "    Đồ_án.View.FogotPassWord   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Đồ_án.View     5   	   _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3b+http://schemas.microsoft.com/xaml/behaviors  5	   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   3
components"clr-namespace:Đồ_án.Components  5   	   3utils'clr-namespace:Đồ_án.ViewModel.Login  5   	     � Title$  FogotPassWord��5   	   $	��380��5   	   $	��300��6    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�6    � AllowsTransparency . 
���   � � WindowStartupLocation$ CenterScreen=�6_   .��5      �� -   5         ��Name$ 	mainLogin��5         LoginViewModel � DataContext# [  6    .+�5   
   �� $��10q�6   .+�5      �� $��PASSWORD��6   $��Segoe UI Black)�6'   $��24(�6C   $
��0,10q�6Q   
�������$	��Top=�6r   $��Center=�6�   �� 5      $
��0,15q�6    �� Orientation$ 
Horizontal=�6'   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Email=�6*   $��Center=�67   ���#9999996R   �� 5      -   5        	 ��Name$	 focusFirstTextBox��5      
�������)  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Email��6H   $	��250��6o   $��5q�6{   ��6�   �� *Gmail+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�" �� ValidatesOnNotifyDataErrors . .��6�    =� ErrorTemplate 5      �� 5      .R�5       �� .+�5!   "   �� �� 5"   "   
���  ��$	��250��6[   $
��Wrap=�6g   ��6=   �� *ErrorContent+6g   5#      5$      .��5%   0   5&      5'      � 5(      $��0,0,0,15q�6   .+�5)      �� $ 
Horizontal=�6   .+�5*        $ 	ShieldKey=�6.   $��Center=�6?   ���#9999996Z   �� 5+      -   5        $	 
OTPTextBox��5+      
�������$
 OTP code��6E   $	��250��6o   $��5q�6{   ��6�   �� *	OTPInView+$ TwoWay=�$ PropertyChanged=� . .��6�    5,      �� 5-      .R�5.   "   �� .+�5/   &   �� �� 50   &   
���  ��$	��250��6_   $
��Wrap=�6k   ��6A   �� *ErrorContent+6k   51   #   52      .��53   4   54      55      �� 56      -   5         ��Name$ SendCodeBtn��57      $
��Auto��58      $��Right=�59      $��Center=�5:      ��5<      �� *GetOTPCodeCommand+��5=      �� 5>      .R�5?      �� $��0,0,16,0q�5@   %   $��Center=�5A   %   $��16(�5B   %   ��5C   "   �� 5D   &    �� 
TargetType" ��6,   .�5E   *   ��  �� Property � �� �� Value$ 	Send Code��6A   �� 5F   *    � �� �#9999996G    �� Triggers 5G   *   ^� 5H   .    ^� 
Conditions 5I   2   �� 5J   6    �� Binding 6@   �� *	IsGetCode+ �� Value True6^   �� 5K   6    6@   �� *TimeCountDown+ �� 	Converter /   )Đồ_án.ViewModel.Login.IsNullConverter  	 false6�   .0�5M   2   ��  � �� 6I   �� *TimeCountDown+�� 5N   2    � �� �#9999996O   5O   /   ^� 5P   .    5Q   2   �� 5R   6    6@   �� *	IsGetCode+ True6^   �� 5S   6    6@   �� *TimeCountDown+    true6�   .0�5U   2   ��  � ��$ 	Try Again��6I   5V   /   5X   '   5Z      5[      ��5]      �� 5^      " ��6     5`      P� 5a   "    P� Property �@J�IsMouseOver P� Value . . �5b   &   ��  �@�Cursor$
 Hand��6?   5c   #   ^� 5d   "    5e   &   �� 5f   *    64   �� *	IsGetCode+ True6R   �� 5g   *    64   �� *TimeCountDown+   	 false6y   .0�5i   &   ��  � {� .  6B   5j   #   5l      5n      5o      �� 5q      $ 
Horizontal=�6   .+�5r        $	 Key=�6*   $��Center=�65   ���#9999996P   .   (Đồ_án.Components.BindablePasswordBox  5s      -   5          Name$ NewPassEdit��5s   1   
�������   TextPasswordBox$ New Password��6�      Password 6F   �� *NewPassWord+$ TwoWay=�$ PropertyChanged=� .  5t      �� 5u      .R�5v      �� .+�5w   "   �� �� 5x   "   
���  ��$	��250��6[   $
��Wrap=�6g   ��6=   �� *ErrorContent+6g   5y      5z      5|      5}      �� 5~      $��	0,15,0,30q�6   $ 
Horizontal=�6,   .+�5        $	 Key=�6*   $��Center=�65   ���#9999996P     5�      -   5        $ ConfirmPassEdit��5�   1   
�������$ Confirm New Password��6�    6J   �� *ConfirmNewPassword+$ TwoWay=�$ PropertyChanged=� 5�      �� 5�      .R�5�      �� .+�5�   "   �� �� 5�   "   
���  ��$	��250��6[   $
��Wrap=�6g   ��6=   �� *ErrorContent+6g   5�      5�      5�      5�      � 5�      $��0,10,0,0q�6l   y�6   �� *
IsRegister+  InverseVisibilityConverter# [  � ColumnDefinitions 5�      �� 5�      $	��94* �6'   �� 5�      $
��183* �6'   .+�5�      �� $��Don't get OTP code?��6   $
��Left=�67   $��Center=�6R   $��60,0,0,0q�6m   ���#999999$��1��6�    J� InputBindings 5�      d� 5�       �� Command$  ��6'     d� MouseAction$  	LeftClicke�62   5�      5�      �� 5�      -   5        $ 
ConfirmBtn��5�      ! �� 	IsDefault! . $��Center=�6:   $��CONFIRM��6W   $��Impact)�6i   $��18(�6}   $	��100��6�   ���#f0f0f0���	#FF307CD6
���   ���6�   �� *ConFirmCommand+5�      �� 5�   
   
" �� Top$" 10��6   # �� Right$# 10��6!   
������ $��0q�6L   ��6`   �� *CloseFogotPassWordWindow+.��5�        $ CloseBox=�6&   $��Center=�66   
�������6Q   5�      5�      5�      