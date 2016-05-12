using Model.DAL;

namespace BLL
{
    public class BIndex
    {
        public IndexDal IndexDal { get; set; }
        IndexDal ID = new IndexDal();

        public string Index()
        {
            return ID.Index();
        }
    }
}
