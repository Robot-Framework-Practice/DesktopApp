using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Đồ_án.Model
{
    public class Country
    {
        private List<Country> listCountry;

        public List<Country> ListCountry
        {
            get { return listCountry; }
            set { listCountry = value; }
        }

        private String countryName;
        public String CountryName
        {
            get { return countryName; }
            set { countryName = value; }
        }
        public Country()
        {
            ListCountry = new List<Country>();
            ListCountry.Add(new Country("VietNam"));
            ListCountry.Add(new Country("China"));
            ListCountry.Add(new Country("Russia"));
            ListCountry.Add(new Country("USA"));
            ListCountry.Add(new Country("England"));
            ListCountry.Add(new Country("France"));
            ListCountry.Add(new Country("Other"));
        }
        public Country(string a)
        {
            countryName = a;
        }
    }
}
