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
using _27_11_2018.Models;

namespace _27_11_2018
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        PhoneBookEntities db = new PhoneBookEntities();
        public MainWindow()
        {
            InitializeComponent();
            FillCompaniesCmb();
            FillPositionsCmb();
        }

        private void FillCompaniesCmb()
        {
            Company companyAll = new Company
            {
                Id=0,
                Name="Hamısı"
            };
            cmbCompaniesName.Items.Add(companyAll);
            cmbCompaniesName.SelectedValuePath = "0";

            foreach (Company cmp in db.Companies.ToList())
            {
                cmbCompaniesName.Items.Add(cmp);
            }
        }

        private void FillPositionsCmb()
        {
            Position positionAll = new Position
            {
                Id=0,
                Name="Hamısı"
            };
            cmbPositionsName.Items.Add(positionAll);
            cmbPositionsName.SelectedValuePath = "0";

            foreach (Position pst in db.Positions.ToList())
            {
                cmbPositionsName.Items.Add(pst);
            }
        }

        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            int CompaniesId = 0;
            int PositionId = 0;

            dgvPersons.Items.Clear();

            if (cmbCompaniesName.SelectedItem!=null)
            {
                Company company = cmbCompaniesName.SelectedItem as Company;
                CompaniesId = company.Id;
            }

            if (cmbPositionsName.SelectedItem!=null)
            {
                Position position = cmbPositionsName.SelectedItem as Position;
                PositionId = position.Id;
            }

            PhoneBookEntities current = new PhoneBookEntities();

            List<Person> people = current.Persons.Where(p =>
            (CompaniesId != 0 ? p.CompanyId == CompaniesId : true) &&
            (PositionId != 0 ? p.PositionId == PositionId : true) &&
            (p.Name.ToLower().Contains(txtPersonDetails.Text.ToLower()) || p.Surname.ToLower().Contains(txtPersonDetails.Text.ToLower()) || p.Mobile.Contains(txtPersonDetails.Text) || p.WorkPhone.Contains(txtPersonDetails.Text))).ToList();

            foreach (Person person in people)
            {
                VwPerson item = new VwPerson
                {
                    Id = person.Id,
                    Company = person.Company.Name,
                    Position = person.Position.Name,
                    FullName = person.Name + " " + person.Surname,
                    Mobile = person.Mobile,
                    WorkPhone = person.WorkPhone,
                    Email = person.Email
                };
                dgvPersons.Items.Add(item);
            }

        }

        public void triggersButton()
        {
            this.btnSearch_Click(btnSearch, new RoutedEventArgs());
        }

        private void btnAddPerson_Click(object sender, RoutedEventArgs e)
        {
            AddPerson addPerson = new AddPerson();
            addPerson.Title = "Şəxs yarat";
            addPerson.MainWindow = this;
            addPerson.ShowDialog();
            addPerson.ShowAddBtn();
        }

        PhoneBookEntities currentcombo = new PhoneBookEntities();

        private void dgvPersons_SelectedCellsChanged(object sender, SelectedCellsChangedEventArgs e)
        {
            if (dgvPersons.SelectedItem != null)
            {
                VwPerson VwPerson = dgvPersons.SelectedItem as VwPerson;

                AddPerson addPerson = new AddPerson
                {
                    Title = "Şəxs yenilə/sil",
                    MainWindow = this
                };
                addPerson.ShowDeleteAndUpdate();
                addPerson.Person = currentcombo.Persons.Find(VwPerson.Id);
                addPerson.ShowDialog();
                this.triggersButton();
            }

        }
    }
}
