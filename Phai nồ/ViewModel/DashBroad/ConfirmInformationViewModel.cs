using Đồ_án.Command;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Đồ_án.Database;
using System.Windows.Forms;
using Đồ_án.ViewModel.Login.Service;

namespace Đồ_án.ViewModel.DashBroad
{
    public class ConfirmInformationViewModel : BaseViewModel
    {
        private ConfirmInformationCommand confirmInformationCommand;

        public ConfirmInformationCommand ConfirmInformationCommand
        {
            get { return confirmInformationCommand; }
            set { confirmInformationCommand = value; }
        }
        public ConfirmInformationViewModel()
        {
            confirmInformationCommand = new ConfirmInformationCommand(this);
        }
        private User student;

        public User Student
        {
            get { return student; }
            set { student = value; OnPropertyChanged("Student"); }
        }
        public async void OnExcute()
        {
            int i = await UserServices.Instance.SaveUserToDatabase(Student);
            if (i == 0)
            {
                MessageBox.Show("Failed");
            }
            else
            {
                MessageBox.Show("Succesfully");
            }
        }
    }
}
