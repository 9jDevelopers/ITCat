using MSSQLDAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAL
{
    public class NewTicketClassDAL
    {
        //新建票种DAL代码
        public bool Ticket
            (int ticketsID,
            string ticket_type,
            string tickets_name,
            string ticketsPrices,
            string tickets_illustrate,
            string orderDateD, 
            string spotID,
            string ticket_time)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetStoredProcCommond("sp_NewTicket");
            db.AddInParameter(cmd, "@TicketsID", DbType.Int32, ticketsID);
            db.AddInParameter(cmd, "@TicketsType", DbType.String, ticket_type);
            db.AddInParameter(cmd, "@TicketsName", DbType.String, tickets_name);
            db.AddInParameter(cmd, "@Price", DbType.String, ticketsPrices);
            db.AddInParameter(cmd, "@explain", DbType.String, tickets_illustrate);
            db.AddInParameter(cmd, "@OrderDateD", DbType.String, orderDateD);
            db.AddInParameter(cmd, "@AttractionsID", DbType.String, spotID);
            db.AddInParameter(cmd, "@time", DbType.String, ticket_time);
            db.AddReturnParameter(cmd, "@retValue", DbType.Int32);

            db.ExecuteNonQuery(cmd);


            string result = cmd.Parameters["@retValue"].Value.ToString();

            if (result == "1")
                //新建票种成功
                return true;
            else
                return false;
        }
    }
}
