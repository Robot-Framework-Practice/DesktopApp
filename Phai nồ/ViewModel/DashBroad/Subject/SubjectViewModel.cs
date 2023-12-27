using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using Đồ_án.Command;
using Đồ_án.Database;
namespace Đồ_án.ViewModel.DashBroad.Subject
{
    public class SubjectViewModel : BaseViewModel
    {
        public ICommand SubjectFrame { get; set; }
        public ICommand InsertNewSubject { get; set; }
        public ICommand AddSubject { get; set; }
        public ICommand DeleteSubject { get; set; }
        public ICommand Update { get; set; }
        public ICommand UpdateInformation { get; set; }
        public View.Subject subject { get; set; }
        public View.InsertNewSubject insertNewSubject { get; set; }

        private ObservableCollection<Đồ_án.Database.Subject> listSubject;

        public ObservableCollection<Đồ_án.Database.Subject> ListSubject
        {
            get { return listSubject; }
            set { listSubject = value; OnPropertyChanged(nameof(ListSubject)); }
        }

        private Đồ_án.Database.Subject newSubject;

        public Đồ_án.Database.Subject NewSubject
        {
            get { return newSubject; }
            set { newSubject = value; OnPropertyChanged(nameof(NewSubject)); }
        }

        private static Đồ_án.Database.Subject updateSubject;

        public Đồ_án.Database.Subject UpdateSubject
        {
            get { return updateSubject; }
            set { updateSubject = value; OnPropertyChanged(nameof(UpdateSubject)); }
        }
        private string _filter;
        public string Filter
        {
            get { return _filter; }
            set
            {
                _filter = value;
                OnPropertyChanged("Filter");
                SubjectFiltering.Filter = FilterBy;
            }
        }

        private ICollectionView _subjectFiltering;
        public ICollectionView SubjectFiltering
        {
            get { return _subjectFiltering; }
            set { _subjectFiltering = value; }
        }

        public SubjectViewModel()
        {
            newSubject = new Database.Subject();
            SubjectFrame = new RelayCommand<object>(p => true, p =>
            {
                if (subject == null) subject = new View.Subject(false);
                ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = subject;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnSubject.Background = Brushes.CornflowerBlue;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnInsert.Background = Brushes.DarkSlateGray;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnHome.Background = Brushes.DarkSlateGray;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnTeacher.Background = Brushes.DarkSlateGray;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnSetting.Background = Brushes.DarkSlateGray;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnProfile.Background = Brushes.DarkSlateGray;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnClasses.Background = Brushes.DarkSlateGray;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnSchedule.Background = Brushes.DarkSlateGray;
            });

            LoadSubject();
            SubjectFiltering = CollectionViewSource.GetDefaultView(ListSubject);
            InsertNewSubject = new RelayCommand<object>(p => true, p =>
            {
                insertNewSubject = new View.InsertNewSubject();
                ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = insertNewSubject;
            });

            AddSubject = new RelayCommand<object>(p => true, p =>
            {
                DataProvider.Instance.Database.Subjects.Add(newSubject);
                int i = DataProvider.Instance.Database.SaveChanges();
                if (i > 0)
                {
                    MessageBox.Show("Add Subject Successfully");
                    listSubject.Add(newSubject);
                    OnPropertyChanged(nameof(ListSubject));
                    subject = new View.Subject(false);
                    ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = subject;
                }    
                else
                {
                    MessageBox.Show("Add Subject Unsuccessfully");

                }
                newSubject = new Database.Subject();
            });

            DeleteSubject = new RelayCommand<object>(p => true, p =>
            {
                var rs = p as Đồ_án.Database.Subject;
                DataProvider.Instance.Database.Subjects.Remove(rs);
                DataProvider.Instance.Database.SaveChanges();
                listSubject.Remove(rs);
                OnPropertyChanged(nameof(ListSubject));
                subject = new View.Subject(false);
                ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = subject;

            });

            Update = new RelayCommand<object>( p => true, p =>
            {
                var rs = p as Đồ_án.Database.Subject;
                updateSubject = rs;
                OnPropertyChanged(nameof(UpdateSubject));
                subject = new View.Subject(true);
                ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = subject;
            });

            UpdateInformation = new RelayCommand<object>(p => true, p =>
            {
                string id = updateSubject.IdSubject;
                Đồ_án.Database.Subject qr = (from s in DataProvider.Instance.Database.Subjects where s.IdSubject == id select s).FirstOrDefault();
                listSubject.Remove(qr);
                qr = updateSubject;
                listSubject.Add(qr);
                int i = DataProvider.Instance.Database.SaveChanges();
                if (i > 0)
                {
                    MessageBox.Show("Update Subject Successfully");
                    OnPropertyChanged(nameof(listSubject));
                    subject = new View.Subject(false);
                    ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = subject;
                }
                else
                {
                    MessageBox.Show("Update Subject Unsuccessfully");
                }
            });
        }

        private bool FilterBy(object obj)
        {

            if (!string.IsNullOrEmpty(Filter))
            {
                var a = obj as Database.Subject;
                return a != null && a.IdSubject.Contains(Filter) || a.NameSubject.Contains(Filter);
            }
            return true;
        }
        private void LoadSubject()
        {
            listSubject = new ObservableCollection<Database.Subject>(DataProvider.Instance.Database.Subjects);
            OnPropertyChanged(nameof(listSubject));
        }
    }
}
