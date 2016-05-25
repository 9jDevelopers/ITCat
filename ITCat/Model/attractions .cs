using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Attractions
    {   
        /// <summary>
        /// 景点ID
        /// </summary>
        public int AttractionsID { get; set; }

        /// <summary>
        /// 景点名称
        /// </summary>
        public String AttractionsName { get; set; }

        /// <summary>
        /// 景点标题
        /// </summary>
        public String AttractionsTitle { get; set; }

        /// <summary>
        /// 景点等级
        /// </summary>
        public String AttractionsLevel { get; set; }

        /// <summary>
        /// 景点地址
        /// </summary>
        public byte AttractionsAddress { get; set; }

        /// <summary>
        /// 景点简介
        /// </summary>
        public String AttractionsSynopsis { get; set; }

        /// <summary>
        /// 景点图片
        /// </summary>
        public byte AttractionImages { get; set; }

      
        /// <summary>
        /// 景点联系方式
        /// </summary>
        public String AttractionsContact { get; set; }
        /// <summary>
        /// 开放时间
        /// </summary>
         public String OpenTime { get; set; }

        /// <summary>
        /// 景点注释
        /// </summary>
        public String NoteAttractions { get; set; }
        /// <summary>
        /// 景点地图
        /// </summary>
        public String Point { get; set; }
    }
}
