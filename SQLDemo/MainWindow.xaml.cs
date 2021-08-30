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
            MySqlCommand cmd = new MySqlCommand("select Company from ccap_suppliers where Supplier_id=@SupID", conn);
            cmd.Parameters.AddWithValue("@SupID", SupId.Text);
            string name = Convert.ToString(cmd.ExecuteScalar());
            SupName.Text = name;
        }

        private void Window_Unloaded(object sender, RoutedEventArgs e)
        {
            conn.Close();
        }
    }
}
