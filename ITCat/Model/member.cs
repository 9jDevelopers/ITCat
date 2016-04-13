using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    //会员信息表
    public class Member
    {
        //用户ID（判断是否为会员）
        public string  userID { get; set; }
        //成长值
        public int Growth   { get; set; }
        //等级
        public int grade { get; set; }
        //特权
        public string  privilege { get; set; }
        //积分系统
        public int integral { get; set; }
    }
}