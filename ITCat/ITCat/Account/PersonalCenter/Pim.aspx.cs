using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iTCat.Account.PersonalCenter
{
    public partial class Pim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
        }


        public new void ProcessRequest(HttpContext context)
        {
            //context.Response.ContentType = "text/plain";
            HttpPostedFile postedFile = context.Request.Files[0];
            //postedFile.
            string savePath = "IMG/";
            //返回路径
            string path = context.Server.MapPath(savePath);

            System.Random Random = new System.Random();
            int Result = Random.Next(0, 9999999);
            string filename = ".jpg";
            postedFile.SaveAs(path + Result + filename);

            context.Response.Write(Result + filename);
            //postedFile.
        }

        public new bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
