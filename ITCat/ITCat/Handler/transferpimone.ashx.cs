using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace iTCat.Handler
{
    /// <summary>
    /// transferpimone 的摘要说明
    /// </summary>
    public class transferpimone : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            string result;
            BPim a = new BPim();
            //调用数据session接收userid
            string userid = context.Session["userID"].ToString();
            int UserID = int.Parse(userid);
            result = a.Information(UserID);
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