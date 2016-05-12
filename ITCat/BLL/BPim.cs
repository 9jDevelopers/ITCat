using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.DAL;

namespace BLL
{
    public class BPim
    {
        public PimDal PimDal { get; set; }
        PimDal a = new PimDal();
        public bool IMG(byte[] Head_Portrait, Int32 UserID)
        {
            return a.IMG(Head_Portrait, UserID);
        }
        public bool TM( string Tel, string Email, string Pname, string Name, string Gender, DateTime Birthday,  string City,Int32 UserID)
        {

            return a.TM(Tel, Email, Pname, Name, Gender, Birthday, City,UserID);
        }


    }
}
