using MSSQLDAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAL
{
    public class ManagerDAL
    {
        public bool ARegister(string managerName, string managerPhone, string managerUser, string managerPassword)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetStoredProcCommond("sp_ARegister");
            db.AddInParameter(cmd, "@ManagerName", DbType.String, managerName);
            db.AddInParameter(cmd, "@ManagerPhone", DbType.String, managerPhone);
            db.AddInParameter(cmd, "@ManagerUser", DbType.String, managerUser);
            db.AddInParameter(cmd, "@ManagerPassword", DbType.String, managerPassword);
            db.AddReturnParameter(cmd, "@retValue", DbType.Int32);
            db.ExecuteNonQuery(cmd);


            string result = cmd.Parameters["@retValue"].Value.ToString();

            if (result == "1")
                //管理员注册成功
                return true;
            else
                return false;
        }

        public String ALogin(string AName, string APassword)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetStoredProcCommond("sp_ALogin");
            db.AddInParameter(cmd, "@ManagerUser", DbType.String, AName);         
            db.AddInParameter(cmd, "@ManagerPassword", DbType.String, APassword);
            db.AddReturnParameter(cmd, "@retValue", DbType.Int32);
            db.ExecuteNonQuery(cmd);

            string re = cmd.Parameters["@retValue"].Value.ToString();

            if (re == "-1")
                return "-1";
            else
                return re;
            
                //管理员登录成功        
        }
    }
}
