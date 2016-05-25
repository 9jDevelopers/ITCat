using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace iTCat.Handler
{
    /// <summary>
    /// PimImage 的摘要说明
    /// </summary>
    public class PimImage : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string result;
            BPim a = new BPim();
            //调用数据
            string userid = context.Request["UserID"];
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