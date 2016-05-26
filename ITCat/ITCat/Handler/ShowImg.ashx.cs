using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BLL;

namespace iTCat.Handler
{
    /// <summary>
    /// ShowImg 的摘要说明
    /// </summary>
    public class ShowImg : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            BIndex bi = new BIndex();
            string AttractionsID= context.Request["AttractionsID"];
            string result = bi.GetImage(AttractionsID);

            if (result != null)
            {
                context.Response.Write(result);
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