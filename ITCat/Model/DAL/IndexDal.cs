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
    class IndexDal
    {
        public String Index()
        {
            DbHelper db = new DbHelper();

            DbCommand cmd = db.GetStoredProcCommond("sp_Index");
            
            db.AddReturnParameter(cmd, "@retValue", DbType.Int32);

            db.ExecuteNonQuery(cmd);


            string result = cmd.Parameters["@retValue"].Value.ToString();

            if (result == "-1")
                return "-1";
            else
                return result;
        }
    }
}
