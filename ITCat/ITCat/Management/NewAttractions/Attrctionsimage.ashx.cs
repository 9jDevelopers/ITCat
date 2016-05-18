using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace iTCat.Management.NewAttractions
{
    /// <summary>
    /// Attrctionsimage 的摘要说明
    /// </summary>
    public class Attrctionsimage : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            HttpPostedFile PostedFile = context.Request.Files[0];

            string savePath = "img/";

            string path = context.Server.MapPath(savePath);

            System.Random Random = new System.Random();
            int Result = Random.Next(0, 999999);
            string strRes = Result.ToString();

            string filename = ".jpg";


            PostedFile.SaveAs(path + strRes + filename);


            context.Response.Write(strRes + filename);
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