   M S B A M L   `   `   `  ����D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Đồ_án.ComponentsĐồ_án.Components  5      9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  5      /clr-namespace:Đồ_án.ViewĐồ_án.View  5
      9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  5      ;"clr-namespace:Đồ_án.ComponentsĐồ_án.Components  5          Đồ_án.View.Setting   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5Themes"clr-namespace:Đồ_án.Components     5      7	ViewModel!clr-namespace:Đồ_án.ViewModel     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      (localclr-namespace:Đồ_án.View  5
      1	viewmodel!clr-namespace:Đồ_án.ViewModel  5      3
components"clr-namespace:Đồ_án.Components  5         SettingViewModel  � DataContext#  [  5	       N� Title$ Setting��5      .��5      � 
�������$	��700��6#   $	��Top=�60   .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone  $	��970��6$   $��90��60      Mode$ Inverted=�6<   $��16q�6L   
���OO/�.��5      ]� .+�5      '  !MaterialDesignThemes.Wpf.PopupBox  $��Right=�6*      PlacementMode$ BottomAndAlignRightEdges=�6A   
�������$��20(�5   *      PopupContent. 5      �� 
�������.@�5      �� $	��150��6&   $��50��62   .��5      �� $��Logout��6k   
���OO/�$	��150��5   %   $��50��61   ��5   %   �� *	ShowLogin+  LoginViewModel �� Source# [ ��5   "   �� 5   &    �� ImageSource$- '\Resources\icons8_close_window_52px.png��61   5      5      �� 5      $	��150��6&   $��50��62   .��5       �� $
��Exit��6l   
���OO/�$	��150��5!   %   $��50��61   ��5    %   �� *ExitCommand+  ExitViewModel# [ ��5"   "   �� 5#   &   $- '\Resources\icons8_close_window_52px.png��61   5%      5&      5'      5(      �� 5)       �� Orientation$ 
Horizontal=�6   .+�5*      �� $(��"\Resources\icons8_wrench_100px.png��6   �� 5+      $��Center=�6    $��16 0 0 0q�6;   $��Setting��6M   $��25(�5,       5-      5.      5/      � 50   
   $��Center=�6   
�������$	��870��51      $	��375��6   $��0,0,0,70q�6)    � 	Resources 52      	 �� 
TargetType
 �� Property �� Value��%$  '��       �� 53      "	 ��6   .�54      �� 
 � ��$ 20(�61   �� 55      
 � ��
 �OO/�63   �� 56      
 �@��TextAlignment$
 Left=�66   �� 57      
 � ��$
 Left=�6<   �� 58      
 � ��$ Center=�6:   �� 59      
 � ��$ 50,0,0,0q�6/   5:      5;       � ColumnDefinitions 5=      �� 5>      $	��290 �6#   �� 5?       � RowDefinitions 5B      �� 5C      �� 5D      �� 5E      �� 5F      �� 5G      $��75 �6    .+�5J      �� -   5         ��Name$ TxtB1��5J      $��0��6'   $��Password��67   $��27��6G   $��30,0,0,0q�6S   $	��108��6e   �� 5K      -   5        $ TxtB2��5K      $��1��6(   $��0��65   $��New Password��6E   $��27��6Y   $��30,0,0,0q�6e   $	��184��6w   �� 5L      -   5        $ TxtB3��5L      $��2��6(   $��0��65   $��Confirm Password Again��6E   $��27��6c   $��30,0,0,0q�6o   $	��240��6�   �� 5M      $��3��6   $��0��6%   $��Are you sure ?��65   $��27��6K   $��30,0,0,0q�6W   $	��130��6i   .   (Đồ_án.Components.BindablePasswordBox  5O      -   5          Name$
 Edt1��5O   }   $��1��6�   $��0��6�   $
��Left=�6�   $��50,0,0,0q�6�   $	��300��6�   $��35��6�      Password 6-   �� *
PassWord+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� =� ErrorTemplate 5P      �� 5Q      .R�5R      �� .+�5S      �� �� 5T      
���  ��$	��250��6W   $
��Wrap=�6c   ��69   �� *ErrorContent+6c   5U      5V      5X        5Y      -   5        $
 Edt2��5Y   �   $��1��6�   $��1��6�   $
��Left=�6�   $��50,0,0,0q�6�   $	��300��6�   $��35��6�    6-   �� *NewPassWord+$ TwoWay=�$ PropertyChanged=� 5Z      �� 5[      .R�5\      �� .+�5]      �� �� 5^      
���  ��$	��250��6W   $
��Wrap=�6c   ��69   �� *ErrorContent+6c   5_      5`      5b        5c      -   5        $
 Edt3��5c   �   $��1��6�   $��2��6�   $
��Left=�6�   $��50,0,0,0q�6�   $	��300��6�   $��35��6�    6-   �� *ConfirmNewPassword+$ TwoWay=�$ PropertyChanged=� 5d      �� 5e      .R�5f      �� .+�5g      �� �� 5h      
���  ��$	��250��6W   $
��Wrap=�6c   ��69   �� *ErrorContent+6c   5i      5j      5l      -   'Đồ_án.Components.ToggleSwitchButton  5m      -   5          Name$ 	ToggleBtn��5m   (   $��1��6;   $��3��6K   $
��Left=�6X   $��50,0,0,0q�6s   �� 5n      $��1��6?   $��4��6O   $	��100��6\   $��	400,0,0,0q�6h   $��Change��5o      
���OO/���5n      �� *ChangePassWordCommand+5q      5r      5s      5t      