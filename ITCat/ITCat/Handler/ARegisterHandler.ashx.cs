using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace iTCat.Handler
{
    /// <summary>
    /// ARegisterHandler 的摘要说明
    /// </summary>
    public class ARegisterHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            BARegister bt = new BARegister();
            if (context.Request["Manager_name"] != null || context.Request["Manager_phone"] != null)
            {

                string ManagerName = context.Request["Manager_name"];
                string ManagerPhone = context.Request["Manager_phone"];
                string ManagerUser = context.Request["Manager_User"];
                string ManagerPassword = context.Request["Manager_password"];
                if (bt.ARegister(ManagerName, ManagerPhone, ManagerUser, ManagerPassword))
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