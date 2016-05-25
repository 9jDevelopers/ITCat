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
    public class Scenic2Dal
    {
        public DataTable browse(string Scenics2potID)

        {
            DbHelper db = new DbHelper();
            //数据库执行代码 待修改

            DbCommand cmd = db.GetStoredProcCommond("sp_Scenic2");
            db.AddInParameter(cmd, "@AttractionsID", DbType.String, Scenics2potID);
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
