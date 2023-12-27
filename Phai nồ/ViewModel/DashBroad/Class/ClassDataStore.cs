using Đồ_án.Database;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Đồ_án.ViewModel.DashBroad
{
    public class ClassDataStore
    {
        public ObservableCollection<User> SList { get; set; }
		private User _selectedStudent;
		public User SelectedStudent
        {
			get { return _selectedStudent; }
			set
			{
				_selectedStudent = value;
				OnSelectedStudentChanged?.Invoke();
			}
		}
		public event Action OnSelectedStudentChanged;
    }
}
