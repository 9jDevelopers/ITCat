using Model.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace BLL
{
    public class BAttractionsImg
    {
        public AttractionsImgDAL AttractionsImgDAL { get; set; }
        AttractionsImgDAL td = new AttractionsImgDAL();
        public bool Img(string AttractionsID,  string img_src  )
        {
            return td.Img(AttractionsID,  img_src);
        }
    }

   
}
