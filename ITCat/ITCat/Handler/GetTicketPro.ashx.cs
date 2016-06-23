using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace iTCat.Handler
{
    /// <summary>
    /// GetTickerPro 的摘要说明
    /// </summary>
    public class GetTickerPro : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string AID = context.Request.Form["AttractionsID"];
            BTickets Ticket = new BTickets();
            string json = Ticket.GetTicketPro(AID);
           
            context.Response.Write(json);
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