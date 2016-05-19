using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BLL;
namespace iTCat.Handler
{
    /// <summary>
    /// PimHandler1 的摘要说明
    /// </summary>
    public class PimHandler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string action = context.Request["Action"];
            if (action == "submitImg")
            {
                BPim a = new BPim();
                byte[] Head_Portrait = null; // byte.Parse context.Request["Head_Portrait"];
                string userid = context.Request["UserID"];
                int UserID = int.Parse(userid);
                if (a.IMG( Head_Portrait, UserID))
                {
                    context.Response.Write(1);
                }
                else
                {
                    context.Response.Write(0);
                }
            }
            if (action == "userInfo")
            {
                BPim a = new BPim();

                if (context.Request["UserID"] != null)
                {
                    
                    string Tel = context.Request["Tel"];
                    string Email = context.Request["Email"];
                    string Pname = context.Request["Pname"];
                    string Name = context.Request["Name"];
                    string Gender = context.Request["Gender"];
                    string birthday = context.Request["Birthday"];
                    DateTime Birthday = DateTime.Parse(birthday);
                    string City = context.Request["City"];
                    string userid = context.Request["UserID"];
                    int UserID = int.Parse(userid);

                    if (a.TM(Tel, Email, Pname, Name, Gender, Birthday, City, UserID))
                    {
                        context.Response.Write(1);
                    }
                    else
                    {
                        context.Response.Write(0);
                    }
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