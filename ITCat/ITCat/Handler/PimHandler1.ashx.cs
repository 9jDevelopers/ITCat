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
            BTourist bt = new BTourist();
           if (context.Request["Tel"] != null)
            {
                string Tel = context.Request["Tel"];
                string Email = context.Request["Email"];
                string Pname = context.Request["Pname"];
                string Name = context.Request["Name"];
                string Gender = context.Request["Gender"];
                string Birthday = context.Request[" Birthday"];
                string Pone = context.Request[" Pone"];
                string City = context.Request["City"];
                string Head_Portrait = context.Request["Head_Portrait"];
                if (bt.TM(Tel, Email, Pname, Name, Gender, Birthday, Pone, City, Head_Portrait))
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