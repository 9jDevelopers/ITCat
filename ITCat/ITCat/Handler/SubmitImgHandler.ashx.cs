using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace iTCat.Handler
{
    /// <summary>
    /// SubmitImg 的摘要说明
    /// </summary>
    public class SubmitImgHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            BPim a = new BPim();
            HttpPostedFile file = context.Request.Files[0];
            // file.InputStream.
            byte[] Head_Portrait = null;  // byte.Parse context.Request["Head_Portrait"];
            string userid = context.Request["UserID"];
            int UserID = int.Parse(userid);
            if (a.IMG(Head_Portrait, UserID))
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