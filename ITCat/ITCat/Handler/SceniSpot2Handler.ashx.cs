using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace iTCat.Handler
{
    /// <summary>
    /// SceniSpot2Handler 的摘要说明
    /// </summary>
    public class SceniSpot2Handler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("Hello World");
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