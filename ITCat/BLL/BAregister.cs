using Model.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BARegister
    {
        public ManagerDAL ManagerDAL { get; set; }
        ManagerDAL td = new ManagerDAL();
        public bool ARegister(string managerName, string managerPhone, string managerUser, string managerPassword)
        {
            return td.ARegister(managerName, managerPhone, managerUser, managerPassword);
        }

        public String ALogin(string AName, string APassword)
        {

            return td.ALogin(AName, APassword);
        }
    }
}
