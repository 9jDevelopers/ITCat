using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private int c;
        //private object pictureBox1;

        public SqlConnection conn { get; private set; }
        public object pictureBox1 { get; private set; }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void Image(string sql)
        {        
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            byte[] b = (byte[])cmd.ExecuteScalar();
            if (c > 0)
            {
                MemoryStream stream = new MemoryStream(b, true);
                stream.Write(b, 0, b.Length);              
                pictureBox1 = new Bitmap(stream);
                stream.Close();
            }
            conn.Close();
        }

    }
}