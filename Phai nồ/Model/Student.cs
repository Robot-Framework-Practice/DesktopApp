using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Đồ_án.Model
{
    public class Student
    {
        public string Hoten { get; set; }
        public string MSSV { get; set; }
        public DateTime Date { get; set; }
        public string Country { get; set; }
        public string PhoneNumber { get; set; }
        public string Address { get; set; }
        public string Tongiao { get; set; }
        public string CMMD { get; set; }
        public bool Sex { get; set; }
        public Student(string hoten, string mSSV, DateTime date, string country, string phoneNumber, string address, string tongiao, string cMMD, bool sex)
        {
            Hoten = hoten;
            MSSV = mSSV;
            Date = date;
            Country = country;
            PhoneNumber = phoneNumber;
            Address = address;
            Tongiao = tongiao;
            CMMD = cMMD;
            Sex = sex;
        }
        public Student(string hoten, string mSSV)
        {
            Hoten = hoten;
            MSSV = mSSV;
            
        }
    }
}
