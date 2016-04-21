using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace iTCat.Handler
{
    /// <summary>
    /// NewTicketClassHandler 的摘要说明
    /// </summary>
    public class NewTicketClassHandler : IHttpHandler
    {
        //新建票种Handler代码
        public void ProcessRequest(HttpContext context)
        {
            BNewTicketClass bt = new BNewTicketClass();
              if (context.Request["ticketsID"] != null)
            {
                
                string ticketsID = context.Request["ticketsID"];
                string Ticket_type = context.Request["Ticket_type"];
                string tickets_name = context.Request["tickets_name"];
                string ticketsPrices = context.Request["ticketsPrices"];
                string Tickets_illustrate = context.Request["Tickets_illustrate"];
                string OrderDateD = context.Request["OrderDateD"];
                string SpotID = context.Request["SpotID_text"];
                string Ticket_time = context.Request["Ticket_time"];
                if (bt.Ticket
                    (ticketsID, Ticket_type, tickets_name,
                    ticketsPrices, Tickets_illustrate,
                    OrderDateD, SpotID, Ticket_time))
                {
                    context.Response.Write(1);
                    //新建票种成功
                }
                else
                {
                    context.Response.Write(0);
                }
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}