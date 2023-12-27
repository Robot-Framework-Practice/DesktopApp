using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Đồ_án.Command;
using Đồ_án.View;
namespace Đồ_án.ViewModel
{
    public class EditInformationViewModel : BaseViewModel
    {
        private bool isOpened = false;

        public bool IsOpened
        {
            get { return isOpened; }
            set
            {
                isOpened = value;
                OnPropertyChanged("IsOpened");
            }
        }



        private EditInformationCommand editInformationCommand;

        public EditInformationCommand EditInformation
        {
            get { return editInformationCommand; }
            set { editInformationCommand = value; }
        }

        public EditInformationViewModel()
        {
            editInformationCommand = new EditInformationCommand(this);
        }
        public void OnExcute()
        {
            if (IsOpened == true)
            {
                IsOpened = false;
            }
            else
            {
                IsOpened = true;
            }

        }
    }
}
