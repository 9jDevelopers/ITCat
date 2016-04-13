using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Model
{
    public class Rated
    {
        /// <summary>
        /// 景点ID
        /// </summary>
        public int spotID { get; set; }
        /// <summary>
        /// 用户ID
        /// </summary>
        public int userID { get; set; }

        /// <summary>
        /// 评分
        /// </summary>
        public int grade { get; set; }

        /// <summary>
        /// 评分内容
        /// </summary>
        public string content{ get; set; }

        /// <summary>
        ///   评论日期
        /// </summary>
        public DateTime datetime { get; set; } 
        
    }
}