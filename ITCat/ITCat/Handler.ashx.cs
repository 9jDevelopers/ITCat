//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using BLL;
//using System.Data;

//namespace iTCat
//{
//    /// <summary>
//    /// Handler 的摘要说明
//    /// </summary>
//    public class Handler : IHttpHandler
//    {
            
//        public void ProcessRequest(HttpContext context)
//        {
//            context.Response.ContentType = "text/plain";

//            //登陆
//            BTourist bt = new BTourist();
//            if (context.Request["UserName"] != null)
//            {
//                string username = context.Request["UserName"];
//                string password = context.Request["UserPassword"];
//                if (bt.Login(username, password))
//                {
//                    context.Response.Write(1);
//                }
//                else
//                {
//                    context.Response.Write(0);
//                }
//            }
//            else if (context.Request["txtAttractionsID"] != null)
//            {
//                //新建景点数据
//                string AttractionsID = context.Request["txtAttractionsID"];
//                string Attractions_name = context.Request["txtAttractions_name"];
//                string Attractions_title = context.Request["txtAttractions_title"];
//                string Level_RadioButton = context.Request["lang"];
//                string Address = context.Request["AddressTextBox"];
//                string OpenTime = context.Request["OpenTimeTextBox"];
//                string Introduce = context.Request["IntroduceTextBox"];
//                string AttractionsTraffic = context.Request["attractions_traffic"];
//                string Contact = context.Request["contact"];
//                string AttractionsAnnotation = context.Request["Attractions_annotation"];
//                string AdministratorName = context.Request["AdministratorName-TextBox"];
//                if (bt.ToString(AttractionsID, Attractions_name, Attractions_title, Level_RadioButton, Address, OpenTime, Introduce, AttractionsTraffic, Contact, AttractionsAnnotation, AdministratorName))
//                {
//                    context.Response.Write(1);
//                }
//                else
//                {
//                    context.Response.Write(0);
//                }
//            }
//            //个人信息
//            else if (context.Request["Tel"] != null)
//            {
//                string Tel = context.Request["Tel"];
//                string Email = context.Request["Email"];
//                string Pname = context.Request["Pname"];
//                string Name = context.Request["Name"];
//                string Gender = context.Request["Gender"];
//                string Birthday = context.Request[" Birthday"];
//                string Pone = context.Request[" Pone"];
//                string City = context.Request["City"];
//                string Head_Portrait = context.Request["Head_Portrait"];
//                if (bt.TM(Tel, Email, Pname, Name, Gender, Birthday, Pone, City, Head_Portrait))
//                {
//                    context.Response.Write(1);
//                }
//                else
//                {
//                    context.Response.Write(0);
//                }
//            }
//            else if (context.Request["txtScenicspotID"] != null)
//            {
//                //景点浏览
//                string ScenicspotID = context.Request["txtScenicspotID"];
//                string Scenicspot_Name = context.Request["txtScenicspot_Name"];
//                string ScenicspotIntroduction = context.Request["txtScenicspot_Introduction"];
//                string ScenicspotAddress = context.Request["txtScenicspot_Address"];
//                string TicketPrice = context.Request["txtTicketPrice"];
//                string ScenicspotPicture = context.Request["txtScenicspot_Picture"];
//                string FreePolicy = context.Request["txtFreePolicy"];
//                string FavouredPolicy = context.Request["txtFavouredPolicy"];
//                string ScenicspotMap = context.Request["txtScenicspot_Map"];
//                string ScenicspotGrade = context.Request["txtScenicspot_Grade"];
//                string ScenicspotTitle = context.Request["txtScenicspot_Title"];
//                string ScenicSpotContactPhone = context.Request["txtScenicSpot_ContactPhone"];
//                if (bt.browse(ScenicspotID, Scenicspot_Name, ScenicspotIntroduction, ScenicspotAddress, TicketPrice, ScenicspotPicture, FreePolicy, FavouredPolicy, ScenicspotMap, ScenicspotGrade, ScenicspotTitle, ScenicSpotContactPhone))
//                {
//                    context.Response.Write(1);
//                }
//                else
//                {
//                    context.Response.Write(0);
//                }
//              }
//            else if (context.Request["ticketsID"] != null)
//            {
//                //新建票种成功
//                string ticketsID = context.Request["ticketsID"];
//                string Ticket_type = context.Request["Ticket_type"];
//                string tickets_name = context.Request["tickets_name"];
//                string ticketsPrices = context.Request["ticketsPrices"];
//                string Tickets_illustrate = context.Request["Tickets_illustrate"];
//                string OrderDateD = context.Request["OrderDateD"];
//                string SpotID = context.Request["SpotID_text"];
//                string Ticket_time = context.Request["Ticket_time"];
//                if (bt.ToString
//                    (ticketsID, Ticket_type, tickets_name,
//                    ticketsPrices, Tickets_illustrate,
//                    OrderDateD, SpotID, Ticket_time))
//                {
//                    context.Response.Write(1);
//                }
//                else
//                {
//                    context.Response.Write(0);
//                }
//            }
//}
//        public bool IsReusable
//        {
//            get
//            {
//                return false;
//            }
//        }

//    }
//}