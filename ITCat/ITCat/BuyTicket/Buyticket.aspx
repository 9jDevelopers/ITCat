<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuyTicket1.aspx.cs" Inherits="iTCat.BuyTicket.BuyTicket" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0" />
    <title>购票</title>
	<meta charset="utf-8" />
    <!--begin引用css-->
    <link href="css/BuyTicket.css" rel="stylesheet" />
    <link href="../Public/css/themes/default/easyui.css" rel="stylesheet" />
    <link href="../Public/css/themes/icon.css" rel="stylesheet" />
    <link href="../Public/css/demo.css" rel="stylesheet" />
    <link href="../Public/css/themes/color.css" rel="stylesheet" />
    <!--end引用css-->
  
</head>
<body style="clear:both;">
    <div class="all" style="clear:both;">
        <div class="header_top" style="clear:both;">
            <ul class="index_top_nav" id="user_login_info">
                <li class="login"><a href="../Account/Login/Login.html" target="_blank" rel="nofollow" class="a_login">登录</a></li>|
                <li class="register"><a href="../Account/Register/Register.html" target="_blank" rel="nofollow" class="a_register">注册</a></li>
                <li class="p_center"><a href="../Account/PersonalCenter/Pim.aspx" target="_blank" rel="nofollow" class="P_center">个人中心</a></li>
                <li class="lg_microblog"><img src="LoginIcon/购票_08.png" a href="http://weibo.com/" /></li>
                <li class="lg_iphone"><img src="LoginIcon/购票_03.png" a href="https://www.baidu.com/" /></li>
                <li class="lg_Micro-letters"><img src="LoginIcon/购票_05.png" a href="/http://weixin.qq.com" /></li>
            </ul>
        </div>

        <div class="navigate" style="clear:both">
            <ul class="navigation">
                <li class="item">
                    <a href="../Index/index.aspx" target="_blank" rel="nofollow" class="a-tag">
                        <div class="name">首页</div>
                    </a>
                </li>
                <li class="item">
                    <a href="../Scenic/Scenic.aspx" target="_blank" rel="nofollow" class="a-tag">
                        <div class="name">景点浏览</div>
                    </a>
                </li>
                <li class="item">
                    <a href="" target="_blank" rel="nofollow" class="a-tag">
                        <div class="name">门票查询</div>
                    </a>
                </li>
                <li class="item">
                    <a href="" target="_blank" rel="nofollow" class="a-tag">
                        <div class="name">我要评价</div>
                    </a>
                </li>
                <li class="item">
                    <a href="" target="_blank" rel="nofollow" class="a-tag">
                        <div class="name">活动中心</div>
                    </a>
                </li>
                <li class="item">
                    <a href="" target="_blank" rel="nofollow" class="a-tag">
                        <div class="name">需求帮助</div>
                    </a>
                </li>
                <li class="item">
                    <a href="" target="_blank" rel="nofollow" class="a-tag">
                        <div class="name">我要购票</div>
                    </a>
                </li>
                <li class="item">
                    <a href="" target="_blank" rel="nofollow" class="a-tag">
                        <div class="name">我要退票</div>
                    </a>
                </li>
            </ul>
        </div>


        <div class="logo" style="clear:both;">
            <img src="LoginIcon/瓜皮_03.png" />
            <span class="guapi"> 瓜皮网</span>
            <span class="guapi">guapi.com</span>       
            <span class="gp_input"><input class="easyui-searchbox" data-options="prompt:'请输入景点或票',searcher:doSearch" style="width:300px"></input></span>
            <span class="TEL_Phone">客服电话</span>
            <span class="number">4008-823-823</span>
            <span><img src="LoginIcon/电话图标_03.png" /></span>

        </div >
            
        
            <div class="place">
                <div class="one_place">
                    <ul class="body_place">
                        <li class="head_place">相关目的地：</li>
                        <li class="p_item"><a href="#" class="easyui-menubutton" data-options="menu:'#mm1'">全部</a>
                            <div id="mm1" style="width: 150px;">
                                <div>九江</div>
                                <div>景德镇</div>
                                <div class="menu-sep"></div>
                                <div>婺源</div>
                                <div>上海</div>
                                <div>浙江</div>
                            </div>
                </li>
                        <li class="p_item">江西</li>
                        <li class="p_item">安徽</li>
                        <li class="p_item">四川</li>
                        <li class="p_item">湖南</li>
                    </ul>
                </div>
                <div class="two_place">
                    <ul class="body_place">
                     <li class="head_place">出发城市：</li>
                     <li class="p_item"><a href="#" class="easyui-menubutton" data-options="menu:'#mm2'">全部</a>
                         <div id="mm2" style="width: 150px;">
                             <div>九江</div>
                             <div>景德镇</div>
                             <div class="menu-sep"></div>
                             <div>婺源</div>
                             <div>上海</div>
                             <div>浙江</div>
                         </div>
                        <li class="p_item">九江</li>
                        <li class="p_item">上海</li>
                        <li class="p_item">南京</li>
                        <li class="p_item">湖南</li>
                    </ul>
                </div>
                <div class="three_place">
                    <ul class="body_place">
                        <li class="head_place">线路玩法：</li>
                          <li class="p_item"><a href="#" class="easyui-menubutton" data-options="menu:'#mm3'">全部</a>
                         <div id="mm3" style="width: 150px;">
                             <div>九江</div>
                             <div>景德镇</div>
                             <div class="menu-sep"></div>
                             <div>婺源</div>
                             <div>上海</div>
                             <div>浙江</div>
                         </div>
                        <li class="p_item">江西</li>
                        <li class="p_item">安徽</li>
                        <li class="p_item">四川</li>
                        <li class="p_item">湖南</li>
                    </ul>
                </div>
                <div class="four_place">
                    <ul class="body_place">
                        <li class="head_place">行程天数：</li>
                         <li class="p_item"><a href="#" class="easyui-menubutton" data-options="menu:'#mm4'">全部</a>
                         <div id="mm4" style="width: 150px;">
                             <div>1天</div>
                             <div>5天</div>
                             <div class="menu-sep"></div>
                             <div>6天</div>
                             <div>7天</div>
                             <div>一月</div>
                         </div>
                        <li class="p_item">1天</li>
                        <li class="p_item">2天</li>
                        <li class="p_item">3天</li>
                        <li class="p_item">4天</li>
                    </ul>
                </div>
                <div class="five_place">    
                    <ul class="body_place">
                        <li class="head_place">出游时间：</li>
                        <li class="p_item"><input href="" id="Button1" type="button" value="全部" style="background-color:darkorange" class="button" /></liclass="item">
                        <li class="p_item"><input class="easyui-datebox">——</li>
                        <li class="p_item"><input class="easyui-datebox"></li>
                        <li class="p_item">清明节</li>
                        <li class="p_item">端午节</li>
                    </ul>
                </div>
            </div>

            <div class="keyword-search">
                <div class="p_photo"><img src="LoginIcon/套餐查询.png" /></div>
                <div class="i_place">
                    <select class="easyui-combobox" name="state" style="width: 100px;">
                        <option value="AL">成人票</option>
                        <option value="AK">1张</option>
                        <option value="AZ">2张</option>
                    </select>
                </div>
                <div class="i_place">
                    <select class="easyui-combobox" name="state" style="width: 100px;">
                        <option value="AL">儿童票</option>
                        <option value="AK">1张</option>
                        <option value="AZ">2张</option>
                    </select>
                </div>
                <div class="i_place">
                    <a href="#" class="easyui-linkbutton c4" style="width:120px">预订套餐</a>
                </div>

                <div class="i_place">
                    <a href="#" class="easyui-linkbutton c8" style="width: 120px">立即购票</a>
                </div>
            </div>
            <div class="space">
            </div>
            <div class="keyword-search">
                <dl class="detail">
                    <dt>
                        <p class="title">
                            <a title="<婺源-三清山-景德镇-庐山4日游>九江往返，赠送景德镇陶瓷礼品，3早6正" onclick="" href="" target="_blank">
                                <span class="f_title"><婺源-三清山-景德镇-庐山4日游></span>九江往返，赠送景德镇陶瓷礼品，3早6正
                            </a>
                            <i class="mytip" grand="3"></i>
                        </p>
                        <p class="subtittle"><i class="gty-icon"><span class="c_green">九江出发</span></i>天天发班 赠送礼品 无购物店 江西特色茶饼 荷包红鲤鱼 3早6正</p>
                    </dt>
                    <dd class="port">
                        <span>住  宿：舒适</span>
                        <span>行程天数： 4天</span>
                    </dd>
                    <dd class="tqs">
                        <span>
                            团期：
                            <a href="" target="_blank"><em class="orange">清明节</em>, 04/01, 04/02, 04/03, 04/05, 04/06, 04/07, 04/08</a>
                        </span>
                        <a href="">更多</a>
                    </dd>
                    <dd class="overview">行程概览：九江 > 婺源   > 婺源 > 三清山 > 婺源 > 景德镇 > 九江  > 九江 > 庐山 > 九江散团</dd>
                </dl>

                <a class="img" onclick="" href="" target="_blank">
                    <img style="display:block" src=" LoginIcon/景点图片.png" data-src="" />
                </a>
                <p class="sat"><a class="comments" href="" target="_blank">点评数：68</a>满意度<i>98%</i></p>
                <div class="btn_like">
                    <a class="bg_select" style="margin-top:10px;">
                        <label name="label_general" class="label">
                            <input name="general" class="cc" onclick=" " type="checkbox" value="210057328" />
                            加入对比
                        </label>
                    </a>
                    <a class="bg_select" style="margin-top:10px;">
                        <label name="label_general" class="label1">
                            <input name="general" class="cc" onclick=" " type="checkbox" value="210057328" />
                            加入关注
                        </label>
                    </a>
                </div>
            </div>
              <div class="copy"><span>copyright@2015——2016ItCat</span></div>
            </div>
      <!--js引用Begin-->
        <script src="../Public/js/jquery.min.js"></script>
         <script src="../Public/js/jquery.easyui.min.js"></script>
        	<script>
		function doSearch(value){
			alert('You input: ' + value);
		}
	</script>
    <!--js引用End-->      
</body>
</html>

