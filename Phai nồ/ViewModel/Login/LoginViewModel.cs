using Đồ_án.Command;
using Đồ_án.Database;
using Đồ_án.Services;
using Đồ_án.View;
using Đồ_án.ViewModel.Login;
using Đồ_án.ViewModel.Login.Service;
using System;
using System.Collections;
using System.ComponentModel;
using System.IO;
using System.Net.Mail;
using System.Net;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using System.Windows.Threading;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;
using System.Runtime.CompilerServices;
using System.Linq;
using System.Data.Entity;
using static Đồ_án.ViewModel.Login.LoginServices;

namespace Đồ_án.ViewModel
{
    public class LoginViewModel : BaseViewModel, INotifyDataErrorInfo
    {
        #region Varibles

        private Visibility _isRegister;
        public Visibility IsRegister
        {
            get { return _isRegister; }
            set
            {
                _isRegister = value;
                OnPropertyChanged("IsRegister");
            }
        }
        private bool _isToRemember;
        public bool IsToRemember
        {
            get => _isToRemember;
            set => _isToRemember = value;
        }
        public string UserName
        {
            get { return User.IdUser; }
            set
            {
                User.IdUser = value;

                _errorBaseViewModel.ClearErrors();
                if (!IsValid(User.IdUser))
                {
                    _errorBaseViewModel.AddError(nameof(UserName), "IdUser Không Được Để Trống!");
                }

                if (!LoginServices.Instance.IsIdUserIdentical(User.IdUser) && IsRegister == Visibility.Visible)
                {
                    _errorBaseViewModel.AddError(nameof(UserName), "IdUser Đã Được Sử Dụng!");
                }

                OnPropertyChanged("User");
                OnPropertyChanged();
            }
        }
        public string PassWord
        {
            get { return User.Passwd; }
            set
            {
                User.Passwd = value;

                _errorBaseViewModel.ClearErrors();
                if (!IsValid(User.Passwd))
                {
                    _errorBaseViewModel.AddError(nameof(PassWord), "Password Không Được Để Trống!");
                }


                OnPropertyChanged("User");
                OnPropertyChanged();
            }
        }
        public string ConfirmPassword
        {
            get { return _confirmPassword; }
            set
            {
                _confirmPassword = value;

                _errorBaseViewModel.ClearErrors();
                if (!IsValid(_confirmPassword))
                    _errorBaseViewModel.AddError(nameof(ConfirmPassword), "ConfirmPassword Không Được Để Trống!");
                if (_confirmPassword != User.Passwd)
                    _errorBaseViewModel.AddError(nameof(ConfirmPassword), "Không Trùng PassWord!");
                OnPropertyChanged();
            }
        }
        public string NewPassWord
        {
            get { return User.Passwd; }
            set
            {
                User.Passwd = value;

                _errorBaseViewModel.ClearErrors();
                if (!IsValid(User.Passwd))
                {
                    _errorBaseViewModel.AddError(nameof(NewPassWord), "Password Không Được Để Trống!");
                }


                OnPropertyChanged("User");
                OnPropertyChanged();
            }
        }
        public string ConfirmNewPassword
        {
            get { return _confirmPassword; }
            set
            {
                _confirmPassword = value;

                _errorBaseViewModel.ClearErrors();
                if (!IsValid(_confirmPassword))
                    _errorBaseViewModel.AddError(nameof(ConfirmNewPassword), "ConfirmPassword Không Được Để Trống!");
                if (_confirmPassword != User.Passwd)
                    _errorBaseViewModel.AddError(nameof(ConfirmNewPassword), "Không Trùng PassWord!");
                OnPropertyChanged();
            }
        }

        public string Gmail
        {
            get => User.Email;
            set
            {
                User.Email = value;

                // Validation
                _errorBaseViewModel.ClearErrors();
                if (!IsValid(Gmail))
                {
                    _errorBaseViewModel.AddError(nameof(Gmail), "Vui lòng nhập gmail!");
                }
                if (!IsValidEmail(Gmail) ||
                    !Gmail.Contains("@") ||
                    !Gmail.Contains("."))
                {
                    _errorBaseViewModel.AddError(nameof(Gmail), "Địa chỉ mail không đúng định dạng!");
                }
                OnPropertyChanged();
            }
        }

        private string _oTP;
        public string OTP { get => _oTP; set => _oTP = value; }

        private string _timeCountDown;
        public string TimeCountDown
        {
            get => _timeCountDown;
            set
            {
                _timeCountDown = value;
                OnPropertyChanged();
            }
        }

        private bool _isGetCode;
        public bool IsGetCode
        {
            get => _isGetCode;
            set
            {
                _isGetCode = value;
                OnPropertyChanged();
            }
        }

        private string _oTPInView;
        public string OTPInView
        {
            get => _oTPInView;
            set
            {
                _oTPInView = value;

                // Validation
                _errorBaseViewModel.ClearErrors();
                if (!IsValid(OTPInView))
                {
                    _errorBaseViewModel.AddError(nameof(OTPInView), "Vui lòng nhập mã OTP!");
                }

                OnPropertyChanged();
            }
        }

        private User User { get; set; }

        private string _confirmPassword;

        private Visibility _isRoleAdmin;
        public Visibility IsRoleAdmin
        {
            get { return _isRoleAdmin; }
            set
            {
                _isRoleAdmin = value;
                OnPropertyChanged();
            }
        }


        public event EventHandler CloseLoginWindowEvent;
        public event EventHandler CloseFogotPassWordWindowEvent;
        public event EventHandler<DataErrorsChangedEventArgs> ErrorsChanged;

        private readonly ErrorBaseViewModel _errorBaseViewModel;
        public string test { get; set; }
        public bool HasErrors => _errorBaseViewModel.HasErrors;

        #endregion


        #region ICommand

        public ICommand LoginCommand { get; set; }
        public ICommand RegisterCommand { get; set; }
        public ICommand ShowRegisterOrLogin { get; set; }
        public ICommand ShowFogotPassWordWindow { get; set; }
        public ICommand ShowLogin { get; set; }
        public ICommand CloseLogin { get; set; }
        public ICommand CloseFogotPassWordWindow { get; set; }
        public ICommand GetOTPCodeCommand { get; set; }
        public ICommand ConFirmCommand { get; set; }

        #endregion




        public LoginViewModel()
        {
            try
            {
                IsRegister = Visibility.Collapsed;
                _errorBaseViewModel = new ErrorBaseViewModel();
                _errorBaseViewModel.ErrorsChanged += ErrorsChanged;
                LoginServices.UpdateCurrentUser += OnUpdatedCurrentUser;


                if (LoginServices.Instance.InitRememberedAccount())
                {
                    User = LoginServices.CurrentUser;
                }
                else
                {
                    User = new User();
                }


                LoginCommand = new RelayCommand<object>((p) =>
                {
                    if (HasErrors) return false;
                    if (!IsValid(UserName))
                        return false;
                    if (!IsValid(PassWord))
                        return false;

                    return true;
                }, (p) => Login());
                RegisterCommand = new RelayCommand<object>((p) =>
                {
                    if (HasErrors) return false;
                    if (!IsValid(UserName))
                        return false;
                    if (!IsValid(PassWord))
                        return false;
                    if (!IsValid(ConfirmPassword))
                        return false;
                    if (!IsValidEmail(Gmail))
                        return false;

                    return true;
                }, (p) => Register());
                ShowRegisterOrLogin = new RelayCommand<object>((p) => true, (p) => SwitchView());
                ShowFogotPassWordWindow = new RelayCommand<object>((p) => true, (p) => ShowFogotPassWord());
                ShowLogin = new RelayCommand<object>((p) => true, (p) => ShowLoginView());
                CloseLogin = new RelayCommand<object>((p) => true, (p) => CloseLoginView());
                CloseFogotPassWordWindow = new RelayCommand<object>((p) => true, (p) => CloseFogotPassWordWindowEvent?.Invoke(this, new EventArgs()));
                GetOTPCodeCommand = new RelayCommand<object>((p) => true, async (p) => await GetOPTAsync());
                ConFirmCommand = new RelayCommand<object>((p) =>
                {
                    if (HasErrors) return false;

                    if (!IsValidEmail(Gmail))
                        return false;
                    if (!IsValid(NewPassWord))
                        return false;
                    if (!IsValid(ConfirmNewPassword))
                        return false;
                    if (!IsValid(OTPInView))
                        return false;

                    return true;
                }, (p) => ConFirm());
            }
            catch
            {
                /*MessageBox.Show("Có một số lỗi phát sinh", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Error);*/
            }
        }

        private void SwitchView()
        {
            switch (IsRegister)
            {
                case Visibility.Collapsed:
                    IsRegister = Visibility.Visible;
                    break;
                default:
                    IsRegister = Visibility.Collapsed;
                    break;
            }
        }

        private void ShowFogotPassWord()
        {
            FogotPassWord fogotPassWord = new FogotPassWord();
            fogotPassWord.ShowDialog();
        }
        private void OnUpdatedCurrentUser(object sender, LoginEvent e)
        {

            var adminRole = DataProvider.Instance.Database.UserRoles.FirstOrDefault(temp => temp.Role == "Admin");
            if (LoginServices.CurrentUser.IdUserRole == adminRole.Id)
            {
                IsRoleAdmin = Visibility.Visible;
            }
            else
            {
                IsRoleAdmin = Visibility.Collapsed;
            }
        }
        private async void Login()
        {
            try
            {
                if (IsExistAccount())
                {
                    if (IsToRemember)
                        RememberUser();
                    else RemoveRememberedAccount();

                    //MainWindow newWindow = new MainWindow();
                    //Application.Current.MainWindow = newWindow;
                    //newWindow.Show();


                    Application.Current.MainWindow.WindowState = WindowState.Normal;
                }
            }
            catch
            {

            }
        }
        private async void Register()
        {
            try
            {
                int changes = await LoginServices.Instance.AddUser(User);
                if (changes > 0)
                {
                    if (IsToRemember)
                        RememberUser();
                    else RemoveRememberedAccount();
                    CloseLoginWindowEvent?.Invoke(this, new EventArgs());

                    MessageBox.Show("Đăng ký tài khoản THÀNH CÔNG!", "THÀNH CÔNG", MessageBoxButton.OK, MessageBoxImage.Information);
                    Application.Current.MainWindow.WindowState = WindowState.Normal;
                }
                else
                {
                    MessageBox.Show("Có LỖI phát sinh trong quá trình đăng ký tài khoản!\nVui lòng thử lại!", "Đăng ký thất bại", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            catch
            {

            }
        }
        private void ShowLoginView()
        {
            IsRegister = Visibility.Collapsed;
            RemoveRememberedAccount();
            LoginServices.CurrentUser = null;
            User.Passwd = string.Empty;
            View.Login login = new View.Login();
            login.Show();
            Application.Current.MainWindow.WindowState = WindowState.Minimized;
        }
        private void CloseLoginView()
        {
            try
            {
                Application.Current.Shutdown();

            }
            catch
            {
                //Application.Current.Shutdown();
            }
        }
        private bool IsExistAccount()
        {
            try
            {
                if (User == null)
                    return false;
                if (LoginServices.Instance.IsUserAuthentic(User.IdUser, User.Passwd))
                {
                    LoginServices.Instance.Login(User.IdUser);

                    CloseLoginWindowEvent?.Invoke(this, new EventArgs());
                    return true;
                }

                MessageBox.Show("Tên đăng nhập hoặc mật khẩu không đúng!\nVui lòng thử lại!", "Đăng nhập thất bại", MessageBoxButton.OK, MessageBoxImage.Error);
                return false;
            }
            catch
            {
                MessageBox.Show("Đã có lỗi trong việc xác nhận tài khoản", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Error);
                return false;
            }
        }
        private async void RememberUser()
        {
            try
            {
                if (IsToRemember)
                {
                    if (LoginServices.Instance.IsUserAuthentic(User.IdUser, User.Passwd))
                    {
                        try
                        {
                            User RememberedAccount = new User();
                            RememberedAccount.IdUser = User.IdUser;
                            RememberedAccount.Passwd = User.Passwd;
                            using (StreamWriter sw = new StreamWriter(LoginServices.FilePathRememberedAccount))
                            {
                                await sw.WriteAsync(RememberedAccount.IdUser + '\t' + LoginServices.Encrypt(RememberedAccount.Passwd));
                            }
                        }
                        catch { }
                    }
                }
            }
            catch
            {
                MessageBox.Show("Đã có lỗi trong việc ghi nhớ tài khoản", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void RemoveRememberedAccount()
        {
            string filePath = LoginServices.FilePathRememberedAccount;
            if (File.Exists(filePath))
            {
                File.Delete(filePath);
            }
        }


        public void ResetView()
        {
            Gmail = "";
            User.Passwd = "";
            ConfirmPassword = "";
            OTPInView = "";
            _errorBaseViewModel.ClearAllErrors();
            IsGetCode = false;
            CloseFogotPassWordWindowEvent?.Invoke(this, new EventArgs());
        }
        public async void ConFirm()
        {
            try
            {
                OTPServices.Instance.DeleteOTPOverTime();
                if (!OTPServices.Instance.CheckGetOTPFromEmail(Gmail, SHA256Cryptography.Instance.EncryptString(OTPInView)))
                {
                    MessageBox.Show("Mã xác nhận không chính xác", "Thông báo", System.Windows.MessageBoxButton.OK, System.Windows.MessageBoxImage.Error);
                    return;
                }
                int change = await UserServices.Instance.ChangePassWord(User.Passwd, Gmail);
                if (change > 0)
                {
                    MessageBox.Show("Cập nhật mật khẩu thành công", "Thông báo", System.Windows.MessageBoxButton.OK, System.Windows.MessageBoxImage.Information);
                    ResetView();
                }
                else
                {
                    MessageBox.Show("Cập nhật mật khẩu thất bại", "Thông báo", System.Windows.MessageBoxButton.OK, System.Windows.MessageBoxImage.Information);
                }
            }
            catch
            {
                MessageBox.Show("Có lỗi trong việc cập nhật mật khẩu mới", "Thông báo", System.Windows.MessageBoxButton.OK, System.Windows.MessageBoxImage.Error);
            }


        }
        public string RandomOTP()
        {
            Random generator = new Random();
            return generator.Next(0, 1000000).ToString("D6");
        }
        public void StartCountdown()
        {
            IsGetCode = true;
            DispatcherTimer dispatcherTimer = new DispatcherTimer();
            TimeCountDown = "60 Giây";
            dispatcherTimer.Interval = new TimeSpan(0, 0, 1);
            dispatcherTimer.Tick += DispatcherTimer_Tick;
            dispatcherTimer.Start();
        }
        public async Task SetupAndSendOTPForEmailAsync()
        {
            var body = File.ReadAllText("../../Resources/template-mail.html");
            var from = new MailAddress(App.Gmail, "IT008.N11.PMCL");
            var to = new MailAddress(Gmail.Trim());
            MailMessage mm = new MailMessage(from, to)
            {
                Subject = OTP + " là mã khôi phục tài khoản của bạn",
                IsBodyHtml = true,
                Body = body.Replace("OTP_CODE", OTP),
                Priority = MailPriority.High
            };
            SmtpClient smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                Credentials = new NetworkCredential(App.Gmail, App.PassWordApp),
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network
            };
            try
            {
                MessageBox.Show($"Ma OTP la {OTP}", "OTP", System.Windows.MessageBoxButton.OK, System.Windows.MessageBoxImage.Information);
                await smtp.SendMailAsync(mm);
                MessageBox.Show("Gửi thành công mã OTP", "OTP", System.Windows.MessageBoxButton.OK, System.Windows.MessageBoxImage.Information);
            }
            catch (Exception)
            {
                MessageBox.Show("Đã có lỗi xảy ra, không thể gửi mã OTP", "OTP", System.Windows.MessageBoxButton.OK, System.Windows.MessageBoxImage.Error);
            }
        }

        public async Task GetOPTAsync()
        {
            try
            {
                if (string.IsNullOrEmpty(Gmail))
                {
                    MessageBox.Show("Cần phải nhập địa chỉ mail trước khi lấy mã", "Thông báo", System.Windows.MessageBoxButton.OK, System.Windows.MessageBoxImage.Error);
                    return;
                }
                if (!IsValidEmail(Gmail))
                {
                    MessageBox.Show("Địa chỉ mail không hợp lệ", "Thông báo", System.Windows.MessageBoxButton.OK, System.Windows.MessageBoxImage.Error);
                    return;
                }

                StartCountdown();

                OTP = RandomOTP();


                await OTPServices.Instance.SaveOTP(Gmail, SHA256Cryptography.Instance.EncryptString(OTP));

                await SetupAndSendOTPForEmailAsync();
            }
            catch
            {
                MessageBox.Show("Có lỗi trong việc tạo OTP", "Thông báo", System.Windows.MessageBoxButton.OK, System.Windows.MessageBoxImage.Error);
            }

        }

        private void DispatcherTimer_Tick(object sender, EventArgs e)
        {
            var tmp = Convert.ToInt32(TimeCountDown.Split(' ')[0]);
            tmp -= 1;
            TimeCountDown = tmp.ToString() + " Giây";
            if (tmp == 0)
            {
                (sender as DispatcherTimer).Stop();
                TimeCountDown = null;
            }

        }


        private bool IsValid(string propertyName)
        {
            return !string.IsNullOrEmpty(propertyName) && !string.IsNullOrWhiteSpace(propertyName);
        }
        bool IsValidEmail(string email)
        {
            if (!IsValid(email) || email.Trim().EndsWith("."))
            {
                return false;
            }
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }
        public IEnumerable GetErrors(string propertyName)
        {
            return _errorBaseViewModel.GetErrors(propertyName);
        }
    }
}
