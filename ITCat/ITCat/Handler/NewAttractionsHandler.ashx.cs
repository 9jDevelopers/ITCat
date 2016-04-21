﻿using BLL;
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

        public void ProcessRequest(HttpContext context)
        {           
            BTourist bt = new BTourist();
            if (context.Request["txtAttractionsID"] != null)
            {
                //新建景点数据
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