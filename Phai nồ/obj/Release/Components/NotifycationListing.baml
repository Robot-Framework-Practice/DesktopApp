   M S B A M L   `   `   `  ���� D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Đồ_án.ComponentsĐồ_án.Components  9!clr-namespace:Đồ_án.ViewModelĐồ_án.ViewModel  .    (Đồ_án.Components.NotifycationListing   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     4local"clr-namespace:Đồ_án.Components     7	ViewModel!clr-namespace:Đồ_án.ViewModel       � DataContext  '   !Đồ_án.ViewModel.HomeViewModel  .��� 
������� � ColumnDefinitions �� $	��280 ��� .+���  �� CornerRadius$ 30��
�������$��1q�._�&   System.Windows.Controls.Calendar   ,  (MaterialDesignCalendarPortraitForeground#��[  $��20,20,20,20q�
���OO/�   SelectedDate �� *SelectedDate+�� $ 30��
�������$��1q�$��1��$��30,0,0,0q�._��� .+��� $��Notifycation��
���OO/�$��30(�$��	20,20,0,0q�$��Center=�$��SemiBold"��� 
���OO/�$��20q�$��0,10,0,0q�� 
�������$	��380��.+��� $��11(� �� SelectionMode$ Single=�$	��500��$	��Top=����� *ListNotifycation+ �� View �� .P���  �� Width$	 150��$
��Date�� �� DisplayMemberBinding �� *
SentTime+�� $	 390��$��Title�� �� *Header+��  �� CellTemplate �� .R��� $��0q�$��20��$��20��$��0,0,0,0q����� *DataContext.DeleteCommand+	 �� RelativeSource	 �� 
 �� AncestorType"
 ������ ����  �� ImageSource$) #\Resources\icons8_Delete_50px_2.png�� � ToolTip$ Delete Notifycation�� � ContextMenu �� .@�m� $
��Open�� m� Command �� *DataContext.UpdateInformation+	 �� "
 �� m� CommandParameter �� 	 �� $
 ContextMenuL� �� Path$" PlacementTarget.SelectedItem�