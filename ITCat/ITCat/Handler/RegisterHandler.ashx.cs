using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BLL;

namespace iTCat.Handler
{
    /// <summary>
    /// RegisterHandler 的摘要说明
    /// </summary>
    public class RegisterHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            BTourist bt = new BTourist();
            if (context.Request["rUserName"] != null || context.Request["rUserPassword"] != null)
            {
                string rusername = context.Request["rUserName"];
                string rpassword = context.Request["rUserPassword"];
                if (bt.Register(rusername, rpassword))
                {
                    context.Response.Write(1);
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