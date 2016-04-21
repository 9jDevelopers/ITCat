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
            string Ticket_type, 
            string tickets_name,
            string ticketsPrices,
            string Tickets_illustrate,
            string OrderDateD,
            string SpotID, 
            string Ticket_time
            )
        {
            return td.Ticket(
             ticketsID,
             Ticket_type,
             tickets_name,
             ticketsPrices,
             Tickets_illustrate,
             OrderDateD,
             SpotID,
             Ticket_time);
        }
    }
}
