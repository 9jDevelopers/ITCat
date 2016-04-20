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

        public bool ToString(string AttractionsID, string Attractions_name, string Attractions_title,
                    string Level_RadioButton, string Address, string OpenTime, string Introduce,
                    string Contact, string NoteAttractions
            )
        {
            return td.ToString(
             AttractionsID, Attractions_name, Attractions_title,
                    Level_RadioButton, Address, OpenTime, Introduce,
                    Contact, NoteAttractions);
        }

        public bool TM(
            string Tel,
            string Email,
            string Pname,
            string Name,
            string Gender, 
            string Birthday,
            string Pone,
            string City)
        {
            return td.TM(Tel, Email, Pname, Name, Gender, Birthday, Pone, City);
        }

        public bool ToString(
            string ticketsID,
            string ticket_type,
            string tickets_name,
            string ticketsPrices, 
            string tickets_illustrate,
            string OrderDateD,
            string SpotID,
            string Ticket_time
            )
        {
            return td.ToString( 
                ticketsID, ticket_type,  tickets_name, 
                ticketsPrices,  tickets_illustrate,
                OrderDateD , SpotID, Ticket_time);
        }
    }
}
