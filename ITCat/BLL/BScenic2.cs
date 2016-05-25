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
        public Scenic2Dal Scenic2Dal { get; set; }
        Scenic2Dal td = new Scenic2Dal();

        public string browse(string scenics2potID)
        {
            DataTable dt = td.browse(scenics2potID);
            string json = DataTableConvertJson.DataTableToJson("browse", dt);
            return json;
        }
    }
}
