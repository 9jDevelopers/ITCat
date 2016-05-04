﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MSSQLDAL;
using Model.DAL;

namespace BLL
{
    public class BTourist
    {
        public TouristDal TouristDal  { get; set; }
        TouristDal td = new TouristDal();

        public string Login(string LoginName, string Password)
        {
            return td.Login(LoginName, Password);
        }

        public bool Register(string rusername, string rpassword)
        {
            return td.Register(rusername,rpassword);
        }
    }
}
