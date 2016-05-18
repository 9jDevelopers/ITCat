﻿using BLL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace iTCat.Handler
{
    /// <summary>
    /// ImgHandler1 的摘要说明
    /// </summary>
    public class ImgHandler1 : IHttpHandler
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

            int UserID = 1;
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