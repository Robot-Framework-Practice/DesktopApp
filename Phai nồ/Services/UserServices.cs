using Đồ_án.Database;
using Đồ_án.Services;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Security.Permissions;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Đồ_án.ViewModel.Login.Service
{
    public class UserServices
    {
        private static UserServices s_instance;

        public static UserServices Instance => s_instance ?? (s_instance = new UserServices());

        public UserServices() { }

        public Guid GetIdUserRole(string role)
        {
            var userRole = DataProvider.Instance.Database.UserRoles.FirstOrDefault(temp => temp.Role == role);
            return userRole.Id;
        }

        public User GetUserInfo()
        {
            User a = DataProvider.Instance.Database.Users.FirstOrDefault();
            return a;
        }
        public User GetUserById(string id)
        {
            User a = id == LoginServices.CurrentUser?.IdUser ? LoginServices.CurrentUser : DataProvider.Instance.Database.Users.FirstOrDefault(user => user.IdUser == id);
            return a;
        }

        public async Task<string> GetRoleById(string id)
        {
            var user = GetUserById(id);
            var userRole = await DataProvider.Instance.Database.UserRoles.FirstOrDefaultAsync(temp => temp.Id == user.IdUserRole);
            return userRole.Role;
        }


        //public string GetAvatarById(string id)
        //{
        //    var user = GetUserById(id);
        //    return user.DatabaseImageTable?.Image;
        //}
        //public string GetFacultyById(string id)
        //{
        //    var user = GetUserById(id);
        //    return user.Faculty.DisplayName;
        //}
        public List<User> GetUserByGmail(string email)
        {
            return DataProvider.Instance.Database.Users.Where(user => user.Email.Equals(email)).ToList();
        }
        public async Task<User> GetUserByOTP(OTP otp)
        {
            return await DataProvider.Instance.Database.Users.FirstOrDefaultAsync(tmpUser => tmpUser.IdOTP == otp.Id);
        }

        //public bool CheckAdminByIdUser(string id)
        //{
        //    return DataProvider.Instance.Database.Users.FirstOrDefault(user => user.IdUser == id).UserRole.Role.Contains("Admin");
        //}

        public async Task<Relative> GetFatherbyId(string id)
        {
            User user = GetUserById(id);
            DetailUser DUser = await DataProvider.Instance.Database.DetailUsers.FirstOrDefaultAsync(temp => temp.CCCD == user.CCCD);

            return DUser?.Relatives.FirstOrDefault(temp => temp?.Gender == true);
        }

        public async Task<Relative> GetMotherbyId(string id)
        {
            User user = GetUserById(id);
            DetailUser DUser = await DataProvider.Instance.Database.DetailUsers.FirstOrDefaultAsync(temp => temp.CCCD == user.CCCD);

            return DUser?.Relatives.FirstOrDefault(temp => temp?.Gender == false);
        }

        public async Task<Relative> GetFather(User user)
        {
            DetailUser DUser = await DataProvider.Instance.Database.DetailUsers.FirstOrDefaultAsync(temp => temp.CCCD == user.CCCD);

            return DUser?.Relatives.FirstOrDefault(temp => temp?.Gender == true);
        }

        public async Task<Relative> GetMother(User user)
        {
            DetailUser DUser = await DataProvider.Instance.Database.DetailUsers.FirstOrDefaultAsync(temp => temp.CCCD == user.CCCD);

            return DUser?.Relatives.FirstOrDefault(temp => temp?.Gender == false);
        }


        public bool IsUsedEmail(string email)
        {
            foreach (var user in DataProvider.Instance.Database.Users.ToList())
            {
                if (user.Email.Equals(email))
                    return true;
            }
            return false;
        }


        public async Task<int> SaveUserToDatabase(User user)
        {
            try
            {
                User savedUser = GetUserById(user.IdUser);

                if (savedUser == null)
                {
                    DataProvider.Instance.Database.Users.AddOrUpdate(user);
                }
                else
                {
                    //savedFaculty = (faculty.ShallowCopy() as Faculty);
                    //Reflection.CopyProperties(user, savedUser);
                }
                return await DataProvider.Instance.Database.SaveChangesAsync();
            }
            catch
            {
                return -1;
            }
        }
        public async Task SaveImageToUser(string image)
        {
            var imgId = await DatabaseImageTableServices.Instance.SaveImageToDatabaseAsync(image);
            LoginServices.CurrentUser.IdAvatar = imgId;
            DataProvider.Instance.Database.SaveChanges();
        }
        public async Task<int> ChangePassWord(string passWord, string gmail)
        {
            var user = GetUserByGmail(gmail);
            if (user.Count == 0)
                return -1;
            user.FirstOrDefault().Passwd = SHA256Cryptography.Instance.EncryptString(passWord);
            return await DataProvider.Instance.Database.SaveChangesAsync();
        }
        public async Task<int> ChangePassWordOfCurrentUser(string passWord, User user)
        {
            user.Passwd = SHA256Cryptography.Instance.EncryptString(passWord);
            return await DataProvider.Instance.Database.SaveChangesAsync();
        }
    }
}
