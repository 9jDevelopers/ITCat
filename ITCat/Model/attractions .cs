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
        public int spotID { get; set; }

        /// <summary>
        /// 景点名称
        /// </summary>
        public String name { get; set; }

        /// <summary>
        /// 景点简介
        /// </summary>
        public String brief { get; set; }

        /// <summary>
        /// 所在省
        /// </summary>
        List<Pro> pros;

        /// <summary>
        /// 所在市
        /// </summary>
        List<City> citys;

        /// <summary>
        /// 门票价格
        /// </summary>
        public double Price { get; set; }

        /// <summary>
        /// 景点图片
        /// </summary>
        public byte picture { get; set; }

        /// <summary>
        /// 详细介绍
        /// </summary>
        public String Watch { get; set; }

        /// <summary>
        /// 免费政策
        /// </summary>
        public String Free { get; set; }

        /// <summary>
        /// 优惠政策
        /// </summary>
        public String Discount { get; set; }

        /// <summary>
        /// 附近景点
        /// </summary>
        public String scenery { get; set; }

        /// <summary>
        /// 附近酒店
        /// </summary>
        public String hotel { get; set; }

        /// <summary>
        /// 景点地图
        /// </summary>
        public int positionJ { get; set; }

        /// <summary>
        /// 景点等级
        /// </summary>
        public String level { get; set; }

        /// <summary>
        /// 景点标题
        /// </summary>
        public String title { get; set; }
        /// <summary>
        /// 景点联系方式
        /// </summary>
        public String contact { get; set; }
    }
}
