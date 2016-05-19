using Model;
using Model.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BNewAttractions
    {
        public NewAttractionsDAL NewAttractionsDAL { get; set; }
        NewAttractionsDAL td = new NewAttractionsDAL();
        public bool ToString(string AttractionsID, string Attractions_name, string Attractions_title,
                    string Level_RadioButton, string Address, string OpenTime, string Introduce,
                    string Contact, string NoteAttractions,string img1, string img2, string img3, string img4,string Point
            )
        {
            return td.ToString(
             AttractionsID, Attractions_name, Attractions_title,
                    Level_RadioButton, Address, OpenTime, Introduce,
                    Contact, NoteAttractions, img1, img2, img3, img4,Point);
        }
     
    }
    }

