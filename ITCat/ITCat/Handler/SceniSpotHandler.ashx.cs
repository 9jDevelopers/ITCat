using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BLL;


namespace iTCat.Handler
{
    /// <summary>
    /// SceniSpot 的摘要说明
    /// </summary>
    public class SceniSpot : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string result;
            BScenic bs = new BScenic();
            
            
            //景点浏览
            string ScenicspotID = context.Request["txtScenicspotID"];       
            result = bs.browse(ScenicspotID);

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