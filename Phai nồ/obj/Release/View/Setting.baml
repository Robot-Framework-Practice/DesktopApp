   M S B A M L   `   `   `  ���� D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Đồ_án.ComponentsĐồ_án.Components  9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  /clr-namespace:Đồ_án.ViewĐồ_án.View  9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  ;"clr-namespace:Đồ_án.ComponentsĐồ_án.Components      Đồ_án.View.Setting   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     5Themes"clr-namespace:Đồ_án.Components     7	ViewModel!clr-namespace:Đồ_án.ViewModel     _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  (localclr-namespace:Đồ_án.View  1	viewmodel!clr-namespace:Đồ_án.ViewModel  3
components"clr-namespace:Đồ_án.Components     SettingViewModel  � DataContext#  [   N� Title$ Setting��.��� 
�������$	��700��$	��Top=�.+�(  "MaterialDesignThemes.Wpf.ColorZone  $	��970��$��90��   Mode$ Inverted=�$��16q�
���OO/�.��]� .+�'  !MaterialDesignThemes.Wpf.PopupBox  $��Right=�   PlacementMode$ BottomAndAlignRightEdges=�
�������$��20(�   PopupContent. �� 
�������.@��� $	��150��$��50��.���� $��Logout��
���OO/�$	��150��$��50������ *	ShowLogin+  LoginViewModel �� Source# [ ����  �� ImageSource$- '\Resources\icons8_close_window_52px.png���� $	��150��$��50��.���� $
��Exit��
���OO/�$	��150��$��50������ *ExitCommand+  ExitViewModel# [ ���� $- '\Resources\icons8_close_window_52px.png����  �� Orientation$ 
Horizontal=�.+��� $(��"\Resources\icons8_wrench_100px.png���� $��Center=�$��16 0 0 0q�$��Setting��$��25(�� $��Center=�
�������$	��870��$	��375��$��0,0,0,70q� � 	Resources 	 �� 
TargetType
 �� Property �� Value��%�   '��       �� "	 ��.��� 
 � ��$ 20(��� 
 � ��
 �OO/��� 
 �@��TextAlignment$
 Left=��� 
 � ��$
 Left=��� 
 � ��$ Center=��� 
 � ��$ 50,0,0,0q� � ColumnDefinitions �� $	��290 ���  � RowDefinitions �� �� �� �� �� $��75 �.+��� $��0��$��Password��$��27��$��30,0,0,0q�$	��108���� $��1��$��0��$��New Password��$��27��$��30,0,0,0q�$	��184���� $��2��$��0��$��Confirm Password Again��$��27��$��30,0,0,0q�$	��240���� $��3��$��0��$��Are you sure ?��$��27��$��30,0,0,0q�$	��130��.   (Đồ_án.Components.BindablePasswordBox  $��1��$��0��$
��Left=�$��50,0,0,0q�$	��300��$��35��   Password �� *
PassWord+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� =� ErrorTemplate �� .R��� .+��� �� 
���  ��$	��250��$
��Wrap=����� *ErrorContent+  $��1��$��1��$
��Left=�$��50,0,0,0q�$	��300��$��35�� �� *NewPassWord+$ TwoWay=�$ PropertyChanged=� �� .R��� .+��� �� 
���  ��$	��250��$
��Wrap=����� *ErrorContent+  $��1��$��2��$
��Left=�$��50,0,0,0q�$	��300��$��35�� �� *ConfirmNewPassword+$ TwoWay=�$ PropertyChanged=� �� .R��� .+��� �� 
���  ��$	��250��$
��Wrap=����� *ErrorContent+-   'Đồ_án.Components.ToggleSwitchButton  $��1��$��3��$
��Left=�$��50,0,0,0q��� $��1��$��4��$	��100��$��	400,0,0,0q�$��Change��
���OO/����� *ChangePassWordCommand+