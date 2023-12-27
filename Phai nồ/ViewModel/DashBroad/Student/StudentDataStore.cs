using Đồ_án.Database;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Đồ_án.ViewModel.DashBroad
{
    public class StudentDataStore
    {
        public ObservableCollection<Class> CList { get; set;  }

        private Class _selectedClass;
        public Class SelectedClass
        {
            get { return _selectedClass; }
            set
            {
                _selectedClass = value;
                OnSelectedClassChanged?.Invoke();
            }
        }
        public event Action OnSelectedClassChanged;
    }
}
