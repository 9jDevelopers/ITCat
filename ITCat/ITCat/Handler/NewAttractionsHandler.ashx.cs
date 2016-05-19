using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace iTCat.Handler
{
    /// <summary>
    /// NewAttractionsHandler 的摘要说明
    /// </summary>
    public class NewAttractionsHandler : IHttpHandler
    {
        //新建景点Handler代码
        public void ProcessRequest(HttpContext context)
        {
            BNewAttractions bt = new BNewAttractions();
           
            if (context.Request["AttractionsID"] != null)
            {
                //新建景点数据
                string AttractionsID = context.Request["AttractionsID"];
                string Attractions_name = context.Request["Attractions_name"];
                string Attractions_title = context.Request["Attractions_title"];
                string Level_RadioButton = context.Request["Level_RadioButton"];
                string Address = context.Request["Address"];
                string OpenTime = context.Request["OpenTime"];
                string Introduce = context.Request["Introduce"];
                string Contact = context.Request["Contact"];
                string NoteAttractions = context.Request["NoteAttractions"];
                string img1 = context.Request["image1"];
                string img2 = context.Request["image2"];
                string img3 = context.Request["image3"];
                string img4 = context.Request["image4"];
                if (bt.ToString(AttractionsID, Attractions_name, Attractions_title, Level_RadioButton, Address, OpenTime, Introduce, Contact, NoteAttractions, img1, img2, img3, img4))
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