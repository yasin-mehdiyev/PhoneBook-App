   M S B A M L   `   `   `  ����E  A27_11_2018, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:_27_11_2018_27_11_2018  5   	       _27_11_2018.AddPerson   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:_27_11_2018     5   	   -   5          �Name$  WindowsAddPerson��5   	    � Title$ 	AddPerson��5   	   $	��422��6   $��445.993��6(    � 
ResizeMode$ NoResize=�68    � WindowStartupLocation$ CenterScreen=�6N   .��5	      � $��0,0,4.667,0q�6   .+�5
   
   �� -   5         ��Name$ BtnAddPersonButton��5
      $��
Əlavə Et��6-   $
��Left=�6@   $��254,347,0,0q�6[   $	��Top=�6p   $	��119��6�   $��36��6�   6�   �� 5   
   $�� ��6   $
��Left=�6   $��	10,10,0,0q�66   $	��Top=�6I   �� 5   
   -   5         ��Name$ cmbAddPersonCompany��5      $
��Left=�60   $��	26,41,0,0q�6K   $	��Top=�6^   $	��139��6v   $��28��6�    �� DisplayMemberPath$
 Name��5       �� SelectedValuePath$ Id��5      ��5      ��  �� Path$ Company�	 �� SelectedValue	 5      �� $ Company��� 5   
   -   5        $ cmbAddPersonPosition��5      $
��Left=�61   $��
250,43,0,0q�6L   $	��Top=�6`   $	��139��6x   $��26��6�   $
 Name��5      $ Id��5      ��5      �� $ Position�	 5      �� $ Position��� 5   
   $��Şirkət��6   $
��Left=�6!   $��	26,10,0,0q�6<   $	��Top=�6O   �� 5   
   $��Vəzifə��6   $
��Left=�6!   $��
250,10,0,0q�6<   $	��Top=�6P   �� 5   
   -   5        
 ��Name$
 txtAddPersonName��5      $
��Left=�6,   $��27��6G   $��
26,126,0,0q�6S    �� TextWrapping$
 Wrap=�6g   $	��Top=�6{   $	��139��6�   �� 5   
   -   5        $
 txtAddPersonSurName��5      $
��Left=�6/   $��23��6J   $��250,130,0,0q�6V   $
 Wrap=�6k   $	��Top=�6   $	��139��6�   �� 5   
   -   5        $
 txtAddPersonMobile��5      $
��Left=�6.   $��27��6I   $��
28,210,0,0q�6U   $
 Wrap=�6i   $	��Top=�6}   $	��137��6�   �� 5   
   -   5        $
 txtAddPersonWorkPhone��5      $
��Left=�61   $��27��6L   $��250,210,0,0q�6X   $
 Wrap=�6m   $	��Top=�6�   $	��139��6�   �� 5   
   -	   5        $
 txtAddPersonEmail��5      $
��Left=�6-   $��25��6H   $��
26,291,0,0q�6T   $
 Wrap=�6h   $	��Top=�6|   $	��139��6�   �� 5    
   $��Ad��6   $
��Left=�6   $��	28,95,0,0q�68   $	��Top=�6K   �� 5!   
   $��Soyad��6   $
��Left=�6    $��
254,99,0,0q�6;   $	��Top=�6O   �� 5"   
   $��Mobil��6   $
��Left=�6    $��
28,176,0,0q�6;   $	��Top=�6O   �� 5#   
   $��İş telefonu��6   $
��Left=�6&   $��254,176,0,0q�6A   $	��Top=�6V   �� 5$   
   $��E-poçt��6   $
��Left=�6!   $��
28,260,0,0q�6<   $	��Top=�6P   �� 5%   
   -
   5        $ BtnUpdateButton��5%      $y�Hidden=�6H   $��Yenilə��6]   $
��Left=�6n   $��254,346,0,0q�6�   $	��Top=�6�   $	��119��6�   $��37��6�   �� 5&   
   -   5        $ BtnDeleteButton��5&      $y�Hidden=�6H   $��Silin��6\   $
��Left=�6l   $��
73,348,0,0q�6�   $	��Top=�6�   $	��119��6�   $��35��6�   5(      5)      