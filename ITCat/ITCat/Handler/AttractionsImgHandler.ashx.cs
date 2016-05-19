using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace iTCat.Handler
{
    /// <summary>
    /// AttractionsImgHandler 的摘要说明
    /// </summary>
    public class AttractionsImgHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            BAttractionsImg bt = new BAttractionsImg();

            if (context.Request["AttractionsID"] != null)
            {
                //新建景点数据
                string AttractionsID = context.Request["AttractionsID"];
               
                string img1 = context.Request["image1"];
                string img2 = context.Request["image2"];
                string img3 = context.Request["image3"];
                string img4 = context.Request["image4"];
                if (bt.Img(AttractionsID,  img1, img2, img3, img4))
                {
                    context.Response.Write(1);
                }
                else
                {
                    context.Response.Write(0);
                }

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