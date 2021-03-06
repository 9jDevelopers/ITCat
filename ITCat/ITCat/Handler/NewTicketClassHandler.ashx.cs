﻿using BLL;
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
                
                int ticketsID = int.Parse(context.Request["ticketsID"]);
                string ticket_type = context.Request["Ticket_type"];
                string tickets_name = context.Request["Tickets_name"];
                string ticketsPrices = context.Request["TicketsPrices"];
                string tickets_illustrate = context.Request["Tickets_illustrate"];
                string orderDateD = context.Request["OrderDateD"];
                string spotID = context.Request["SpotID"];
                string ticket_time = context.Request["Ticket_time"];
                if (bt.Ticket
                    (ticketsID, ticket_type, tickets_name,
                    ticketsPrices, tickets_illustrate,
                    orderDateD, spotID, ticket_time))
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