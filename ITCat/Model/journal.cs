using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Model
{
    public class Journal
    {
        /// <summary>
        /// 金额
        /// </summary>
        public int Money { get; set; }
        /// <summary>
        /// 时间      
        /// </summary>
        public DateTime Time { get; set; }
        /// <summary>
        /// 订单号
        /// </summary>
        public int OrderNumber { get; set; }
    }
}