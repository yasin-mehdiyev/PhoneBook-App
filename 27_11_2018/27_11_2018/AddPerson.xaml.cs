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
using System.Windows.Shapes;
using _27_11_2018.Models;

namespace _27_11_2018
{
    /// <summary>
    /// Interaction logic for AddPerson.xaml
    /// </summary>
    public partial class AddPerson : Window
    {
        PhoneBookEntities db = new PhoneBookEntities();

        public MainWindow MainWindow;
        public Person Person=new Person();

        public AddPerson()
        {
            InitializeComponent();
            cmbAddPersonCompany.ItemsSource = db.Companies.ToList();
            cmbAddPersonPosition.ItemsSource = db.Positions.ToList();
        }

        public void ShowAddBtn()
        {
            BtnAddPersonButton.Visibility = Visibility.Visible;
            BtnDeleteButton.Visibility = Visibility.Hidden;
            BtnUpdateButton.Visibility = Visibility.Hidden;
        }

        public void ShowDeleteAndUpdate()
        {
            BtnAddPersonButton.Visibility = Visibility.Hidden;
            BtnDeleteButton.Visibility = Visibility.Visible;
            BtnUpdateButton.Visibility = Visibility.Visible;
        }

        private void BtnAddPersonButton_Click(object sender, RoutedEventArgs e)
        {
            Person person = new Person
            {
                CompanyId = Convert.ToInt32(cmbAddPersonCompany.SelectedValue),
                PositionId=Convert.ToInt32(cmbAddPersonPosition.SelectedValue),
                Name=txtAddPersonName.Text,
                Surname=txtAddPersonSurName.Text,
                Mobile=txtAddPersonMobile.Text,
                WorkPhone=txtAddPersonWorkPhone.Text,
                Email=txtAddPersonEmail.Text
            };

            db.Persons.Add(person);
            db.SaveChanges();

            MainWindow.triggersButton();
            this.Close();

        }

        private void FillDataFields()
        {
            cmbAddPersonCompany.SelectedValue = Person.CompanyId.ToString();
            cmbAddPersonPosition.SelectedValue = Person.PositionId.ToString();
            txtAddPersonEmail.Text = Person.Email;
            txtAddPersonMobile.Text = Person.Mobile;
            txtAddPersonSurName.Text = Person.Surname;
            txtAddPersonWorkPhone.Text = Person.WorkPhone;
            txtAddPersonName.Text = Person.Name;
        }

        private void BtnUpdateButton_Click(object sender, RoutedEventArgs e)
        {
            Person UpPerson = db.Persons.Find(Person.Id);

            UpPerson.CompanyId = Convert.ToInt32(cmbAddPersonCompany.SelectedValue);
            UpPerson.PositionId = Convert.ToInt32(cmbAddPersonPosition.SelectedValue);
            UpPerson.Name = txtAddPersonName.Text;
            UpPerson.Surname = txtAddPersonSurName.Text;
            UpPerson.WorkPhone = txtAddPersonWorkPhone.Text;
            UpPerson.Mobile = txtAddPersonMobile.Text;
            UpPerson.Email = txtAddPersonEmail.Text;

            db.SaveChanges();


            MainWindow.triggersButton();
            this.Close();
        }

        private void BtnDeleteButton_Click(object sender, RoutedEventArgs e)
        {
            db.Persons.Remove(db.Persons.Find(Person.Id));
            db.SaveChanges();
            MainWindow.triggersButton();
            this.Close();
        }

        private void WindowsAddPerson_ContentRendered(object sender, EventArgs e)
        {
            FillDataFields();
        }
    }
}
