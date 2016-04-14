using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BLL;
using System.Data;

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
            BTourist bt = new BTourist();
            string username = context.Request["UserName"];
            string password = context.Request["UserPassword"];
            if (bt.Login(username, password))
            {
                context.Response.Write(1);
            }
            else
            {
                context.Response.Write(0);
            }

            //个人信息
            string Tel = context.Request["Tel"];
            string password = context.Request["UserPassword"];
            if (bt.Login(username, password))
            {
                context.Response.Write(1);
            }
            else
            {
                context.Response.Write(0);
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