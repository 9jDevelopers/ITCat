using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BLL;

namespace iTCat
{
    /// <summary>
    /// LoginHandler 的摘要说明
    /// </summary>
    public class LoginHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string result;
            BTourist bt = new BTourist();
            if (context.Request["UserName"] != null|| context.Request["UserPassword"]!=null)
            {
                string username = context.Request["UserName"];
                string password = context.Request["UserPassword"];
                result = bt.Login(username, password);
                if (result=="-1")
                {
                    context.Response.Write(-1);
                }
                else
                {
                    context.Response.Write(result);
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