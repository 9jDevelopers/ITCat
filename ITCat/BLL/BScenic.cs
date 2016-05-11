using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MSSQLDAL;
using Model.DAL;

namespace BLL
{
    public class BScenic
    {
        public ScenicDal ScenicDal { get; set; }
        ScenicDal td = new ScenicDal();

        public string browse(string scenicspotID, string scenicspot_Name, string scenicspotIntroduction, string scenicspotAddress, string ticketPrice, string scenicspotPicture, string freePolicy, string favouredPolicy, string scenicspotMap, string scenicspotGrade, string scenicspotTitle, string scenicSpotContactPhone)
        {
            return td.browse(scenicspotID,scenicspot_Name,scenicspotIntroduction,scenicspotAddress,ticketPrice, scenicspotPicture,freePolicy,favouredPolicy,scenicspotMap,scenicspotGrade,scenicspotTitle,scenicSpotContactPhone);
        }
    }
}
