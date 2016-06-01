using System;
using MSSQLDAL;
using System.Data;
using System.Data.Common;

namespace Model.DAL
{
    public class IndexDal
    {
        public DataTable Index()
        {
            DbHelper db = new DbHelper();

            DbCommand cmd = db.GetStoredProcCommond("sp_Index");    
            DataTable dt = db.ExecuteDataTable(cmd);

            return dt;
        }

        public string Getimage(string AttractionsID)
        {
            DbHelper db = new DbHelper();

            DbCommand cmd = db.GetStoredProcCommond("sp_IndexGetimage");
            db.AddInParameter(cmd, "@AttractionsID", DbType.String, AttractionsID);

            DataTable dt = db.ExecuteDataTable(cmd);

            string result =dt.Rows[0][0].ToString();

            return result;

        }
    }
}
