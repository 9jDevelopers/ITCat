using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace iTCat
{
    /// <summary>
    /// Handler 的摘要说明
    /// </summary>
    public class Handler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";

            //登陆
            string username = context.Request["UserName"];
            string password = context.Request["UserPassword"];
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