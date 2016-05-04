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
        
        public bool TM(string Tel, string Email, string Pname, string Name, string Gender, DateTime Birthday, string  Pone, string City, byte[] Head_Portrait,string IDCard)
        {
            return a.TM(Tel, Email, Pname, Name, Gender, Birthday, Pone, City, Head_Portrait, IDCard);
        }


    }
}
