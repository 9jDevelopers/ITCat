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

            //if (context.Request["AttractionsID"] != null)
            //{
                //新建景点数据
                string AttractionsID = context.Request["AttractionsID"];
                string imgs = context.Request["images"];            
                string[] sArray = imgs.Split('g');
                string img_src="";
            string src = "../Management/NewAttractions/img/";
            foreach (string i in sArray)
            {
                img_src = src + i.ToString() + "g";
                if (i != "")
                {
                    if (bt.Img(AttractionsID, img_src))
                    {

                        context.Response.Write(1);
                        img_src = "";
                    }
                
                else
                {
                    context.Response.Write(0);
                }
                }
              else
                {
                  context.Response.Write(1);
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