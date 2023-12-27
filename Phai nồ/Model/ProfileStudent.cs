using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Đồ_án.Model
{
    public class ProfileStudent : INotifyPropertyChanged
    {
        protected void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
        }
        public event PropertyChangedEventHandler PropertyChanged;

        //I
        private int idStudent;

        public int IdStudent
        {
            get { return idStudent; }
            set { idStudent = value; OnPropertyChanged("IdStudent"); }
        }

        private string name;
        public string NameStudent
        {
            get { return name; }
            set { name = value; OnPropertyChanged("NameStudent"); }
        }
        private string gender;
        public string Gender
        {
            get { return gender; }
            set { gender = value; OnPropertyChanged("Gender"); }
        }
        private string dateOfBirth;

        public string DateOfBirth
        {
            get { return dateOfBirth; }
            set { dateOfBirth = value; OnPropertyChanged("DateOfBirth"); }
        }
        private string birthPlace;

        public string BirthPlace
        {
            get { return birthPlace; }
            set { birthPlace = value; OnPropertyChanged("BirthPlace"); }
        }
        private Nullable<int> identifyNumber;

        public Nullable<int> CCCD
        {
            get { return identifyNumber; }
            set { identifyNumber = value; OnPropertyChanged("CCCD"); }
        }
        private string placeIssueID;

        public string PlaceCCCD
        {
            get { return placeIssueID; }
            set { placeIssueID = value; OnPropertyChanged("PlaceCCCD"); }
        }
        private Nullable<int> phoneNumber;

        public Nullable<int> PhoneNumber
        {
            get { return phoneNumber; }
            set { phoneNumber = value; OnPropertyChanged("PhoneNumber"); }
        }
        private string ethnic;

        public string Ethnic
        {
            get { return ethnic; }
            set { ethnic = value; OnPropertyChanged("Ethnic"); }
        }

        //II Father

        private string fname;
        public string FName
        {
            get { return fname; }
            set { fname = value; OnPropertyChanged("FName"); }
        }
        private string foccupation;
        public string FOccupation
        {
            get { return foccupation; }
            set { foccupation = value; OnPropertyChanged("FOccupation"); }
        }
        private string fdateOfBirth;

        public string FDateOfBirth
        {
            get { return fdateOfBirth; }
            set { fdateOfBirth = value; OnPropertyChanged("FDateOfBirth"); }
        }
        private string fcountry;

        public string FCountry
        {
            get { return fcountry; }
            set { fcountry = value; OnPropertyChanged("FCountry"); }
        }
        private Nullable<int> fidentifyNumber;

        public Nullable<int> FCCCD
        {
            get { return fidentifyNumber; }
            set { fidentifyNumber = value; OnPropertyChanged("FCCCD"); }
        }
        private string faddress;

        public string FAddress
        {
            get { return faddress; }
            set { faddress = value; OnPropertyChanged("FAddress"); }
        }
        private Nullable<int> fphoneNumber;

        public Nullable<int> FPhoneNumber
        {
            get { return fphoneNumber; }
            set { fphoneNumber = value; OnPropertyChanged("FPhoneNumber"); }
        }
        private string fethnic;

        public string FEthnic
        {
            get { return fethnic; }
            set { fethnic = value; OnPropertyChanged("FEthnic"); }
        }

        //II Mother

        private string mname;
        public string MName
        {
            get { return mname; }
            set { mname = value; OnPropertyChanged("MName"); }
        }
        private string moccupation;
        public string MOccupation
        {
            get { return moccupation; }
            set { moccupation = value; OnPropertyChanged("MOccupation"); }
        }
        private string mdateOfBirth;

        public string MDateOfBirth
        {
            get { return mdateOfBirth; }
            set { mdateOfBirth = value; OnPropertyChanged("MDateOfBirth"); }
        }
        private string mcountry;

        public string MCountry
        {
            get { return mcountry; }
            set { mcountry = value; OnPropertyChanged("MCountry"); }
        }
        private Nullable<int> midentifyNumber;

        public Nullable<int> MCCCD
        {
            get { return midentifyNumber; }
            set { midentifyNumber = value; OnPropertyChanged("MCCCD"); }
        }
        private string maddress;

        public string MAddress
        {
            get { return maddress; }
            set { maddress = value; OnPropertyChanged("MAddress"); }
        }
        private Nullable<int> mphoneNumber;

        public Nullable<int> MPhoneNumber
        {
            get { return mphoneNumber; }
            set { mphoneNumber = value; OnPropertyChanged("MPhoneNumber"); }
        }
        private string methnic;

        public string MEthnic
        {
            get { return methnic; }
            set { methnic = value; OnPropertyChanged("MEthnic"); }
        }

        //III

        private string secondarySchool;

        public string SecondarySchool
        {
            get { return secondarySchool; }
            set { secondarySchool = value; OnPropertyChanged("SecondarySchool"); }
        }
        private Nullable<int> healthInsuranceID;

        public Nullable<int> HealthInsuranceID
        {
            get { return healthInsuranceID; }
            set { healthInsuranceID = value; OnPropertyChanged("HealthInsuranceID"); }
        }
        private string academicAchievement;

        public string AcademicAchievement
        {
            get { return academicAchievement; }
            set { academicAchievement = value; OnPropertyChanged("AcademicAchievement"); }
        }
        private string facultyCode;

        public string FacultyCode
        {
            get { return facultyCode; }
            set { facultyCode = value; OnPropertyChanged("FacultyCode"); }
        }
        private string facultyName;

        public string FacultyName
        {
            get { return facultyName; }
            set { facultyName = value; OnPropertyChanged("FacultyName"); }
        }
        private string majors;

        public string Majors
        {
            get { return majors; }
            set { majors = value; OnPropertyChanged("Majors"); }
        }

        public ProfileStudent(int id, string name, string gender, string dateOfBirth, string birthPlace, int identifyNumber, string placeIssueID, int phoneNumber, string ethnic, string fName, string fOccupation, string fDateOfBirth, string fCountry, int fIdentifyNumber, string fAddress, int fPhoneNumber, string fEthnic, string mName, string mOccupation, string mDateOfBirth, string mCountry, int mIdentifyNumber, string mAddress, int mPhoneNumber, string mEthnic, string secondarySchool, int healthInsuranceID, string academicAchievement, string facultyCode, string facultyName, string majors)
        {
            this.idStudent = id;
            this.name = name;
            this.gender = gender;
            this.dateOfBirth = dateOfBirth;
            this.birthPlace = birthPlace;
            this.identifyNumber = identifyNumber;
            this.placeIssueID = placeIssueID;
            this.phoneNumber = phoneNumber;
            this.ethnic = ethnic;
            this.fname = fname;
            this.foccupation = foccupation;
            this.fdateOfBirth = fdateOfBirth;
            this.fcountry = fcountry;
            this.fidentifyNumber = fidentifyNumber;
            this.faddress = faddress;
            this.fphoneNumber = fphoneNumber;
            this.fethnic = fethnic;
            this.mname = mname;
            this.moccupation = moccupation;
            this.mdateOfBirth = mdateOfBirth;
            this.mcountry = mcountry;
            this.midentifyNumber = midentifyNumber;
            this.maddress = maddress;
            this.mphoneNumber = mphoneNumber;
            this.methnic = methnic;
            this.secondarySchool = secondarySchool;
            this.healthInsuranceID = healthInsuranceID;
            this.academicAchievement = academicAchievement;
            this.facultyCode = facultyCode;
            this.facultyName = facultyName;
            this.majors = majors;
        }
    }
}
//listProfileStudent.Add(new ProfileStudent("C", "Male", "18/04/2003", "HCM", 12345678, "HCM", 0908114708, "Kinh", "A", "Teacher", "04/04/1963", "VietNam", 123456789, "XXXXXXXXXX", 090811111, "Kinh", "B", "Teacher", "26/10/1966", "VietNam", 12345, "XXXXXXXXXX", 09082222, "Kinh", "NK-Prison", 123321, "Excellent", "CNPM", "Software Technology", "Software Engineering"));
