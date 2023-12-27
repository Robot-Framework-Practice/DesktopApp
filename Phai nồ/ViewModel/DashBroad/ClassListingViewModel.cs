using Đồ_án.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Đồ_án.ViewModel
{
    public class ClassListingViewModel
    {
        public readonly ObservableCollection<Student> _student;

        public IEnumerable<Student> Student => _student;
        public ClassListingViewModel()
        {
            _student = new ObservableCollection<Student>();
            _student.Add(new Student("Nguyen Van a", "1234567"));
            _student.Add(new Student("Nguyen Van b", "252414543"));
            _student.Add(new Student("Nguyen", "4232454"));
            
        }
    }
}
