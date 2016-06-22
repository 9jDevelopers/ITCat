using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace iTCat.Handler
{
    /// <summary>
    /// OrderHandler 的摘要说明
    /// </summary>
    public class OrderHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string result;
            BPim a = new BPim();
            //调用数据session接收userid
            string userid = context.Session["userID"].ToString();
            int UserID = int.Parse(userid);
            result = a.order(UserID);
            context.Response.Write(result);
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