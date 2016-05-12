using Model.DAL;
using System.Data;

namespace BLL
{
    public class BIndex
    {
        public IndexDal IndexDal { get; set; }
        IndexDal ID = new IndexDal();

        public DataTable Index()
        {
            return ID.Index();
        }
    }
}
