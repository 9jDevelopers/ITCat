using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Ticket
    {   
        /// <summary>
        /// 门票ID
        /// </summary>
        public int TicketsID { get; set; }

        /// <summary>
        /// 门票名称
        /// </summary>
        public string TicketsName { get; set; }

        /// <summary>
        /// 门票类型
        /// </summary>
        public string TicketsType { get; set; }

        /// <summary>
        /// 景点ID
        /// </summary>
        public int SpotID { get; set; }

        /// <summary>
        /// 门票价格
        /// </summary>
        public decimal Price { get; set; }

        /// <summary>
        /// 门票期限
        /// </summary>
        public DateTime time { get; set; }

        /// <summary>
        /// 门票说明
        /// </summary>
        public string explain { get; set; }


        /// <summary>
        /// 门票可以提前多少天预订
        /// </summary>
        public DateTime OrderDateD { get; set; }
    }
}
