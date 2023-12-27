using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Đồ_án.Model
{
    public class Address
    {
        private string nameAddress;

        public List<Address> listAddress;

        public List<Address> List
        {
            get { return listAddress; }
            set { listAddress = value; }
        }

        public string NameAddress
        {
            get { return nameAddress; }
            set { nameAddress = value; }
        }
        public Address(string NameAddress)
        {
            this.nameAddress = NameAddress;
        }

        public Address()
        {
            listAddress = new List<Address>();
            listAddress.Add(new Address("TPHCM"));
            listAddress.Add(new Address("Hà Nội"));
            listAddress.Add(new Address("Đà Nẵng"));
            listAddress.Add(new Address("Huế"));
            listAddress.Add(new Address("Thái Bình"));
            listAddress.Add(new Address("Nam Định"));
            listAddress.Add(new Address("Nghệ An"));
            listAddress.Add(new Address("Quảng Nam"));
            listAddress.Add(new Address("Quy Nhơn"));
            listAddress.Add(new Address("Khánh Hoà"));
            listAddress.Add(new Address("Lâm Đồng"));
            listAddress.Add(new Address("Bình Thuận"));
            listAddress.Add(new Address("Vũng Tàu"));
            listAddress.Add(new Address("Nha Trang"));
            listAddress.Add(new Address("TPHCM"));
            listAddress.Add(new Address("Bạc Liêu"));
            listAddress.Add(new Address("Cần Thơ"));
            listAddress.Add(new Address("Kiên Giang"));
            listAddress.Add(new Address("Sóc Trăng"));
            listAddress.Add(new Address("Cà Mau"));
        }
    }
}
