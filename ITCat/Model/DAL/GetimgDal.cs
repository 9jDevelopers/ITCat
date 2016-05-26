using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MSSQLDAL;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;

namespace Model.DAL
{
   public class GetimgDal
    {
        public DataTable browse(string GetimgID)

        {
            DbHelper db = new DbHelper();          

            DbCommand cmd = db.GetStoredProcCommond("sp_Getimg");
            db.AddInParameter(cmd, "@AttractionsID", DbType.String, GetimgID);
            try
            {
                DataTable dt = db.ExecuteDataTable(cmd);
                return dt;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return null;
            }

        }
    }
}
