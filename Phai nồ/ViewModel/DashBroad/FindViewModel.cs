using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using Đồ_án.Command;
using Đồ_án.Model;
namespace Đồ_án.ViewModel
{
    public class FindViewModel : INotifyPropertyChanged
    {
        protected void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
        }
        public event PropertyChangedEventHandler PropertyChanged;

        private FindCommand findCommand;

        public FindCommand FindCommand
        {
            get { return findCommand; }
            set { findCommand = value; OnPropertyChanged("FindCommand"); }
        }

        private List<ProfileStudent> listProfileStudent;

        public List<ProfileStudent> ListProfileStudent
        {
            get { return listProfileStudent; }
            set { listProfileStudent = value; }
        }
        private ProfileStudent profileStudent;
        public ProfileStudent ProfileStudent
        {
            get { return profileStudent; }
            set { profileStudent = value; OnPropertyChanged("ProfileStudent"); }
        }
        public FindViewModel()
        {
            findCommand = new FindCommand(this);
            listProfileStudent = new List<ProfileStudent>();
            listProfileStudent.Add(new ProfileStudent(21522645, "C", "Male", "18/04/2003", "HCM", 12345678, "HCM", 0908114708, "Kinh", "A", "Teacher", "04/04/1963", "VietNam", 123456789, "XXXXXXXXXX", 090811111, "Kinh", "B", "Teacher", "26/10/1966", "VietNam", 12345, "XXXXXXXXXX", 09082222, "Kinh", "NK-Prison", 123321, "Excellent", "CNPM", "Software Technology", "Software Engineering"));
            ProfileStudent = listProfileStudent[0];

        }
        private string findID;

        public string FindID
        {
            get { return findID; }
            set { findID = value; OnPropertyChanged("FindID"); }
        }

        public void OnExcute()
        {
            int x = 0;
            if (FindID != null) x = int.Parse(FindID);
            for (int i = 0; i < listProfileStudent.Count; i++)
            {
                if (x == listProfileStudent[i].IdStudent)
                {
                    profileStudent = listProfileStudent[i];
                }
            }
        }
    }
}
