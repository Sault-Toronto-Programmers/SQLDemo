using MySql.Data.MySqlClient;
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

namespace SQLDemo
{
    public partial class MainWindow : Window
    {
        MySqlConnection conn;
        public MainWindow()
        {
            InitializeComponent();
            
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                conn = new MySqlConnection("datasource=127.0.0.1;port=3306;username=root;password=root;database=suppliers;SslMode=none");
                conn.Open();
            }catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            try { 
                List<Company> companies = new List<Company>();
                MySqlCommand cmd = new MySqlCommand("select Company, email_address, Phone from ccap_suppliers where city=@City", conn);
                cmd.Parameters.AddWithValue("@City", City.Text);

                MySqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows) { 
                    while (reader.Read())
                    {
                        Company company = new Company(reader[0].ToString(), reader[1].ToString(), reader[2].ToString());
                        companies.Add(company);
                    }
                    CompanyList.ItemsSource = companies;
                }
                else
                {
                    MessageBox.Show("No companies found in the selected city");
                }
            }catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

        }

        private void Window_Unloaded(object sender, RoutedEventArgs e)
        {
            conn.Close();
        }
    }

    class Company
    {
        public string CompanyName { get; set; }
        public string email { get; set; }
        public string phone { get; set; }

        public Company(string _company, string _email, string _phone)
        {
            CompanyName = _company;
            email = _email;
            phone = _phone;
        }
    }
}
