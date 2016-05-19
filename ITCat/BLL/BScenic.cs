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
    public class BScenic
    {
        public ScenicDal ScenicDal { get; set; }
        ScenicDal td = new ScenicDal();

        public string browse(string scenicspotID)
        {
            DataTable dt = td.browse(scenicspotID);
            string json = DataTableConvertJson.DataTableToJson("browse",dt);
            return json;
        }
    }
}
