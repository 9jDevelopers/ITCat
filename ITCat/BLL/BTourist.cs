using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MSSQLDAL;
using Model;

namespace BLL
{
    public class BTourist
    {
        public TouristDal TouristDal  { get; set; }
        TouristDal td = new TouristDal();

        public bool Login(string LoginName, string Password)
        {
            return td.Login(LoginName, Password);
        }

        public bool ToString(string attractionsID,
            string attractions_name,
            string attractions_title, 
            string level_RadioButton,
            string address, 
            string openTime, 
            string introduce,
            string attractionsTraffic,
            string contact, 
            string attractionsAnnotation, 
            string administratorName)
        {
            return td.ToString
                (attractionsID, attractions_name,
                attractions_title, level_RadioButton,
                address, openTime, introduce, 
                attractionsTraffic,contact,
                attractionsAnnotation, administratorName);
        }

        public bool TM(string Tel, string Email, string Pname, string Name, string Gender, string Birthday, string Pone, string City)
        {
            return td.TM(Tel, Email, Pname, Name, Gender, Birthday, Pone, City);
        }
        public bool browse(string ScenicspotID,
            string Scenicspot_Name,
            string ScenicspotIntroduction,
            string ScenicspotAddress,
            string TicketPrice,
            string ScenicspotPicture,
            string FreePolicy,
            string FavouredPolicy,
            string ScenicspotMap,
            string ScenicspotGrade,
            string ScenicspotTitle,
            string ScenicSpotContactPhone)
        {
            return td.browse(Scenicspot_Name,
            ScenicspotIntroduction,ScenicspotAddress,
            TicketPrice,ScenicspotPicture,
            FreePolicy,FavouredPolicy,
            ScenicspotMap,ScenicspotGrade,
            ScenicspotTitle,ScenicSpotContactPhone
                );
        }

        public bool ToString(
            string ticketsID, 
            string ticket_type,
            string tickets_name,
            string ticketsPrices,
            string tickets_illustrate,
            string orderDateD, 
            string spotID,
            string ticket_time)
        {

            return td.ToString(
                ticketsID, ticket_type, tickets_name,
                ticketsPrices, tickets_illustrate,
                orderDateD, spotID, ticket_time);
        }
    }
}
