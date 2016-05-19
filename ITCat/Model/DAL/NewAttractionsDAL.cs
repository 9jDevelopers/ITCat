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
        public bool ToString(string attractionsID, string attractions_name, string attractions_title, string level_RadioButton, string address, string openTime, string introduce, string contact, string noteAttractions, string img1, string img2, string img3, string img4)
        {         
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetStoredProcCommond("sp_Attractions");
            db.AddInParameter(cmd, "@AttractionsID", DbType.String, attractionsID);
            db.AddInParameter(cmd, "@AttractionsName", DbType.String, attractions_name);
            db.AddInParameter(cmd, "@AttractionsTitle", DbType.String, attractions_title);
            db.AddInParameter(cmd, "@AttractionsLevel", DbType.String, level_RadioButton);
            db.AddInParameter(cmd, "@AttractionsAddress", DbType.String, address);
            db.AddInParameter(cmd, "@OpenTime", DbType.String, openTime);
            db.AddInParameter(cmd, "@AttractionsSynopsis", DbType.String, introduce);
            db.AddInParameter(cmd, "@AttractionsContact", DbType.String, contact);
            db.AddInParameter(cmd, "@NoteAttractions", DbType.String, noteAttractions);
            db.AddInParameter(cmd, "@NoteAttractions", DbType.String, noteAttractions);
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
