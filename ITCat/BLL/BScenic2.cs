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
   public class BScenic2
    {
        public Scenic2Dal ScenicDal { get; set; }
        Scenic2Dal td = new Scenic2Dal();

        public string browseq(string AttractionsID)
        {
            DataTable dt = td.browseq(AttractionsID);
            string json = DataTableConvertJson.DataTableToJson("browseq", dt);
            return json;
        }
    }
}
