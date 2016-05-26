using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace iTCat.Handler
{
    /// <summary>
    /// SessionHandler 的摘要说明
    /// </summary>
    public class SessionHandler : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            if(context.Session["userID"]==null)
            {
                context.Response.Write(-1);
            }
            else
            {
                context.Response.Write(context.Session["userName"]);
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