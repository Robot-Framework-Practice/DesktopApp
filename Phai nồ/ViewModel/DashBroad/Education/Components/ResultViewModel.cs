using Đồ_án.Command;
using Đồ_án.Database;
using Đồ_án.ViewModel.Login;
using Đồ_án.ViewModel.Login.Service;
using MaterialDesignThemes.Wpf.Converters;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Security.RightsManagement;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using static Đồ_án.ViewModel.Login.LoginServices;
using static Đồ_án.ViewModel.ResultViewModel;

namespace Đồ_án.ViewModel
{
    public class ResultViewModel : BaseViewModel
    {
        public class StudentResultProperties
        {
            public string MaMH { get; set; }
            public string MaLop { get; set; }
            public int TC { get; set; }
            public string QT { get; set; }
            public string GK { get; set; }
            public string TH { get; set; }
            public string CK { get; set; }
            public double TB { get; set; }
        }
        public class StudentResultDisplay
        {
            public List<StudentResultProperties> List { get; set; }
            public string HK_Year { get; set; }
            public double TB_HK { get; set; }
        }


        public class TeacherResultProperties
        {
            public string MaSV { get; set; }
            public string HoTen { get; set; }
            public double QT { get; set; }
            public double GK { get; set; }
            public double TH { get; set; }
            public double CK { get; set; }
            public double TB { get; set; }
        }
        public class TeacherLopDisplay
        {
            public List<TeacherResultProperties> List { get; set; }
            public string MaLop { get; set; }
            public string HeSo { get; set; }
            public double TB_Lop { get; set; }
        }
        public class TeacherResultDisplay
        {
            public List<TeacherLopDisplay> List { get; set; }
            public string HK_Year { get; set; }
        }



        public ObservableCollection<StudentResultDisplay> StudentResultDisplays { get; set; }
        public Visibility IsSV { get; set; }

        public ObservableCollection<TeacherResultDisplay> TeacherResultDisplays { get; set; }
        public Visibility IsGV { get; set; }


        private bool _isChecked;
        public bool IsChecked
        {
            get
            {
                return _isChecked;
            }
            set
            {
                _isChecked = value;
                if (value)
                {
                    ListUsers = new ObservableCollection<string>(db.Users.Where(u => u.UserRole.Role == "SV").Select(u => u.IdUser));
                }
                else
                {
                    ListUsers = new ObservableCollection<string>(db.Users.Where(u => u.UserRole.Role == "GV").Select(u => u.IdUser));
                }
                OnPropertyChanged(nameof(ListUsers));
            }
        }

        public string _selectedUser;
        public string SelectedUser
        {
            get { return _selectedUser; }
            set
            {
                _selectedUser = value;
                IsSV = Visibility.Collapsed;
                IsGV = Visibility.Collapsed;
                OnPropertyChanged(nameof(IsSV));
                OnPropertyChanged(nameof(IsGV));

                ReloadByIdUser(value);
            }
        }
        public ObservableCollection<string> ListUsers { get; set; }

        Đồ_ÁnEntities db => DataProvider.Instance.Database;
        public ICommand SaveUpdated { get; set; }


        public ResultViewModel()
        {
            IsChecked = false;
            SaveUpdated = new RelayCommand<object>(prop => true, prop => SaveUpdate());
            LoginServices.UpdateCurrentUser += Reload;
            Reload(this, new LoginEvent(LoginServices.CurrentUser));
        }

        private void Reload(object sender, LoginEvent e)
        {
            IsSV = Visibility.Collapsed;
            IsGV = Visibility.Collapsed;
            OnPropertyChanged(nameof(IsSV));
            OnPropertyChanged(nameof(IsGV));

            if (LoginServices.CurrentUser.UserRole.Role == "ADMIN")
                if (!string.IsNullOrEmpty(SelectedUser))
                {
                    ReloadByIdUser(SelectedUser);
                }
                else return;
            else ReloadByIdUser();
        }

        private async void ReloadByIdUser(string idUser = null)
        {
            User user = idUser == null ? null : UserServices.Instance.GetUserById(idUser);
            if (user == null)
                if (LoginServices.CurrentUser == null)
                    return;
                else
                    user = LoginServices.CurrentUser;
            string role = user.UserRole.Role;
            idUser = user.IdUser;

            var AllRegisteredClasses = db.Classes.Where(c => c.Users.Where(u => u.IdUser == idUser).Any()).Select(c => new
            {
                Classes = c,
                Subjects = c.Subject,
                YearBD = c.NgBD.Value.Year,
                MonBD = c.NgBD.Value.Month,
            });


            try
            {
                if (string.Compare(role, "SV") == 0)
                {
                    if (StudentResultDisplays == null)
                        StudentResultDisplays = new ObservableCollection<StudentResultDisplay>();
                    else StudentResultDisplays.Clear();
                    IsSV = Visibility.Visible;
                    OnPropertyChanged(nameof(IsSV));


                    foreach (int yearBD in AllRegisteredClasses.Select(temp => temp.YearBD).Distinct().OrderBy(temp => temp))
                    {
                        StudentResultDisplay HK1 = new StudentResultDisplay();
                        StudentResultDisplay HK2 = new StudentResultDisplay();
                        StudentResultDisplay HK3 = new StudentResultDisplay();

                        HK2.HK_Year = "HK 2, NH " + (yearBD - 1) + "-" + yearBD;
                        HK3.HK_Year = "HK 3, NH " + (yearBD - 1) + "-" + yearBD;
                        HK1.HK_Year = "HK 1, NH " + yearBD + "-" + (yearBD + 1);




                        foreach (var resultProperty in AllRegisteredClasses.Where(temp => temp.YearBD == yearBD).Select(temp => new
                        {
                            idClass = temp.Classes.IdClass,
                            monBD = temp.MonBD,
                            Subjects = temp.Subjects
                        }).Distinct().OrderBy(temp => temp.idClass))
                        {
                            StudentResultProperties rp = new StudentResultProperties();
                            Result diem = await db.Results.FirstOrDefaultAsync(t => t.IdClass == resultProperty.idClass && t.IdStudent == idUser);

                            if (diem == null)
                            {
                                diem = new Result()
                                {
                                    IdClass = resultProperty.idClass,
                                    IdStudent = idUser,
                                    QT = 0,
                                    GK = 0,
                                    TH = 0,
                                    CK = 0,
                                };
                                db.Results.Add(diem);
                            }

                            rp.MaMH = resultProperty.Subjects.IdSubject;
                            rp.MaLop = resultProperty.idClass;
                            rp.TC = resultProperty.Subjects.TinChiLT.Value + resultProperty.Subjects.TinChiTH.Value;
                            rp.QT = diem.QT.Value > 0 ? diem.QT.Value.ToString("F") : "-";
                            rp.GK = diem.GK.Value > 0 ? diem.GK.Value.ToString("F") : "-";
                            rp.TH = diem.TH.Value > 0 ? diem.TH.Value.ToString("F") : "-";
                            rp.CK = diem.CK.Value > 0 ? diem.CK.Value.ToString("F") : "-";
                            rp.TB = diem.QT.Value * resultProperty.Subjects.RatioQT.Value / 100 +
                                    diem.GK.Value * resultProperty.Subjects.RatioGK.Value / 100 +
                                    diem.TH.Value * resultProperty.Subjects.RatioTH.Value / 100 +
                                    diem.CK.Value * resultProperty.Subjects.RatioCK.Value / 100;


                            string HK;
                            if (resultProperty.monBD <= 3)
                            {
                                HK = "2";
                                if (HK2.List == null) HK2.List = new List<StudentResultProperties>();
                                HK2.List.Add(rp);
                            }
                            else if (resultProperty.monBD <= 8)
                            {
                                HK = "3";
                                if (HK3.List == null) HK3.List = new List<StudentResultProperties>();
                                HK3.List.Add(rp);
                            }
                            else if (resultProperty.monBD <= 12)
                            {
                                HK = "1";
                                if (HK1.List == null) HK1.List = new List<StudentResultProperties>();
                                HK1.List.Add(rp);
                            }
                        }


                        if (HK2.List != null)
                        {
                            HK2.TB_HK = HK2.List.Where(temp => temp.TB > 0).Average(temp => temp.TB);
                            StudentResultDisplays.Add(HK2);
                        }
                        if (HK3.List != null)
                        {
                            HK3.TB_HK = HK3.List.Where(temp => temp.TB > 0).Average(temp => temp.TB);
                            StudentResultDisplays.Add(HK3);
                        }
                        if (HK1.List != null)
                        {
                            HK1.TB_HK = HK1.List.Where(temp => temp.TB > 0).Average(temp => temp.TB);
                            StudentResultDisplays.Add(HK1);
                        }
                    }
                    await db.SaveChangesAsync();
                    OnPropertyChanged(nameof(StudentResultDisplays));
                }
                else if (string.Compare(role, "GV") == 0)
                {
                    if (TeacherResultDisplays == null)
                        TeacherResultDisplays = new ObservableCollection<TeacherResultDisplay>();
                    else TeacherResultDisplays.Clear();
                    IsGV = Visibility.Visible;
                    OnPropertyChanged(nameof(IsGV));
                    SaveUpdated = new RelayCommand<object>(prop => true, prop => SaveUpdate());


                    foreach (int yearBD in AllRegisteredClasses.Select(temp => temp.YearBD).Distinct().OrderBy(temp => temp))
                    {
                        TeacherResultDisplay HK1 = new TeacherResultDisplay();
                        TeacherResultDisplay HK2 = new TeacherResultDisplay();
                        TeacherResultDisplay HK3 = new TeacherResultDisplay();

                        HK2.HK_Year = "HK 2, NH " + (yearBD - 1) + "-" + yearBD;
                        HK3.HK_Year = "HK 3, NH " + (yearBD - 1) + "-" + yearBD;
                        HK1.HK_Year = "HK 1, NH " + yearBD + "-" + (yearBD + 1);


                        foreach (var resultLop in AllRegisteredClasses.Where(temp => temp.YearBD == yearBD).Select(temp => new
                        {
                            Class = temp.Classes,
                            monBD = temp.MonBD,
                            Subjects = temp.Subjects
                        }).Distinct().OrderBy(temp => temp.Class.IdClass))
                        {
                            TeacherLopDisplay ld = new TeacherLopDisplay();
                            ld.MaLop = resultLop.Class.IdClass;
                            ld.HeSo = string.Empty;
                            if (resultLop.Subjects.RatioQT > 0) ld.HeSo += "QK:" + resultLop.Subjects.RatioQT.ToString() + "% ";
                            if (resultLop.Subjects.RatioGK > 0) ld.HeSo += " GK:" + resultLop.Subjects.RatioGK.ToString() + "% ";
                            if (resultLop.Subjects.RatioTH > 0) ld.HeSo += " TH:" + resultLop.Subjects.RatioTH.ToString() + "% ";
                            if (resultLop.Subjects.RatioCK > 0) ld.HeSo += " CK:" + resultLop.Subjects.RatioCK.ToString() + "% ";
                            ld.List = new List<TeacherResultProperties>();


                            foreach (var d in resultLop.Class.Results.Join(db.Users, r => r.IdStudent, u => u.IdUser, (r, u) => new
                            {
                                IdStudent = r.IdStudent,
                                FullName = u.DetailUser.FullName,
                                QT = r.QT,
                                GK = r.GK,
                                TH = r.TH,
                                CK = r.CK,
                            }).OrderBy(temp => temp.IdStudent))
                            {
                                TeacherResultProperties temp = new TeacherResultProperties()
                                {
                                    MaSV = d.IdStudent,
                                    HoTen = d.FullName,
                                    QT = d.QT.Value,
                                    GK = d.GK.Value,
                                    TH = d.TH.Value,
                                    CK = d.CK.Value,
                                };

                                temp.TB =
                                    temp.QT * resultLop.Subjects.RatioQT.Value / 100 +
                                    temp.GK * resultLop.Subjects.RatioGK.Value / 100 +
                                    temp.TH * resultLop.Subjects.RatioTH.Value / 100 +
                                    temp.CK * resultLop.Subjects.RatioCK.Value / 100;

                                ld.List.Add(temp);
                            }


                            ld.TB_Lop = ld.List.Where(temp => temp.TB > 0).Average(temp => temp.TB);

                            string HK;
                            if (resultLop.monBD <= 3)
                            {
                                HK = "2";
                                if (HK2.List == null) HK2.List = new List<TeacherLopDisplay>();
                                HK2.List.Add(ld);
                            }
                            else if (resultLop.monBD <= 8)
                            {
                                HK = "3";
                                if (HK3.List == null) HK3.List = new List<TeacherLopDisplay>();
                                HK3.List.Add(ld);
                            }
                            else if (resultLop.monBD <= 12)
                            {
                                HK = "1";
                                if (HK1.List == null) HK1.List = new List<TeacherLopDisplay>();
                                HK1.List.Add(ld);
                            }

                        }


                        if (HK2.List != null)
                        {
                            TeacherResultDisplays.Add(HK2);
                        }
                        if (HK3.List != null)
                        {
                            TeacherResultDisplays.Add(HK3);
                        }
                        if (HK1.List != null)
                        {
                            TeacherResultDisplays.Add(HK1);
                        }
                    }

                    OnPropertyChanged(nameof(TeacherResultDisplays));
                }
            }
            catch
            {
                MessageBox.Show("Fail to Load Database", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }

        }

        private async void SaveUpdate()
        {
            try
            {
                foreach (TeacherResultDisplay t in TeacherResultDisplays)
                {
                    foreach (TeacherLopDisplay l in t.List)
                    {
                        foreach (TeacherResultProperties p in l.List)
                        {
                            Result result = await db.Results.FirstOrDefaultAsync(temp => temp.IdClass == l.MaLop && temp.IdStudent == p.MaSV);

                            result.QT = p.QT;
                            result.GK = p.GK;
                            result.TH = p.TH;
                            result.CK = p.CK;
                            result.DiemTB =
                                result.QT * result.Class.Subject.RatioQT / 100 +
                                result.GK * result.Class.Subject.RatioGK / 100 +
                                result.TH * result.Class.Subject.RatioTH / 100 +
                                result.CK * result.Class.Subject.RatioCK / 100;
                            p.TB = result.DiemTB.Value;
                            await db.SaveChangesAsync();
                        }
                    }
                }
                Reload(this, new LoginEvent(LoginServices.CurrentUser));
                MessageBox.Show("Save Successful", "Save", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch
            {
                MessageBox.Show("Fail to Save", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
