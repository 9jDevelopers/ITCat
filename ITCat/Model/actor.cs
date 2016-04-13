using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Model
{
    public class Actor
    {
        /// <summary>
        /// 用户ID
        /// </summary>
        public int UserID { get; set; }
        /// <summary>
        /// 头像
        /// </summary>
        public byte Head_Portrait { get; set; }
        /// <summary>
        /// 昵称
        /// </summary>
        public string Pet_Name { get; set; }
        /// <summary>
        /// 密码
        /// </summary>
        public string PassWord { get; set; }
        /// <summary>
        /// 手机号码
        /// </summary>
        public int Tel_Phone { get; set; }
        /// <summary>
        /// 姓名
        /// </summary>
        public int Name { get; set; }
        /// <summary>
        /// 身份证号码
        /// </summary>
        public string ID_Card { get; set; }
        /// <summary>
        /// 邮箱
        /// </summary>
        public string MailBox { get; set; }
        /// <summary>
        /// 性别
        /// </summary>
        public int Gender { get; set; }
        /// <summary>
        /// 生日
        /// </summary>
        public DateTime Birthday { get; set; }
        /// <summary>
        /// 常出发城市
        /// </summary>
        public string OftenStartOutCity { get; set; }
        /// <summary>
        /// 账户
        /// </summary>
        public int Account { get; set; }
        /// <summary>
        /// 订单集合
        /// </summary>
        List<Order> orders;
        /// <summary>
        /// 账单
        /// </summary>
        List<Journal> journals;
        /// <summary>
        /// 支付宝
        /// </summary>
        public int Alipay { get; set; }
        /// <summary>
        /// 余额
        /// </summary>
        public int Balance { get; set; }
        /// <summary>
        /// 银行卡
        /// </summary>
        public int BankCard { get; set; }
        /// <summary>
        /// 微信
        /// </summary>
        public int WeChat { get; set; }
        /// <summary>
        /// 支付密码
        /// </summary>
        public string Pay_Passwrod { get; set; }
    }
}