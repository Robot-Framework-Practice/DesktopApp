using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;
using Đồ_án.Database;
using System.IO;
using Đồ_án.ViewModel.Login.Service;
using System.Data.Entity;
using System.Diagnostics.Eventing.Reader;
using System.Runtime.Serialization;
using System.Runtime.CompilerServices;
using static System.Data.Entity.Infrastructure.Design.Executor;

namespace Đồ_án.ViewModel.Login
{
    public class LoginServices
    {
        public class LoginEvent : EventArgs
        {
            private User _user;

            public User User { get => _user; set => _user = value; }

            public LoginEvent(User user)
            {
                this.User = user;
            }
        }

        static private event EventHandler<LoginEvent> _updateCurrentUser;
        static public event EventHandler<LoginEvent> UpdateCurrentUser
        {
            add { _updateCurrentUser += value; }
            remove { _updateCurrentUser -= value; }
        }
        private static User s_currentUser;
        public static User CurrentUser
        {
            get => s_currentUser;
            set
            {
                s_currentUser = value;
            }
        }

        public static string FilePathRememberedAccount = Path.Combine(Environment.CurrentDirectory, "rememberedAccount.txt");

        private static LoginServices s_instance;
        public static LoginServices Instance => s_instance ?? (s_instance = new LoginServices());

        Đồ_ÁnEntities Đồ_ÁnEntities = DataProvider.Instance.Database;

        public LoginServices() { }


        public void Login(string idUser)
        {
            User user = UserServices.Instance.GetUserById(idUser);

            CurrentUser = user;

            _updateCurrentUser?.Invoke(this, new LoginEvent(user));
        }
        public bool IsUserAuthentic(string idUser, string password)
        {
            string passEncode = SHA256Cryptography.Instance.EncryptString(password);

            int accCount = Đồ_ÁnEntities.Users.Where(user => user.IdUser == idUser && user.Passwd == passEncode).Count();

            if (accCount > 0)
            {
                return true;
            }
            return false;
        }
        public bool IsIdUserIdentical(string idUser)
        {
            int accCount = Đồ_ÁnEntities.Users.Where(user => user.IdUser == idUser).Count();
            if (accCount > 0) return false;
            return true;
        }
        public static string Encrypt(string input, string hash = "LoliServant")
        {
            byte[] data = UTF8Encoding.UTF8.GetBytes(input);
            using (MD5CryptoServiceProvider md5provider = new MD5CryptoServiceProvider())
            {
                byte[] keys = md5provider.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
                byte[] iv = md5provider.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
                using (AesCryptoServiceProvider aes = new AesCryptoServiceProvider() { Key = keys, Mode = CipherMode.CFB, Padding = PaddingMode.PKCS7, IV = iv })
                {
                    ICryptoTransform transform = aes.CreateEncryptor();
                    byte[] results = transform.TransformFinalBlock(data, 0, data.Length);
                    return Convert.ToBase64String(results, 0, results.Length);
                }
            }
        }
        public static string Decrypt(string input, string hash = "LoliServant")
        {
            byte[] data = Convert.FromBase64String(input);
            using (MD5CryptoServiceProvider md5provider = new MD5CryptoServiceProvider())
            {
                byte[] keys = md5provider.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
                byte[] iv = md5provider.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
                using (AesCryptoServiceProvider aes = new AesCryptoServiceProvider() { Key = keys, Mode = CipherMode.CFB, Padding = PaddingMode.PKCS7, IV = iv })
                {
                    ICryptoTransform transform = aes.CreateDecryptor();
                    byte[] results = transform.TransformFinalBlock(data, 0, data.Length);
                    return UTF8Encoding.UTF8.GetString(results);
                }
            }
        }
        public async Task<int> AddUser(User user)
        {
            try
            {
                string passEncode = SHA256Cryptography.Instance.EncryptString(user.Passwd);

                user.Passwd = passEncode;

                Đồ_ÁnEntities.Users.Add(user);
                return await Đồ_ÁnEntities.SaveChangesAsync();
            }
            catch { return -1; }
        }
        public int RemoveUser(string idUser, string password)
        {
            try
            {
                string passEncode = SHA256Cryptography.Instance.EncryptString(password);

                User user = new User();
                user.IdUser = idUser;
                user.Passwd = passEncode;
                Đồ_ÁnEntities.Users.Remove(user);
                int Changed = Đồ_ÁnEntities.SaveChanges();
                return Changed;
            }
            catch { return -1; }
        }

        public bool InitRememberedAccount()
        {
            User temp;
            string filePath = FilePathRememberedAccount;
            if (File.Exists(filePath))
            {
                string fileContent = "";
                using (StreamReader sr = new StreamReader(filePath))
                {
                    fileContent = sr.ReadToEnd();
                    string accountRow = fileContent.Split('\n')[0];
                    if (accountRow == "")
                        return false;
                    string[] account = accountRow.Split('\t');
                    temp = new User();
                    temp.IdUser = account[0];
                    temp.Passwd = Decrypt(account[1]);
                }
                if (IsUserAuthentic(temp.IdUser, temp.Passwd))
                {
                    Login(temp.IdUser);
                    return true;
                }
            }
            return false;
        }
    }
}
