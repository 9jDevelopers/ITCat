﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MSSQLDAL;
using System.Data;
using System.Data.Common;

namespace Model
{
    public class TouristDal
    {
        public bool Login(string LoginName, string Password)
        {
            DbHelper db = new DbHelper();

            //数据库执行代码 待修改
            DbCommand cmd = db.GetStoredProcCommond("sp_Login");
            db.AddInParameter(cmd, "@LoginName", DbType.String, LoginName);
            db.AddInParameter(cmd, "@Password", DbType.String, Password);
            db.AddReturnParameter(cmd, "@retValue", DbType.Int32);

            db.ExecuteNonQuery(cmd);


            string result = cmd.Parameters["@retValue"].Value.ToString();

            if (result == "1")
                //登陆成功
                return true;
            else
                return false;
        }

        public bool ToString(string attractionsID, string attractions_name, string attractions_title, string level_RadioButton, string address, string openTime, string introduce, string attractionsTraffic, string contact, string attractionsAnnotation, string administratorName)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetStoredProcCommond("sp_Login");
            db.AddInParameter(cmd, "@spotID", DbType.String, attractionsID);
            db.AddInParameter(cmd, "@name", DbType.String, attractions_name);
            db.AddInParameter(cmd, "@title", DbType.String, attractions_title);
            db.AddInParameter(cmd, "@level", DbType.String, level_RadioButton);
            db.AddInParameter(cmd, "@address", DbType.String, address);
            db.AddInParameter(cmd, "@openTime", DbType.String, openTime);
            db.AddInParameter(cmd, "@introduce", DbType.String, introduce);
            db.AddInParameter(cmd, "@contact", DbType.String, contact);
            db.AddInParameter(cmd, "@attractionsAnnotation", DbType.String, attractionsAnnotation);
            db.AddInParameter(cmd, "@attractionsTraffic", DbType.String, attractionsTraffic);
            db.AddReturnParameter(cmd, "@retValue", DbType.Int32);

            db.ExecuteNonQuery(cmd);


            string result = cmd.Parameters["@retValue"].Value.ToString();

            if (result == "1")
                //新建景点成功
                return true;
            else
                return false;
        }

        public bool ToString(string ticketsID, string ticket_type, string tickets_name, string ticketsPrices, string tickets_illustrate, string orderDateD, string spotID, string ticket_time)
        {
            throw new NotImplementedException();
        }

        public bool ToString(string ticketsID, string ticket_type, string tickets_name, string ticketsPrices, string tickets_illustrate, string orderDateD, string spotID)
        {
            throw new NotImplementedException();
        }

        public bool ToString(string ticketsID, string ticket_type, string tickets_name, string ticketsPrices, string tickets_illustrate, string OrderDateD)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetStoredProcCommond("sp_Login");
            db.AddInParameter(cmd, "@TicketsID", DbType.String, ticketsID);
            db.AddInParameter(cmd, "@TicketsType", DbType.String, ticket_type);
            db.AddInParameter(cmd, "@TicketsName", DbType.String, tickets_name);
            db.AddInParameter(cmd, "@Price", DbType.String, ticketsPrices);
            db.AddInParameter(cmd, "@explain", DbType.String, tickets_illustrate);
            db.AddInParameter(cmd, "@OrderDateD", DbType.String, OrderDateD);
            db.AddReturnParameter(cmd, "@retValue", DbType.Int32);

            db.ExecuteNonQuery(cmd);


            string result = cmd.Parameters["@retValue"].Value.ToString();

            if (result == "1")
                //新建票种成功
                return true;
            else
                return false;
        }

        public bool TM(string Tel, string Email, string Pname, string Name, string Gender, string Birthday, string Pone, string City)
        {
            DbHelper db = new DbHelper();

            //数据库执行代码 待修改
            //DbCommand cmd = db.GetStoredProcCommond("sp_Login");
            //db.AddInParameter(cmd, "@TMTel", DbType.String, TMTel);
            //db.AddInParameter(cmd, "@Password", DbType.String, Password);
            //db.AddReturnParameter(cmd, "@retValue", DbType.Int32);

            //db.ExecuteNonQuery(cmd);


            //string result = cmd.Parameters["@retValue"].Value.ToString();

            //if (result == "1")
            //    //登陆成功
            //    return true;
            //else
            return false;
        }

    }
}
