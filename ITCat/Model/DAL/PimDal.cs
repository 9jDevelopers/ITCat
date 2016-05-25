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
    public class PimDal
    {
        //上传图片 
            public bool IMG(byte[] Head_Portrait, Int32 UserID)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetStoredProcCommond("sp_Pim2");


            //数据库执行代码 待修改
          
            db.AddInParameter(cmd, "@Head_Portrait", DbType.Binary, Head_Portrait);
            db.AddInParameter(cmd, "@UserID", DbType.Int32, UserID);
            int result = db.ExecuteNonQuery(cmd);
            if (result == 1)
                //上传成功
                return true;
            else
                return false;
         }
        //上传文本资料
        public bool TM(string Tel, string Email, string Pname, string Name, string Gender, DateTime Birthday, string City, Int32 UserID)
        {
            DbHelper db = new DbHelper();

            //数据库执行代码 待修改
            DbCommand cmd = db.GetStoredProcCommond("sp_Pim");
            db.AddInParameter(cmd, "@Tel", DbType.String, Tel);
            db.AddInParameter(cmd, "@Name", DbType.String, Name);
            db.AddInParameter(cmd, "@Email", DbType.String, Email);
            db.AddInParameter(cmd, "@Gender", DbType.String, Gender);
            db.AddInParameter(cmd, "@Birthday", DbType.DateTime, Birthday);
            db.AddInParameter(cmd, "@City", DbType.String, City);
            db.AddInParameter(cmd, "@Pname", DbType.String, Pname);
            db.AddInParameter(cmd, "@UserID", DbType.Int32, UserID);
            int result = db.ExecuteNonQuery(cmd);

            if (result == 1)
                //上传成功
                return true;
            else
                return false;
        }
        public DataTable Information(Int32 UserID)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetStoredProcCommond("sp_Pimxx");
            db.AddInParameter(cmd, "@UserID", DbType.Int32, UserID);
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
   
    


