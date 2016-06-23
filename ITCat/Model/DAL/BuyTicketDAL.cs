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
    public  class BuyTicketDal
    {
        //数据提取表
      public DataTable BuyTicket()
        {
            //使用DBHelper
            DbHelper db = new DbHelper();
            //打开数据库，执行存储过程
            DbCommand cmd = db.GetStoredProcCommond("sp_BuyTicket");
            //将数据赋值给dt
            DataTable dt = db.ExecuteDataTable(cmd);
            //返回数据表
            return dt;
            
        }
        //获取景点标题
        public string GetAttractionsTitle(string AttractionsID)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetStoredProcCommond("sp_AttractionsTitle");
            //添加AttractionsID
            db.AddInParameter(cmd,"@AttractionsID",DbType.String,AttractionsID);
            DataTable dt = db.ExecuteDataTable(cmd);
            string result = dt.Rows[0][0].ToString();
            return result;
        }
        //获取票的信息
        public string GetTicketPro(string AttractionsID)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetStoredProcCommond("sp_TicketPro");
            db.AddInParameter(cmd, "@AttractionsID", DbType.String, AttractionsID);
            DataTable dt = db.ExecuteDataTable(cmd);
            string result = dt.Rows[0][0].ToString()+"$" +dt.Rows[0][1].ToString();
            return result;
        }
    }
}
