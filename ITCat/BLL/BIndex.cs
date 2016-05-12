using Model.DAL;
using System.Data;
using MSSQLDAL;

namespace BLL
{
    public class BIndex
    {
        public IndexDal IndexDal { get; set; }
        IndexDal ID = new IndexDal();

        public string Index()
        {
            DataTable dt = ID.Index();
            string json=DataTableConvertJson.DataTableToJson("index",dt);
            return json;
        }
    }
}
