using Model.DAL;

namespace BLL
{
    public class BTourist
    {
        public TouristDal TouristDal  { get; set; }
        TouristDal td = new TouristDal();

        public string Login(string LoginName, string Password)
        {
            return td.Login(LoginName, Password);
        }

        public bool Register(string rusername, string rpassword)
        {
            return td.Register(rusername,rpassword);
        }
    }
}
