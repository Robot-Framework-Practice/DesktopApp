using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.Entity.Core.Common.CommandTrees;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;
using Đồ_án.Command;
using Đồ_án.Database;
using Đồ_án.View;
using Đồ_án.ViewModel.Login;
using Đồ_án.ViewModel.Login.Service;
using static Đồ_án.ViewModel.Login.LoginServices;

namespace Đồ_án.ViewModel
{
    public class SettingViewModel : BaseViewModel, INotifyDataErrorInfo
    {
        private readonly ErrorBaseViewModel _errorBaseViewModel;
        private Setting setting;
        User User { get; set; }

        private string _password;
        public string PassWord
        {
            get { return _password; }
            set
            {
                _password = value;

                _errorBaseViewModel.ClearErrors();
                if (!IsValid(PassWord))
                {
                    _errorBaseViewModel.AddError(nameof(PassWord), "Password Không Được Để Trống!");
                }

                OnPropertyChanged();
            }
        }
        private string _newPassWord;
        public string NewPassWord
        {
            get { return _newPassWord; }
            set
            {
                _newPassWord = value;

                _errorBaseViewModel.ClearErrors();
                if (!IsValid(_newPassWord))
                {
                    _errorBaseViewModel.AddError(nameof(NewPassWord), "Password Không Được Để Trống!");
                }

                OnPropertyChanged();
            }
        }
        private string _confirmPassword;
        public string ConfirmNewPassword
        {
            get { return _confirmPassword; }
            set
            {
                _confirmPassword = value;

                _errorBaseViewModel.ClearErrors();
                if (!IsValid(_confirmPassword))
                    _errorBaseViewModel.AddError(nameof(ConfirmNewPassword), "ConfirmPassword Không Được Để Trống!");
                if (_confirmPassword != NewPassWord)
                    _errorBaseViewModel.AddError(nameof(ConfirmNewPassword), "Không Trùng PassWord!");
                OnPropertyChanged();
            }
        }


        public event EventHandler<DataErrorsChangedEventArgs> ErrorsChanged;
        public ICommand SettingCommand { get; set; }
        public ICommand ChangePassWordCommand { get; set; }

        public SettingViewModel()
        {
            SettingCommand = new RelayCommand<object>(p => true, p => OnExcute());
            ChangePassWordCommand = new RelayCommand<object>(p =>
            {
                if (!HasErrors &&
                NewPassWord == ConfirmNewPassword &&
                IsValid(NewPassWord) &&
                User != null) return true;
                return false;
            }, p => ChangePassWord());

            ReloadUser(this, new LoginEvent(CurrentUser));
            UpdateCurrentUser += ReloadUser;

            _errorBaseViewModel = new ErrorBaseViewModel();
            _errorBaseViewModel.ErrorsChanged += ErrorsChanged;
        }


        public bool HasErrors => _errorBaseViewModel.HasErrors;

        public void OnExcute()
        {
            setting = new Setting();
            ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = setting;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnSetting.Background = Brushes.CornflowerBlue;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnInsert.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnSubject.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnHome.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnTeacher.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnProfile.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnClasses.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnSchedule.Background = Brushes.DarkSlateGray;
        }
        private async void ChangePassWord()
        {
            if (!LoginServices.Instance.IsUserAuthentic(User.IdUser, PassWord))
            {
                MessageBox.Show("Vui Lòng Nhập Lại PassWord", "Sai PassWord", MessageBoxButton.OK, MessageBoxImage.Error);
                PassWord = string.Empty;
                string filePath = FilePathRememberedAccount;
                if (File.Exists(filePath))
                {
                    File.Delete(filePath);
                }
                return;
            }
            
            try
            {
                int change = await UserServices.Instance.ChangePassWordOfCurrentUser(NewPassWord, CurrentUser);
                if (change > 0)
                {
                    MessageBox.Show("Đổi PassWord Thành Công", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Information);
                }
            }
            catch
            {
                MessageBox.Show("Có một số lỗi phát sinh", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        private bool IsValid(string propertyName)
        {
            return !string.IsNullOrEmpty(propertyName) && !string.IsNullOrWhiteSpace(propertyName);
        }

        public IEnumerable GetErrors(string propertyName)
        {
            return _errorBaseViewModel.GetErrors(propertyName);
        }

        private void ReloadUser(object sender, LoginEvent e)
        {
            User = CurrentUser;
        }
    }
}
