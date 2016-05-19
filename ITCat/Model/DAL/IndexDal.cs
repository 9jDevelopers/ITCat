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
    }
}
