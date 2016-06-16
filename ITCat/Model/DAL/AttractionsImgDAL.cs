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
    public class AttractionsImgDAL
    {       

        public bool Img(string attractionsID, string img_src)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetStoredProcCommond("sp_AttractionsImg");
            db.AddInParameter(cmd, "@AttractionsID", DbType.String, attractionsID);
            db.AddInParameter(cmd, "@imagePath1", DbType.String, img_src);           
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
