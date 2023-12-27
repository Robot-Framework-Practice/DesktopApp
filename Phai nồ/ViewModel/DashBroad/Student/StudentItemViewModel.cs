using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Đồ_án.ViewModel.DashBroad
{
    public class StudentItemViewModel
    {
        public string ClassName { get; set; }
        public string IdClass { get; set; }
        public string LopTRG { get; set; }

       public StudentItemViewModel(string className, string classCode, string lopTRG)
       {
            ClassName = className;
            IdClass= classCode;
            LopTRG= lopTRG;

       }
    }
}
