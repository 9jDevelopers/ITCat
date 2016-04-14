using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BLL;
using System.Data;

namespace iTCat
{
    /// <summary>
    /// Handler 的摘要说明
    /// </summary>
    public class Handler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";

            //登陆
            BTourist bt = new BTourist();
            string username = context.Request["UserName"];
            string password = context.Request["UserPassword"];
            if (bt.Login(username, password))
            {
                context.Response.Write(1);
            }
            else
            {
                context.Response.Write(0);
            }

            //新建景点
            string AttractionsID = context.Request["txtAttractionsID"];
            string Attractions_name = context.Request["txtAttractions_name"];
            string Attractions_title = context.Request["txtAttractions_title"];
            string Level_RadioButton = context.Request["lang"];
            string Address = context.Request["AddressTextBox"];
            string OpenTime = context.Request["OpenTimeTextBox"];
            string Introduce = context.Request["IntroduceTextBox"];
            string AttractionsTraffic = context.Request["attractions_traffic"];
            string Contact = context.Request["contact"];
            string AttractionsAnnotation = context.Request["Attractions_annotation"];
            string AdministratorName = context.Request["AdministratorName-TextBox"];
            if (bt.ToString(AttractionsID, Attractions_name, Attractions_title, Level_RadioButton, Address, OpenTime, Introduce, AttractionsTraffic, Contact, AttractionsAnnotation, AdministratorName))
            {
                context.Response.Write(1);
            }
            else
            {
                context.Response.Write(0);
            }

            //个人信息
            string Tel = context.Request["Tel"];
            string Email = context.Request["Email"];
            string Pname = context.Request["Pname"];
            string Name = context.Request["Name"];
            string Gender = context.Request["Gender"];
            string Birthday = context.Request[" Birthday"];
            string Pone = context.Request[" Pone"];
            string City = context.Request["City"];
            if (bt.TM(Tel, Email, Pname, Name, Gender, Birthday, Pone, City))
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