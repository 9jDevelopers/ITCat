using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MSSQLDAL;
using Model.DAL;

namespace BLL
{
    public class BTourist
    {
        public TouristDal TouristDal  { get; set; }
        TouristDal td = new TouristDal();

        public bool Login(string LoginName, string Password)
        {
            return td.Login(LoginName, Password);
        }

        public bool ToString(string ticketsID, string ticket_type, string tickets_name, string ticketsPrices, string tickets_illustrate, string orderDateD, string spotID, string ticket_time)
        {
            throw new NotImplementedException();
        }
    }
}
