using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BLL;
namespace iTCat.Handler
{
    /// <summary>
    /// PimHandler1 的摘要说明
    /// </summary>
    public class PimHandler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            BPim a = new BPim();
           if (context.Request["Tel"] != null)
            {
                string  Tel = context.Request["Tel"];
                string Email = context.Request["Email"];
                string Pname = context.Request["Pname"];
                string Name = context.Request["Name"];
                string  Gender = context.Request["Gender"];
                DateTime Birthday = DateTime.Parse(context.Request["Birthday"]);
                string Pone = context.Request[" Pone"];
                string City = context.Request["City"];
                byte[] Head_Portrait = null; // byte.Parse context.Request["Head_Portrait"];
                if (a.TM(Tel, Email, Pname, Name, Gender, Birthday, Pone, City, Head_Portrait))
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