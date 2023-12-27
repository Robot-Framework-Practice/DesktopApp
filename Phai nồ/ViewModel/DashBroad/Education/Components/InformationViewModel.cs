using Đồ_án.Command;
using Đồ_án.Database;
using Đồ_án.Services;
using Đồ_án.ViewModel.Login;
using Đồ_án.ViewModel.Login.Service;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using static Đồ_án.ViewModel.Login.LoginServices;

namespace Đồ_án.ViewModel
{
    public class InformationViewModel : BaseViewModel
    {
        public User CurrentUser => LoginServices.CurrentUser;
        public string Gender
        {
            get
            {
                if (CurrentUser.DetailUser.Gender == null)
                    return "null";
                return CurrentUser.DetailUser.Gender.Value ? "Male" : "Female";
            }
        }
        public string Avatar { get; set; }
        public ICommand ChangeAvatar { get; set; }
        public ICommand RemoveAvatar { get; set; }


        public InformationViewModel()
        {
            Reload(this, new LoginEvent(CurrentUser));
            LoginServices.UpdateCurrentUser += Reload;
            ChangeAvatar = new RelayCommand<object>(p => true, async p =>
            {
                try
                {
                    System.Windows.Forms.OpenFileDialog op = new System.Windows.Forms.OpenFileDialog
                    {
                        Title = "Select a picture",
                        Filter = "All supported graphics|*.jpg;*.jpeg;*.png|" + "JPEG (*.jpg;*.jpeg)|*.jpg;*.jpeg|" + "Portable Network Graphic (*.png)|*.png"
                    };
                    if (op.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                    {
                        var uploadImageTasks = new List<Task<string>>();
                        uploadImageTasks.Add(ImageUploader.Instance.UploadAsync(op.FileName));
                        foreach (var img in await Task.WhenAll(uploadImageTasks))
                        {
                            await UserServices.Instance.SaveImageToUser(img);
                        }
                        Avatar = op.FileName;
                        OnPropertyChanged(nameof(Avatar));
                    }
                }
                catch
                {
                    MessageBox.Show("Fail to Change Avatar", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            });
            RemoveAvatar = new RelayCommand<object>(p => true, async p =>
            {
                try
                {
                    DatabaseImageTable currentAvatar = CurrentUser.DatabaseImageTable;
                    if (currentAvatar == null)
                    {
                        MessageBox.Show("Avatar is Not Set", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }
                    CurrentUser.IdAvatar = null;
                    Avatar = null;
                    OnPropertyChanged(nameof(Avatar));
                    DataProvider.Instance.Database.DatabaseImageTables.Remove(currentAvatar);
                    int i = await DataProvider.Instance.Database.SaveChangesAsync();
                    if (i <= 0)
                    {
                        MessageBox.Show("Fail to REMOVE Avatar", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
                catch
                {
                    MessageBox.Show("Fail to REMOVE Avatar", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            });
        }

        private void Reload(object sender, LoginEvent e)
        {
            Avatar = CurrentUser.DatabaseImageTable?.Image;
            OnPropertyChanged(nameof(Avatar));
            OnPropertyChanged(nameof(CurrentUser));
            OnPropertyChanged(nameof(Gender));
        }
    }
}
