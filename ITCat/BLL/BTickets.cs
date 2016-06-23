using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.DAL;
using System.Data;
using MSSQLDAL;

namespace BLL
{
    public class BTickets
    {
        public BuyTicketDal BuyTicketDal { get; set; }
        BuyTicketDal Ticket =new BuyTicketDal();


        public string  BuyTickets(string AttractionsID)
        {
            DataTable dt = Ticket.BuyTicket();
            string json = DataTableConvertJson.DataTableToJson("buyticket", dt);
            return json;
        }
        //返回景点标题
        public string GetAttractionsTitle(string AttractionsID)
        {
            string result = Ticket.GetAttractionsTitle(AttractionsID);
            return result;
        }
        //返回票的信息
        public string GetTicketPro(string AttractionsID)
        {
            string result = Ticket.GetTicketPro(AttractionsID);
            return result;
        }
    }
}
