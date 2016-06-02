using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BLL;
using System.IO;

namespace iTCat.Handler
{
    /// <summary>
    /// ShowImg 的摘要说明
    /// </summary>
    public class ShowImg : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            BIndex bi = new BIndex();
            string AttractionsID= context.Request["AttractionsID"];
            string result = bi.GetImage(AttractionsID);
            string Path = context.Server.MapPath(result);
            FileStream fs = new FileStream(Path, FileMode.Open);
            byte[] byData = new byte[fs.Length];
            try
            {
                fs.Read(byData, 0, byData.Length);
            }
            catch(Exception ex)
            {
            }
            finally
            {
                fs.Close();
            }

            context.Response.BinaryWrite(byData);



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