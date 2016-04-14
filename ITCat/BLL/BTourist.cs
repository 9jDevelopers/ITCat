using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MSSQLDAL;
using Model;

namespace BLL
{
    public class BTourist
    {
        public TouristDal TouristDal  { get; set; }
        TouristDal td = new TouristDal();

        public bool Login(string LoginName, string Password)
        {
            return td.Login(LoginName, Password);
        }
        public bool TM(string Tel, string Email,  string Pname, string Name, string Gender, string Birthday, string Pone, string City)
        { 
            return td.TM(Tel, Email, Pname, Name, Gender, Birthday, Pone, City);
        }

    }
}
