﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BLL;


namespace iTCat.Handler
{
    /// <summary>
    /// GtimgHandler 的摘要说明
    /// </summary>
    public class GetimgHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string result;
            BGetimg bs = new BGetimg();

            string GetimgID = context.Request["txtGetimgID"];
            result = bs.browse(GetimgID);

            context.Response.Write(result);
        }

        public string IsReusable
        {
            get
            {
                return "-1";
            }
        }

        bool IHttpHandler.IsReusable
        {
            get
            {
                throw new NotImplementedException();
            }
        }
    }
}