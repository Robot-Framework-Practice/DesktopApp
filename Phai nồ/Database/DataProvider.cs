using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Đồ_án.Database
{
    public class DataProvider
    {
        private static DataProvider s_instance;

        public static DataProvider Instance => s_instance ?? (s_instance = new DataProvider());

        private DataProvider()
        {
            Database = new Đồ_ÁnEntities();
        }

        public Đồ_ÁnEntities Database { get; set; }
    }
}
