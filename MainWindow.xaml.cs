using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Text.RegularExpressions;

namespace BudgetAppWpf
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnClear_Click(object sender, RoutedEventArgs e)
        {
            edtDeposit.Clear();
            edtInterestRate.Clear();
            edtNoMonths.Clear();
            edtSavingAmount.Clear();
            lblMonthlyRepayment.Visibility = Visibility.Hidden;
        }

        private void btnCalculate_Click(object sender, RoutedEventArgs e)
        {
            lblMonthlyRepayment.Visibility = Visibility.Visible;
            try
            {
                lblMonthlyRepayment.Foreground = Brushes.White;
                double monthlyRepayment = 0;
                double interestRate = Convert.ToDouble(edtInterestRate.Text);
                double noMonths = Convert.ToDouble(edtNoMonths.Text);
                double savingAmount = Convert.ToDouble(edtSavingAmount.Text);
                double deposit = Convert.ToDouble(edtDeposit.Text);
                monthlyRepayment = ((savingAmount + deposit) * (interestRate / 100)) / (1 - (Math.Pow(1 + (interestRate / 100), -noMonths)));
                //round monthlyRepayment to currency
                monthlyRepayment = Math.Round(monthlyRepayment, 2);
                lblMonthlyRepayment.Content = "Your monthly repayments is : R " + monthlyRepayment.ToString();

            }
            catch (Exception ex)
            {
                lblMonthlyRepayment.Content = "An error as occured, please check your values!";
                lblMonthlyRepayment.Foreground = Brushes.Red;
            }




        }

        private void edtSavingAmount_TextChanged(object sender, TextChangedEventArgs e)
        {
            Regex regex = new Regex(@"^\d+\.?\d{0,2}$");
            if (!regex.IsMatch(edtSavingAmount.Text))
            {
                edtSavingAmount.Text = "";
            }
        }

        private void edtDeposit_TextChanged(object sender, TextChangedEventArgs e)
        {
            Regex regex = new Regex(@"^\d+\.?\d{0,2}$");
            if (!regex.IsMatch(edtDeposit.Text))
            {
                edtDeposit.Text = "";
            }
        }

        private void edtInterestRate_TextChanged(object sender, TextChangedEventArgs e)
        {
            Regex regex = new Regex(@"^\d+\.?\d{0,2}$");
            if (!regex.IsMatch(edtInterestRate.Text))
            {
                edtInterestRate.Text = "";
            }
        }

        private void edtNoMonths_TextChanged(object sender, TextChangedEventArgs e)
        {
            // where regex is only an integer
            Regex regex = new Regex(@"^\d+$");
            if (!regex.IsMatch(edtNoMonths.Text))
            {
                edtNoMonths.Text = "";
            }

        }
    }
}
