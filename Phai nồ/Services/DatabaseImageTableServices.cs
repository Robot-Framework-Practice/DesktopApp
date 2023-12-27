using Đồ_án.Database;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Đồ_án.Services
{
    public class DatabaseImageTableServices
    {
        private static DatabaseImageTableServices s_instance;

        public static DatabaseImageTableServices Instance => s_instance ?? (s_instance = new DatabaseImageTableServices());

        public Func<Đồ_ÁnEntities> db = () => DataProvider.Instance.Database;

        public DatabaseImageTableServices() { }

        #region Convert

        public DatabaseImageTable ConvertImageToDatabaseImage(string image)
        {
            return new DatabaseImageTable()
            {
                Id = Guid.NewGuid(),
                Image = image
            };
        }

        #endregion

        #region Create

        public async Task<Guid> SaveImageToDatabaseAsync(string image)
        {
            var img = ConvertImageToDatabaseImage(image);
            db().DatabaseImageTables.AddOrUpdate(img);
            await db().SaveChangesAsync();
            return img.Id;
        }

        #endregion

        #region Read

        public async Task<DatabaseImageTable> GetImageByIdAsync(Guid? id)
        {
            return await db().DatabaseImageTables.FirstOrDefaultAsync(t => t.Id == id);
        }

        public DatabaseImageTable GetFirstDatabaseImageTable()
        {
            return db().DatabaseImageTables.FirstOrDefault();
        }

        #endregion

        #region Delete

        public async Task DeleteImageAsync(Guid? id)
        {
            var img = await db().DatabaseImageTables.FirstOrDefaultAsync(t => t.Id == id);
            db().DatabaseImageTables.Remove(img);
            await db().SaveChangesAsync();
        }

        #endregion
    }
}
