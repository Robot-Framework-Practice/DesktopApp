   M S B A M L   `   `   `  ����D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Đồ_án.ComponentsĐồ_án.Components  5      9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  5      .    (Đồ_án.Components.NotifycationListing   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:Đồ_án.Components     5      7	ViewModel!clr-namespace:Đồ_án.ViewModel     5        � DataContext  5
      '   !Đồ_án.ViewModel.HomeViewModel  5   
   .��5      � 
������� � ColumnDefinitions 5   
   �� 5      $	��280 �6   �� 5      .+�5   
   ��  �� CornerRadius$ 30��6   
�������$��1q�66   ._�5      &   System.Windows.Controls.Calendar   ,  (MaterialDesignCalendarPortraitForeground#��[  6   $��20,20,20,20q�6Y   
���OO/�   SelectedDate 5   2   �� *SelectedDate+5      �� 5   
   $ 30��6   
�������$��1q�66   $��1��6J   $��30,0,0,0q�5      ._�5      �� .+�5      �� $��Notifycation��6   
���OO/�$��30(�6K   $��	20,20,0,0q�5      $��Center=�6/   $��SemiBold"�6L   �� 5      
���OO/�$��20q�68   $��0,10,0,0q�6M   � 5      
�������$	��380��6/   .+�5      �� $��11(�6    �� SelectionMode$ Single=�5      $	��500��5   @   $	��Top=�6M   ��6   �� *ListNotifycation+ �� View 5       �� 5!      .P�5"   "   ��  �� Width$	 150��5#      $
��Date��5%   !    �� DisplayMemberBinding 5$   !   �� *
SentTime+5%   !   �� 5'   "   $	 390��5(      $��Title��5*       5)      �� *Header+5*      �� 59   "    �� CellTemplate 5:   &   �� 5;   *   .R�5@   .   �� $��0q�65   $��20��6I   $��20��6T   $��0,0,0,0q�6`   ��5A   -   �� *DataContext.DeleteCommand+	 �� RelativeSource	 �� 
 �� AncestorType"
 ����5B   -   �� ��5C   2   �� 5D   6    �� ImageSource$) #\Resources\icons8_Delete_50px_2.png��6A    � ToolTip$ Delete Notifycation��5F   e   5G   /   5H   +   5J   #   5K       � ContextMenu 5M      �� 5N      .@�5O   "   m� $
��Open��6+    m� Command 69   �� *DataContext.UpdateInformation+	 �� "
 �� m� CommandParameter 5P   +   �� 	 �� $
 ContextMenuL� �� Path$" PlacementTarget.SelectedItem�5Q   #   5Y      5[      5\      5]      5^      5_      5`      