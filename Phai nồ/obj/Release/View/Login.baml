   M S B A M L   `   `   `  ���� D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Đồ_án.ViewĐồ_án.View  ;"clr-namespace:Đồ_án.ComponentsĐồ_án.Components      Đồ_án.View.Login   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     .localclr-namespace:Đồ_án.View     _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3b+http://schemas.microsoft.com/xaml/behaviors  _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  3
components"clr-namespace:Đồ_án.Components    � Title$  Login��$	��320��$	��600�� � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � AllowsTransparency . 
������  � WindowStartupLocation$ CenterScreen=�.���� -    ��Name$ 	mainLogin��   LoginViewModel � DataContext# [  .+��  � ColumnDefinitions �� $	��300 ��� $	��300 �.+��� $��0��
��������� $��1������  �� EndPoint$ 0.5,1&�	 �� 
StartPoint$	 0.5,0&�.��� 
 � Color$
 #030303�� � Offset$ 1Q�� $
 #376BB4��$ 0.566Q��� $	��320��$��0��$��Hidden=�.���� $��20,10,20,20q�.+��� $��Login��$��Segoe UI Black)�$��24(�$
��0,10q�$	��Top=�$
��Left=��� $
��0,15q� �� Orientation$ 
Horizontal=�.+�'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Account=�$��Center=����#707070�� -    ��Name$ focusFirstTextBox��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Id User��$	��250��$��5q����� *
UserName+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�" �� ValidatesOnNotifyDataErrors . .�� =� ErrorTemplate �� .R��� .+��� �� 
���  ��$	��250��$
��Wrap=����� *ErrorContent+.���� $��0,0,0,15q�$ 
Horizontal=�y��� *
IsRegister+.+�  $ Email=�$��Center=����#707070�� $ Email��$	��250��$��5q����� *Email+$ TwoWay=�$ PropertyChanged=� . .�� �� .R��� .+��� �� 
���  ��$	��250��$
��Wrap=����� *ErrorContent+.���� $ 
Horizontal=�.+�  $	 Key=�$��Center=����#707070.   (Đồ_án.Components.BindablePasswordBox     TextPasswordBox$ Password��   Password �� *
PassWord+$ TwoWay=�$ PropertyChanged=� .  �� .R��� .+��� �� 
���  ��$	��250��$
��Wrap=����� *ErrorContent+�� $��	0,15,0,30q�$ 
Horizontal=�y��� *
IsRegister+.+�  $	 Key=�$��Center=����#707070  $ Confirm Password�� �� *ConfirmPassword+$ TwoWay=�$ PropertyChanged=� �� .R��� .+��� �� 
���  ��$	��250��$
��Wrap=����� *ErrorContent+� $��	0,10,0,10q�y��� *
IsRegister+  InverseVisibilityConverter �� 	Converter# [ .+��� $��Remember me��$
��5,10q����#707070 d� 	IsChecked �� *IsToRemember+$ OneWayToSource=��� -    ��Name$ ForgotPassword��$��I forgot my password��$��Right=�$��Center=�$��10q����#707070 J� InputBindings d�  d� MouseAction$ 	LeftClicke� �� Command �� *ShowFogotPassWordWindow+��  �� 	IsDefault . $��Center=�$��LOGIN��$��Impact)�$��18(�$	��100�����	#FF307CD6���	#FF307CD6���� *LoginCommand+�� $��1��$��20,30,20,30q�.+��� $��Welcome��
�������$��Center=�$��48(�$��Champagne & Limousines)�$
��Bold"��� $H��BMake the impossible possible, the possible easy, the easy elegant.��
�������$��Center=�$	��280��$��24(�$��Champagne & Limousines)�$
��Wrap=� �� TextAlignment$ Center=�$��0,50,0,0q��� $��Feldenkrais��
�������$��18(�$��Champagne & Limousines)�$
��Wrap=�$ Right=�$��10q��� 
 �� Top$ 10�� �� Right$ 10��
������ $��0q����� *
CloseLogin+.��  $ CloseBox=�$��Center=�
�������