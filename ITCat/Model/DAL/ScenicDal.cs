using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MSSQLDAL;
using System.Data;
using System.Data.Common;

namespace Model.DAL
{
    public class ScenicDal
    {
        public bool browse(
                             string ScenicspotID,
                             string Scenicspot_Name,
                             string ScenicspotIntroduction,
                             string ScenicspotAddress,
                             string TicketPrice,
                             string ScenicspotPicture ,
                             string FreePolicy,
                             string FavouredPolicy,
                             string ScenicspotMap ,
                             string ScenicspotGrade ,
                             string ScenicspotTitle ,
                             string ScenicSpotContactPhone     )

        {  
            DbHelper db = new DbHelper();
            //数据库执行代码 待修改

            DbCommand cmd = db.GetStoredProcCommond("browse");
            db.AddInParameter(cmd, "@ScenicspotID", DbType.String, ScenicspotID);
            db.AddInParameter(cmd, "@Scenicspot_Name", DbType.String, Scenicspot_Name);
            db.AddInParameter(cmd, "@ScenicspotIntroduction", DbType.String, ScenicspotIntroduction);
            db.AddInParameter(cmd, "@ScenicspotAddress", DbType.String, ScenicspotAddress);
            db.AddInParameter(cmd, "@TicketPrice", DbType.String, TicketPrice);
            db.AddInParameter(cmd, "@ScenicspotPicture", DbType.String, ScenicspotPicture);
            db.AddInParameter(cmd, "@FreePolicy", DbType.String, FreePolicy);
            db.AddInParameter(cmd, "@FavouredPolicy", DbType.String, FavouredPolicy);
            db.AddInParameter(cmd, "@ScenicspotMap", DbType.String, ScenicspotMap);
            db.AddInParameter(cmd, "@ScenicspotGrade", DbType.String, ScenicspotGrade);
            db.AddInParameter(cmd, "@ScenicspotTitle", DbType.String, ScenicspotTitle);
            db.AddInParameter(cmd, "@ScenicSpotContactPhone", DbType.String, ScenicSpotContactPhone);

            db.ExecuteNonQuery(cmd);

            string result = cmd.Parameters["@retValue"].Value.ToString();

            if (result == "1")
               
                return true;
            else
                return false;
        }
    }
}
