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
    public class NewAttractionsDAL
    {
        //新建景点DAL代码
        public bool ToString(string attractionsID, string attractions_name, string attractions_title, string level_RadioButton, string address, string openTime, string introduce, string contact, string noteAttractions)
        {         
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetStoredProcCommond("sp_Login");
            db.AddInParameter(cmd, "@spotID", DbType.String, attractionsID);
            db.AddInParameter(cmd, "@name", DbType.String, attractions_name);
            db.AddInParameter(cmd, "@title", DbType.String, attractions_title);
            db.AddInParameter(cmd, "@level", DbType.String, level_RadioButton);
            db.AddInParameter(cmd, "@address", DbType.String, address);
            db.AddInParameter(cmd, "@openTime", DbType.String, openTime);
            db.AddInParameter(cmd, "@introduce", DbType.String, introduce);
            db.AddInParameter(cmd, "@contact", DbType.String, contact);
            db.AddInParameter(cmd, "@NoteAttractions", DbType.String, NoteAttractions);
            db.AddReturnParameter(cmd, "@retValue", DbType.Int32);

            db.ExecuteNonQuery(cmd);


            string result = cmd.Parameters["@retValue"].Value.ToString();

            if (result == "1")
                //新建景点成功
                return true;
            else
                return false;
        }
    }
    }
}
