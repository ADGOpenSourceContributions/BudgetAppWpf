   M S B A M L   `   `   `  ����G  CBudgetAppWpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:BudgetAppWpfBudgetAppWpf  5   	       BudgetAppWpf.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:BudgetAppWpf     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � Title$ 
Budget App��5	   	   $	��720��6   $
��1080��6)   .��5
      � 
���   �$��0,0,0,-6q�6   .+�5   
   �� $2��,How much of money would you like to save up?��6   $��	22,43,0,0q�6G   
�������$��Segoe UI Light)�6m   $��35(�6�   $
��Left=�6�   $	��713��6�   $��57��6�   $	��Top=�6�   �� 5   
   -   5         ��Name$ edtSavingAmount��5      $��
22,169,0,0q�6+    �� TextWrapping$
 Wrap=�6?   $�� ��6S   $��18(�6[   $��32��6i   $	��Top=�6u   $
��Left=�6�   $	��250��6�   6�   �� 5   
   $"��Amount you want to save? (R)��6   $��
22,126,0,0q�67   
�������$��Segoe UI Light)�6^   $��18(�6z   $��34��6�   $	��Top=�6�   $
��Left=�6�   $	��250��6�   �� 5   
   $��
465,65,0,0q�6   $$��/512px-Money_Flat_Icon.svg.png��6$    K� ZIndex$ -1��6L   $	��459��6^   $	��Top=�6k   $
��Left=�6�   $	��420��6�   �� 5   
   -   5        $ 
edtDeposit��5      $��
22,264,0,0q�6&   $
 Wrap=�6:   $�� ��6N   $��18(�6V   $��32��6d   $	��Top=�6p   $
��Left=�6�   $	��250��6�   6�   �� 5   
   $��Deposit Amount? (R)��6   $��
22,221,0,0q�6.   
�������$��Segoe UI Light)�6U   $��18(�6q   $��34��6   $	��Top=�6�   $
��Left=�6�   $	��211��6�   �� 5   
   -   5        $ edtInterestRate��5      $��
22,360,0,0q�6+   $
 Wrap=�6?   $�� ��6S   $��18(�6[   $��32��6i   $	��Top=�6u   $
��Left=�6�   $	��250��6�   6�   �� 5   
   $��Interest Rate (%)��6   $��
22,317,0,0q�6,   
�������$��Segoe UI Light)�6S   $��18(�6o   $��34��6}   $	��Top=�6�   $
��Left=�6�   $	��211��6�   �� 5   
   -   5         ��Name$ btnCalculate��5      $��	Calculate��6'   $
��Left=�6;   $��
21,520,0,0q�6V   $	��Top=�6j   ���	#FFD81A1A
�������$
��Bold"�6�   $��1,1,1,1q�6�   $��25(�6�   $��61��6�   $	��203��6�   ��6�   Z�  � 	Resources 5       �� 
TargetType �� Property	 �� Value��%_   '��       �� 5      " ��6   .�5      ��  �@��CornerRadius$	 25��65   5      5      5      �� 5   
   -   5        $ btnClear��5      $��Clear��6#   $
��Left=�63   $��246,520,0,0q�6N   $	��Top=�6c   ���	#FF1641A9
�������$
��Bold"�6�   $��1,1,1,1q�6�   $��25(�6�   $��61��6�   $	��203��6�   ��6�   Z�  5      ��%_   '��       �� 5      " ��6   .�5      ��  �@��CornerRadius$	 25��65   5      5       5!      �� 5"   
   -   5        $ edtNoMonths��5"      $��
22,456,0,0q�6'   $
 Wrap=�6;   $�� ��6O   $��18(�6W   $��32��6e   $	��Top=�6q   $
��Left=�6�   $	��250��6�   6�   �� 5#   
   $��Number Of Months��6   $��
22,413,0,0q�6+   
�������$��Segoe UI Light)�6R   $��18(�6n   $��34��6|   $	��Top=�6�   $
��Left=�6�   $	��211��6�   �� 5$   
   -   5        
 ��Name$
 lblMonthlyRepayment��5$      $"��Your monthly repayments is :��6-   $��
22,597,0,0q�6T   
�������$��Segoe UI Light)�6{   $��35(�6�   $
��Left=�6�   $	��714��6�   $��57��6�   $	��Top=�6�   $y�Hidden=�6�   5%      5&      