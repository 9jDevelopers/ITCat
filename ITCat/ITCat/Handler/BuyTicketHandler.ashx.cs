using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BLL;
using System.Web.SessionState;

namespace iTCat.Handler
{
    /// <summary>
    /// BuyTicketHandler1 的摘要说明
    /// </summary>
    public class BuyTicketHandler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            BTickets Ticket = new BTickets();
            string id= context.Request["AttractionsID"];
            string outStr = "AttractionsTitle,TicketsType,Price"; 
            context.Response.Write(outStr);
           
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