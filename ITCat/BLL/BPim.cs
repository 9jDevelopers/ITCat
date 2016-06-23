using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.DAL;
using System.Data;
using MSSQLDAL;

namespace BLL
{
    public class BPim
    {
        public PimDal PimDal { get; set; }
        PimDal a = new PimDal();
        public bool IMG(byte[] Head_Portrait, Int32 UserID)
        {
            return a.IMG(Head_Portrait, UserID);
        }
        //转化为JOSN数组
        public byte[] Image(Int32 UserID)
        {
            return a.Image(UserID);
        }

        public bool TM( string Tel, string Email, string Pname, string Name, string Gender, DateTime Birthday,  string City,Int32 UserID)
        {

            return a.TM(Tel, Email, Pname, Name, Gender, Birthday, City,UserID);
        }
        //调用
        public string Information(Int32 UserID)
        {
            DataTable dt = a.Information(UserID);
            string json = DataTableConvertJson.DataTableToJson("Information", dt);
            return json;
        }
        public string order(Int32 UserID)
        {
            DataTable dt = a.order(UserID);
            string json = DataTableConvertJson.DataTableToJson("order", dt);
            return json;
        }

    }
}
