using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace iTCat.Handler
{
    /// <summary>
    /// ALoginHandler 的摘要说明
    /// </summary>
    public class ALoginHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            BARegister bt = new BARegister();
            if (context.Request["A_ID"] != null || context.Request["A_password"] != null)
            {
                string result;
                string AName = context.Request["A_ID"];
                string APassword = context.Request["A_password"];
                result = bt.ALogin(AName, APassword);
                    if (result == "-1")
                    {
                        context.Response.Write(-1);
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