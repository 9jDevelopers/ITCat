using BLL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace iTCat.Handler
{
    /// <summary>
    /// ImgHandler1 的摘要说明
    /// </summary>
    public class ImgHandler1 : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            BPim a = new BPim();
            HttpPostedFile file = context.Request.Files[0];
            // file.InputStream.
            byte[] Head_Portrait = null;  // byte.Parse context.Request["Head_Portrait"];
            
            using (var binaryReader = new BinaryReader(file.InputStream))
            {
                Head_Portrait = binaryReader.ReadBytes(file.ContentLength);
            }

            string userid = context.Session["userID"].ToString();
            int UserID = int.Parse(userid);
            bool result = false;
            try
            {
                result = a.IMG(Head_Portrait, UserID);
            }
            
            catch(Exception ex)
            {
                context.Response.Write(ex.ToString());
            }
            if (result)
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