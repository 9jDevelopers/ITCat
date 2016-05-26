using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MSSQLDAL;
using Model.DAL;
using System.Data;

namespace BLL
{
   public class BGetimg
    {
        public GetimgDal GtimgDal { get; set; }
        GetimgDal td = new GetimgDal();

        public string browse(string GetimgID)
        {
            DataTable dt = td.browse(GetimgID);
            string json = DataTableConvertJson.DataTableToJson("browse", dt);
            return json;
        }
    }
}