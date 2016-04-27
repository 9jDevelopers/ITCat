using Model.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
     public class BNewTicketClass
    {
        //新建票种BLL代码
        public NewTicketClassDAL NewTicketClassDAL { get; set; }
        NewTicketClassDAL td = new NewTicketClassDAL();
        public bool Ticket(
            string ticketsID ,
            string ticket_type, 
            string tickets_name,
            string ticketsPrices,
            string tickets_illustrate,
            string orderDateD,
            string spotID, 
            string ticket_time
            )
        {
            return td.Ticket(
             ticketsID,
             ticket_type,
             tickets_name,
             ticketsPrices,
             tickets_illustrate,
             orderDateD,
             spotID,
             ticket_time);
        }
    }
}
