   M S B A M L   `   `   `  ����D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Đồ_án.ViewĐồ_án.View  5   	   ;"clr-namespace:Đồ_án.ComponentsĐồ_án.Components  5   	       Đồ_án.View.Login   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Đồ_án.View     5   	   _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3b+http://schemas.microsoft.com/xaml/behaviors  5
   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   3
components"clr-namespace:Đồ_án.Components  5   	     � Title$  Login��5   	   $	��320��6   $	��600��6$    � 
ResizeMode$ NoResize=�60    � WindowStyle$
 None=�6F    � AllowsTransparency . 
������  � WindowStartupLocation$ CenterScreen=�6�   .��5      �� -   5         ��Name$ 	mainLogin��5         LoginViewModel � DataContext# [  6    .+�5   
   �  � ColumnDefinitions 5      �� 5      $	��300 �6#   �� 5      $	��300 �6#   .+�5      �� $��0��6   
�������6(   �� 5      $��1��6   ��5      �� 5       �� EndPoint$ 0.5,1&�6*   	 �� 
StartPoint$	 0.5,0&�6;   .��5      � 
 � Color$
 #030303��6'    � Offset$ 1Q�67   � 5      $
 #376BB4��6'   $ 0.566Q�67   5      5       �� 5!      $	��320��6   $��0��6(   $��Hidden=�68   .��5"      �� $��20,10,20,20q�6   .+�5#      �� $��Login��6   $��Segoe UI Black)�6,   $��24(�6H   $
��0,10q�6V   $	��Top=�6d   $
��Left=�6|   �� 5%      $
��0,15q�6!    �� Orientation$ 
Horizontal=�6/   .+�5&      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Account=�62   $��Center=�6A   ���#7070706\   �� 5'      -   5         ��Name$ focusFirstTextBox��5'   "   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Id User��6=   $	��250��6f   $��5q�6r   ��6}   �� *
UserName+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�" �� ValidatesOnNotifyDataErrors . .��6�    =� ErrorTemplate 5(      �� 5)   "   .R�5*   &   �� .+�5+   *   �� �� 5,   *   
���  ��$	��250��6c   $
��Wrap=�6o   ��6E   �� *ErrorContent+6o   5-   '   5.   #   .��5/   8   50      51      �� 52      $��0,0,0,15q�6C   $ 
Horizontal=�6U   y�6!   �� *
IsRegister+.+�53        $ Email=�62   $��Center=�6?   ���#7070706Z   �� 54      $ Email��6"   $	��250��6I   $��5q�6U   ��6`   �� *Email+$ TwoWay=�$ PropertyChanged=� . .��6�    55      �� 56   "   .R�57   &   �� .+�58   *   �� �� 59   *   
���  ��$	��250��6c   $
��Wrap=�6o   ��6E   �� *ErrorContent+6o   5:   '   5;   #   .��5<   8   5=      5>      �� 5?      $ 
Horizontal=�6!   .+�5@        $	 Key=�62   $��Center=�6=   ���#7070706X   .   (Đồ_án.Components.BindablePasswordBox  5A         TextPasswordBox$ Password��6�      Password 69   �� *
PassWord+$ TwoWay=�$ PropertyChanged=� .  5B      �� 5C   "   .R�5D   &   �� .+�5E   *   �� �� 5F   *   
���  ��$	��250��6c   $
��Wrap=�6o   ��6E   �� *ErrorContent+6o   5G   '   5H   #   5J      5K      �� 5L      $��	0,15,0,30q�6C   $ 
Horizontal=�6V   y�6!   �� *
IsRegister+.+�5M        $	 Key=�62   $��Center=�6=   ���#7070706X     5N      $ Confirm Password��6�    69   �� *ConfirmPassword+$ TwoWay=�$ PropertyChanged=� 5O      �� 5P   "   .R�5Q   &   �� .+�5R   *   �� �� 5S   *   
���  ��$	��250��6c   $
��Wrap=�6o   ��6E   �� *ErrorContent+6o   5T   '   5U   #   5W      5X      � 5Y      $��	0,10,0,10q�6t   y�6   �� *
IsRegister+  InverseVisibilityConverter �� 	Converter# [ .+�5Z      �� $��Remember me��6#   $
��5,10q�69   ���#707070 d� 	IsChecked 6\   �� *IsToRemember+$ OneWayToSource=��� 5[      -   5         ��Name$ ForgotPassword��5[   $   $��I forgot my password��6<   $��Right=�6X   $��Center=�6t   $��10q�6�   ���#707070 J� InputBindings 5\      d� 5]   "    d� MouseAction$ 	LeftClicke�6[    �� Command 6/   �� *ShowFogotPassWordWindow+6[   5_      5`      �� 5b       �� 	IsDefault . $��Center=�6.   $��LOGIN��6K   $��Impact)�6[   $��18(�6o   $	��100��6}   ���	#FF307CD6���	#FF307CD6��6�   �� *LoginCommand+5c      5d      �� 5e      $��1��6   $��20,30,20,30q�6)   .+�5f      �� $��Welcome��6   
�������$��Center=�6>   $��48(�6[   $��Champagne & Limousines)�6i   $
��Bold"�6�   �� 5g      $H��BMake the impossible possible, the possible easy, the easy elegant.��6   
�������$��Center=�6y   $	��280��6�   $��24(�6�   $��Champagne & Limousines)�6�   $
��Wrap=�6�    �� TextAlignment$ Center=�6�   $��0,50,0,0q�6  �� 5h      $��Feldenkrais��6   
�������$��18(�6B   $��Champagne & Limousines)�6P   $
��Wrap=�6x   $ Right=�6�   $��10q�6�   5i      5j      �� 5m   
   
 �� Top$ 10��6    �� Right$ 10��6!   
������ $��0q�6L   ��6`   �� *
CloseLogin+.��5n        $ CloseBox=�6&   $��Center=�66   
�������6Q   5o      5p      5r      