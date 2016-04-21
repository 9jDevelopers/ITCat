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
            BNewAttractions  bt = new  BNewAttractions();
            
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
                if (bt.ToString(AttractionsID, Attractions_name, Attractions_title, Level_RadioButton, Address, OpenTime, Introduce,  Contact, NoteAttractions ))
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