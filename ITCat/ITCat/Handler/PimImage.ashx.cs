using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace iTCat.Handler
{
    /// <summary>  
    /// PimImage 的摘要说明
    /// </summary>
    public class PimImage : IHttpHandler,IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
           
            BPim a = new BPim();
            //调用数据
            string userid = context.Session["userID"].ToString();
            int UserID = int.Parse(userid);
            //二进制流
            byte[]result = a.Image(UserID);
            //判断是否有头像
            if (result != null)
            {
                context.Response.BinaryWrite(result);
            }
            else
            {
                return;
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