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
        public TouristDal TouristDal { get; set; }
        TouristDal td = new TouristDal();

        public bool Login(string LoginName, string Password)
        {
            return td.Login(LoginName, Password);
        }

        public bool ToString(string attractionsID,
    string attractions_name,
    string attractions_title,
    string level_RadioButton,
    string address,
    string openTime,
    string introduce,
    string attractionsTraffic,
    string contact,
    string attractionsAnnotation,
    string administratorName)
        {
            return td.ToString
                (attractionsID, attractions_name,
                attractions_title, level_RadioButton,
                address, openTime, introduce,
                attractionsTraffic, contact,
                attractionsAnnotation, administratorName);
        }
    }

}

