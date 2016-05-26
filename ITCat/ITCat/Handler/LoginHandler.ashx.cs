using System.Web;
using BLL;
using System.Web.SessionState;



namespace iTCat
{
    /// <summary>
    /// LoginHandler 的摘要说明
    /// </summary>
    public class LoginHandler : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            string result;
            BTourist bt = new BTourist();
            if (context.Request["UserName"] != null|| context.Request["UserPassword"]!=null)
            {
                string username = context.Request["UserName"];
                string password = context.Request["UserPassword"];
                result = bt.Login(username, password);
                if (result=="-1")
                {
                    context.Response.Write(-1);
                }
                else
                {
                    context.Session["userID"]  = result;
                    context.Session["userName"] = username;
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