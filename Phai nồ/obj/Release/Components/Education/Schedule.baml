   M S B A M L   `   `   `  ���� D  @Đồ án, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:Đồ_án.Components.EducationĐồ_án.Components.Education  -    'Đồ_án.Components.Education.Schedule   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     >local,clr-namespace:Đồ_án.Components.Education        ScheduleViewModel  � DataContext#  [  .����  �� CornerRadius$ 30��
�������$��1q�$��1��$��	0,10,0,10q�._��� 
�������$��10,10,10,10q�.+��� $��Notifycation��
���OO/�$��30(�$��	20,20,0,0q�$��Center=�$��SemiBold"��� 
���OO/�$��20q�$��0,10,0,0q�� 
�������$	��600��.+��� .���� $��11(� �� SelectionMode$ Single=�$	��600��$	��950������ *ListNotifycations+ �� View �� .P���  �� Width$	 200��$
��Date�� �� DisplayMemberBinding �� *
SentTime+�� $	 670��$��Title�� �� *Header+��  �� CellTemplate �� .R��� $��0q�$��20��$��20��$��0,0,0,0q����� *DataContext.DeleteCommand+ �� RelativeSource ��  �� AncestorType" ������ ���� 	 �� ImageSource$)	 #\Resources\icons8_Delete_50px_2.png��
 � ToolTip$
 Delete Notifycation�� � ContextMenu �� .@�m� $
��Open�� m� Command �� *DataContext.Open+ �� " �� m� CommandParameter ��  �� $ ContextMenuL� �� Path$" PlacementTarget.SelectedItem�