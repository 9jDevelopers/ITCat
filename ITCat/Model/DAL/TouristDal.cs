﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MSSQLDAL;
using System.Data;
using System.Data.Common;

namespace Model.DAL
{
    public class TouristDal
    {
        public String Login(string LoginName, string Password)
        {
            DbHelper db = new DbHelper();

            DbCommand cmd = db.GetStoredProcCommond("sp_Login");
            db.AddInParameter(cmd, "@LoginName", DbType.String, LoginName);
            db.AddInParameter(cmd, "@Password", DbType.String, Password);
            db.AddReturnParameter(cmd, "@retValue", DbType.Int32);

            db.ExecuteNonQuery(cmd);


            string result = cmd.Parameters["@retValue"].Value.ToString();

            if (result == "0")
                return "-1";
            else
                return result;
        }

        public bool Register(string rusername, string rpassword)
        {
            DbHelper db = new DbHelper();

            DbCommand cmd = db.GetStoredProcCommond("sp_Register");
            db.AddInParameter(cmd, "@Pname", DbType.String, rusername);
            db.AddInParameter(cmd, "@Password", DbType.String, rpassword);
            db.AddReturnParameter(cmd, "@retValue", DbType.Int32);

            db.ExecuteNonQuery(cmd);


            string result = cmd.Parameters["@retValue"].Value.ToString();

            if (result == "1")
                //注册成功
                return true;
            else
                return false;
        }
    }
}
