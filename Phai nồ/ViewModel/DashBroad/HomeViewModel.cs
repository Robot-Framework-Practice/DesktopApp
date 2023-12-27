using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using Đồ_án.Command;
using Đồ_án.Database;
using Đồ_án.View;
namespace Đồ_án.ViewModel
{
    public class HomeViewModel : BaseViewModel
    {
        public ICommand HomeFrame { get; set; }
        public ICommand InsertNewNotifycation { get; set; }
        public ICommand InsertNewRegisterNotifycation { get; set; }
        public ICommand AddNotifycation { get; set; }
        public ICommand DeleteCommand { get; set; }
        public ICommand UpdateInformation { get; set; }
        public ICommand NotifycationUpdating { get; set; }
        public ICommand Update { get; set; }
        public ICommand DeleteAll { get; set; }
        public string path { get; set; }
        private ObservableCollection<Đồ_án.Database.Notifycation> listNotifycation;

        public ObservableCollection<Đồ_án.Database.Notifycation> ListNotifycation
        {
            get { return listNotifycation; }
            set { listNotifycation = value; OnPropertyChanged(nameof(ListNotifycation)); }
        }
        public View.InsertNewNotifycation insertNewNotifycation { get; set; }
        public View.InsertNewRegisterNotifycation insertNewRegisterNotifycation { get; set; }
        private static DateTime selectedDate;

        public DateTime SelectedDate
        {
            get
            {
                return selectedDate;
            }
            set
            {
                selectedDate = value;
                OnPropertyChanged(nameof(SelectedDate));
                LoadNotifycation();
            }
        }

        private string selectedType;

        public string SelectedType

        {
            get { if (selectedType == null) return "ABC"; else return selectedType; }
            set { selectedType = value; OnPropertyChanged(nameof(SelectedType)); }
        }

        private Đồ_án.Database.Notifycation newNotifycation;

        public Đồ_án.Database.Notifycation NewNotifycation
        {
            get { return newNotifycation; }
            set
            {
                newNotifycation = value;
                OnPropertyChanged(nameof(NewNotifycation));
            }
        }

        private static Đồ_án.Database.Notifycation updateNotifycation { get; set; }

        public Đồ_án.Database.Notifycation UpdateNotifycation
        {
            get { return updateNotifycation; }
            set
            {
                updateNotifycation = value;
                OnPropertyChanged(nameof(UpdateNotifycation));
            }
        }

        private View.Home home;


        public HomeViewModel()
        {
            newNotifycation = new Notifycation();
            newNotifycation.Content = "Thời gian:                                              Ngày diễn ra:                                                  Địa điểm:\n\n- Nội dung thông báo:\n\n+\n\n+\n\n+\n\n+\n\n -Rất cám ơn mọi người đã dành thời gian để đọc thông báo. Xin trân trọng cám ơn sự quan tâm của mọi người.";

            DefaulLoadNotifycation();

            HomeFrame = new RelayCommand<object>(p => true, p =>
            {
                home = new Home(false);
                ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = home;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnHome.Background = Brushes.CornflowerBlue;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnInsert.Background = Brushes.DarkSlateGray;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnSubject.Background = Brushes.DarkSlateGray;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnTeacher.Background = Brushes.DarkSlateGray;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnSetting.Background = Brushes.DarkSlateGray;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnProfile.Background = Brushes.DarkSlateGray;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnClasses.Background = Brushes.DarkSlateGray;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnSchedule.Background = Brushes.DarkSlateGray;
                LoadNotifycation();
            });

            InsertNewNotifycation = new RelayCommand<object>(p => true, p =>
            {
                insertNewNotifycation = new InsertNewNotifycation();
                ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = insertNewNotifycation;
            });

            InsertNewRegisterNotifycation = new RelayCommand<object>(p => true, p =>
            {
                insertNewRegisterNotifycation = new InsertNewRegisterNotifycation();
                ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = insertNewRegisterNotifycation;
            });

            AddNotifycation = new RelayCommand<object>(p => true, p =>
            {
                int i = 0;
                if (selectedType == "ABC" && path == null)
                {
                    MessageBox.Show("Enter the address again");
                }    
                else if (selectedType.IndexOf("SV") != -1 && selectedType != null)
                {
                    var qr = (from s in DataProvider.Instance.Database.UserRoles where s.Role == "SV" select s.Id).FirstOrDefault();
                    var query = (from s in DataProvider.Instance.Database.Users where s.IdUserRole == qr select s);
                    query.ToList().ForEach(o =>
                    {
                        NewNotifycation.Users.Add(o);
                        NewNotifycation.SentTime = DateTime.Now;
                        DataProvider.Instance.Database.Notifycations.Add(NewNotifycation);
                    });
                    i = DataProvider.Instance.Database.SaveChanges();
                    selectedType = "ABC";
                    OnPropertyChanged(nameof(SelectedType));
                }
                else if (selectedType.IndexOf("GV") != -1 && selectedType != null)
                {
                    var qr = (from s in DataProvider.Instance.Database.UserRoles where s.Role == "GV" select s.Id).FirstOrDefault();
                    var query = (from s in DataProvider.Instance.Database.Users where s.IdUserRole == qr select s);
                    query.ToList().ForEach(o =>
                    {
                        NewNotifycation.Users.Add(o);
                        NewNotifycation.SentTime = DateTime.Now;
                        DataProvider.Instance.Database.Notifycations.Add(NewNotifycation);
                    });
                    i = DataProvider.Instance.Database.SaveChanges();
                    selectedType = "ABC";
                    OnPropertyChanged(nameof(SelectedType));
                }
                else if (selectedType.IndexOf("All") != -1 && selectedType != null)
                {
                    var qrSV = (from s in DataProvider.Instance.Database.UserRoles where s.Role == "SV" select s.Id).FirstOrDefault();
                    var qrGV = (from s in DataProvider.Instance.Database.UserRoles where s.Role == "GV" select s.Id).FirstOrDefault();
                    var query = (from s in DataProvider.Instance.Database.Users where s.IdUserRole == qrSV || s.IdUserRole == qrGV select s);
                    query.ToList().ForEach(o =>
                    {
                        NewNotifycation.Users.Add(o);
                        NewNotifycation.SentTime = DateTime.Now;
                        DataProvider.Instance.Database.Notifycations.Add(NewNotifycation);
                    });
                    i = DataProvider.Instance.Database.SaveChanges();
                    selectedType = "ABC";
                    OnPropertyChanged(nameof(SelectedType));
                }
                else
                {
                    string strUser = path;
                    if (!string.IsNullOrEmpty(strUser))
                    {
                        Notifycation notifycation = NewNotifycation;
                        while (true)
                        {
                            NewNotifycation = notifycation;
                            i = 0;
                            int index = strUser.IndexOf(",");
                            if (index == -1)
                            {
                                string str = strUser;
                                str = str.Trim();
                                Đồ_án.Database.User user = (from s in DataProvider.Instance.Database.Users where s.IdUser == str select s).FirstOrDefault();
                                if (user != null)
                                {
                                    NewNotifycation.Users.Add(user);
                                    NewNotifycation.SentTime = DateTime.Now;
                                    DataProvider.Instance.Database.Notifycations.Add(NewNotifycation);
                                }
                                else
                                {
                                    MessageBox.Show($"Cannot found Address {str}");
                                }
                                break;
                            }
                            else
                            {
                                string str = strUser.Substring(0, index);
                                str = str.Trim();
                                Đồ_án.Database.User user = (from s in DataProvider.Instance.Database.Users where s.IdUser == str select s).FirstOrDefault();
                                if (user != null)
                                {
                                    NewNotifycation.Users.Add(user);
                                    NewNotifycation.SentTime = DateTime.Now;
                                    DataProvider.Instance.Database.Notifycations.Add(NewNotifycation);
                                    newNotifycation = new Notifycation();
                                }
                                else
                                {
                                    MessageBox.Show($"Cannot found Address {str}");
                                }
                                strUser = strUser.Substring(index + 1);
                            }
                        }
                        i = DataProvider.Instance.Database.SaveChanges();

                    }
                    else
                    {
                        MessageBox.Show("Can't found the address");
                    }
                }
                if (i > 0)
                {
                    MessageBox.Show("Finish to send");
                    LoadNotifycation();
                    home = new Home(false);
                    ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = home;
                }
                newNotifycation = new Notifycation();
            });

            DeleteCommand = new RelayCommand<object>(p => true, p =>
            {
                var rs = p as Notifycation;
                rs.Users.Clear();
                DataProvider.Instance.Database.Notifycations.Remove(rs);
                DataProvider.Instance.Database.SaveChanges();
                if (selectedDate.Year != 0001)
                    LoadNotifycation();
                else
                    DefaulLoadNotifycation();
            });

            UpdateInformation = new RelayCommand<object>(p => true, p =>
            {
                var rs = p as Đồ_án.Database.Notifycation;
                updateNotifycation = rs;
                DateTime date = new DateTime(UpdateNotifycation.DateNotify.Value.Year, UpdateNotifycation.DateNotify.Value.Month, UpdateNotifycation.DateNotify.Value.Day, UpdateNotifycation.DateNotify.Value.Hour, UpdateNotifycation.DateNotify.Value.Minute, UpdateNotifycation.DateNotify.Value.Second);
                View.Home updatingNotifycation = new View.Home(true);
                updateNotifycation.DateNotify = new DateTime(date.Year, date.Month, date.Day, date.Hour, date.Minute, date.Second);
                OnPropertyChanged(nameof(UpdateNotifycation));
                ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = updatingNotifycation;
            });

            Update = new RelayCommand<object>(p => true, p =>
            {
                Notifycation notifycation = (from s in DataProvider.Instance.Database.Notifycations where updateNotifycation.IdNotify == s.IdNotify select s).FirstOrDefault();
                updateNotifycation.SentTime = DateTime.Now;
                notifycation = updateNotifycation;
                int i = DataProvider.Instance.Database.SaveChanges();
                if (i > 0)
                {
                    MessageBox.Show("Update Notifycation Successfully");
                    home = new Home(false);
                    ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = home;
                    LoadNotifycation();
                }
                else
                {
                    MessageBox.Show("Update Notifycation Unsuccessfully");
                }
            });

            DeleteAll = new RelayCommand<object>(p => true, p =>
            {
                var qr = from s in DataProvider.Instance.Database.Notifycations select s;
                qr.ToList().ForEach(o =>
                {
                    o.Users.Clear();
                    DataProvider.Instance.Database.Notifycations.Remove(o);
                });
                DataProvider.Instance.Database.SaveChanges();
                home = new Home(false);
                ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = home;
            });
        }

        private void DefaulLoadNotifycation()
        {
            if (true)
            {
                listNotifycation = new ObservableCollection<Notifycation>();
                var qr = from s in DataProvider.Instance.Database.Notifycations orderby s.SentTime descending select s;
                qr.ToList().ForEach(p => ListNotifycation.Add(p));
                OnPropertyChanged(nameof(ListNotifycation));
            }
        }

        private void LoadNotifycation()
        {
            listNotifycation = new ObservableCollection<Notifycation>();
            DateTime dateTime = SelectedDate.AddDays(1);
            var qr = (from s in DataProvider.Instance.Database.Notifycations where s.DateNotify >= SelectedDate.Date && s.DateNotify <= dateTime.Date orderby s.SentTime descending select s);
            qr.ToList().ForEach(p => ListNotifycation.Add(p));
            OnPropertyChanged(nameof(ListNotifycation));
        }
    }
}
