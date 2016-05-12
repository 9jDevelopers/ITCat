using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BLL;

namespace iTCat.Handler
{
    /// <summary>
    /// IndexHandler 的摘要说明
    /// </summary>
    public class IndexHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            BIndex bI = new BIndex();
            bI.Index();
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