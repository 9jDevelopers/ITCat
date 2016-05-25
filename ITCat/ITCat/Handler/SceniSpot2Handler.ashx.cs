using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BLL;  

namespace iTCat.Handler
{
    /// <summary>
    /// SceniSpot2Handler 的摘要说明
    /// </summary>
    public class SceniSpot2Handler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string result;
            BScenic2 bs = new BScenic2();

            string ScenicspotID = context.Request["txtScenicspotID"];
            result = bs.browseq(ScenicspotID);

            context.Response.Write(result);
        }

        public string  IsReusable
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