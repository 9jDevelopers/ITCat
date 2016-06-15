using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.DAL;
using System.Data;
using MSSQLDAL;

namespace BLL
{
    public class BTickets
    {
        public BuyTicketDal BuyTicketDal { get; set; }
        BuyTicketDal Ticket =new BuyTicketDal();
    }
}
