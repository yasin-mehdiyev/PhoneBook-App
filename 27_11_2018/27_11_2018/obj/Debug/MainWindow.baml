   M S B A M L   `   `   `  ����E  A27_11_2018, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:_27_11_2018_27_11_2018  5   	       _27_11_2018.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:_27_11_2018     5   	     � Title$  
MainWindow��5   	   $	��541��6   $	��800��6)   .��5	      � $��0,0,0.333,-51.333q�6   .+�5
   
   �� -   5         ��Name$ cmbCompaniesName��5
      $
��Left=�6-   $��	52,38,0,0q�6H   $	��Top=�6[   $	��143��6s   $��26��6    �� DisplayMemberPath$
 Name��5       �� SelectedValuePath$ Id��5      ��5      ��  �� Path$ Company� �� SelectedValue 5      �� $ Company��� 5   
   -   5         ��Name$ lblcompanies��5      $��Şirkət Seçin��6&   $
��Left=�6=   $��52,7,0,0q�6X   $	��Top=�6j   $��77��6�   �� 5   
   -   5        $ cmbPositionsName��5      $
��Left=�6-   $��
277,38,0,0q�6H   $	��Top=�6\   $	��140��6t   $��26��6�   $
 Name��5      $ Id��5      ��5      �� $ Position� 5      �� $ Position��� 5   
   -   5        $ lblPosition��5      $��Vəzifə seçin��6%   $
��Left=�6<   $��	277,7,0,0q�6W   $	��Top=�6j   �� 5   
   -   5         ��Name$ txtPersonDetails��5      $
��Left=�6,   $��24��6G   $��
473,40,0,0q�6S    �� TextWrapping$
 Wrap=�6g   $	��Top=�6{   $	��127��6�   �� 5   
   -   5        $ lblPersonDetails��5      $��Ad,Soyad,Telefon��6*   $
��Left=�6E   $��	473,7,0,0q�6`   $	��Top=�6s   �� 5   
   -   5        	 ��Name$	 	btnSearch��5      $��Axtar��6$   $
��Left=�64   $��
654,40,0,0q�6O   $	��Top=�6c   $��90��6{   $��24��6�   6�   &   System.Windows.Controls.DataGrid  5   
   -   5        
  Name$
 
dgvPersons��5   9   $
��Left=�6M   $	��320��6h   $��	52,77,0,0q�6u   $	��Top=�6�   $	��682��6�   ��6   �� $ VwPerson�   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Id��6<      
Visibility$ Hidden=�6H   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *Id+6H     5      $ Şirkət��6A    6%   �� *	Company+6A     5      $ Vəzifə��6B    6%   �� *
Position+6B     5       $ Şəxs��6B    6%   �� *
FullName+6B     5!      $ Mobil��6@    6%   �� *Mobile+6@     5"      $
 İş��6C    6%   �� *	WorkPhone+6C     5#      $ E-poçt��6?    6%   �� *Email+6?   5%      �� 5&   
   -	   5        $	 btnAddPerson��5&      $��Şəxsin Məlumatı��6'   $
��Left=�6A   $��
54,432,0,0q�6\   $	��Top=�6p   $	��113��6�   $��40��6�   6�   5'      5(      