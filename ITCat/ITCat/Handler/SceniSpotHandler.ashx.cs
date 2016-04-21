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
            BTourist bt = new BTourist();  
              if (context.Request["txtScenicspotID"] != null)
            {
                //景点浏览
                string ScenicspotID = context.Request["txtScenicspotID"];
                string Scenicspot_Name = context.Request["txtScenicspot_Name"];
                string ScenicspotIntroduction = context.Request["txtScenicspot_Introduction"];
                string ScenicspotAddress = context.Request["txtScenicspot_Address"];
                string TicketPrice = context.Request["txtTicketPrice"];
                string ScenicspotPicture = context.Request["txtScenicspot_Picture"];
                string FreePolicy = context.Request["txtFreePolicy"];
                string FavouredPolicy = context.Request["txtFavouredPolicy"];
                string ScenicspotMap = context.Request["txtScenicspot_Map"];
                string ScenicspotGrade = context.Request["txtScenicspot_Grade"];
                string ScenicspotTitle = context.Request["txtScenicspot_Title"];
                string ScenicSpotContactPhone = context.Request["txtScenicSpot_ContactPhone"];
                if (bt.browse(ScenicspotID, Scenicspot_Name, ScenicspotIntroduction, ScenicspotAddress, TicketPrice, ScenicspotPicture, FreePolicy, FavouredPolicy, ScenicspotMap, ScenicspotGrade, ScenicspotTitle, ScenicSpotContactPhone))
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