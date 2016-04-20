﻿using System;
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
            string NoteAttractions
            )
        {
            return td.ToString
                (attractionsID, attractions_name,
                attractions_title, level_RadioButton,
                address, openTime, introduce, 
                attractionsTraffic,contact,
                NoteAttractions);
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
