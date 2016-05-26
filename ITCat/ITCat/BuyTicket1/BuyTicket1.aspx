<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuyTicket1.aspx.cs" Inherits="iTCat.BuyTicket1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=L6XIsG1aAA4RE4doBEGEIt2s230iN1b9"></script>
    <script async src="http://c.cnzz.com/core.php"></script>
    <title>购票</title>
    <!--引用css begin-->
    <link href="../Public/icomoon/fontIconStyle.css" rel="stylesheet" />
    <link href="css/BuyTicket1.css" rel="stylesheet" />
    <link href="../Public/css/demo.css" rel="stylesheet" />
    <link href="../Public/css/themes/icon.css" rel="stylesheet" />
    <link href="../Public/css/themes/default/easyui.css" rel="stylesheet" />
    <!--引用css end-->
</head>
<body>
    
  <div>
       
        <div id="TicketNews">
            <!--左边框-->
            <div class="left">
            <!--order box start-->
            <!-- 标题 begin-->
            <div class="order_box" id="order_box" >
               <!--将后台数据传回UI层 -->
             <h1 class="order_title">
                 后台标题
                 <span>订单编号</span>
             </h1> 
          
    
     <!--票务信息选择框 -->
        <div class="TicketInfo">
            <!--出发城市 -->
            <div class="order_form">
                <!-- 使用百度地图API进行地位 -->
                <div class="StartCity"><label>出发城市</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label id="allmap"></label></div>
            </div>
            

            <!--出发日期 -->
            <div class="StartTime"><label>出发日期:</label>&nbsp;&nbsp;&nbsp;&nbsp;<input id="dd" />

            </div>
            <!--归来日期 -->
            <div class="BackTime"><label>归来日期:</label>&nbsp;&nbsp;&nbsp;&nbsp;<label class="Back_Time"></label>
            </div>
            <!-- 出游人数 -->
            <div class="GoOutPeople">
               <label>出游人数:</label>
                <!--按钮增删票数-->
               <div id="AdultTicketNum">              
                     <input class="easyui-numberspinner" style="width:50%">                
                   <label>成人票</label>
                </div>
                
                <div id="ChildTicketNum">
                     <input class="easyui-numberspinner" style="width:50%"> 
                   <label>儿童票</label>
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;
            </div>
          </div><!--信息选择框结束-->
       <!--出游人确认框-->
        <div class="order_more">
            <h3 class="SurePeople">出游人确认</h3>
         <ul class="question_list">
             <li class="OldPeople">
                 <div class="OldPeopleQus">出游人中是否有70（含）至80（不含）周岁的老人</div>
                 <div class="OldPeopleAns"></div>
             </li>
             <li class="Outlander">
                 <div class="OutlanderQus">出游人中是否有外籍友人</div>
                 <div class="OutlanderAns"></div>
             </li>
         </ul>
            <ul class="tip_list">
                <li>本产品不支持孕妇
                或者80周岁(含)以上的老人出游：18周岁以下的未成年人必须有成年人陪同出游，敬请谅解！</li>
            </ul>
        </div><!--出游人确认框结束-->
        

      </div>
            <!--order box end-->


            <!--contact box start-->
            <div class="ContactInfo" id="ContactInfoBox">
                <!--联系人标题-->
                <h2 class="Contact_Info">
                    <span class="icon-user"></span>
                    <span class="text-contect">联系人信息</span>
                </h2>
                <!--联系人验证框-->
                <div class="C_form">
                    <!-- 信息输入框-->
                    <div class="InputInfo">
                    <!--姓名-->
                    <div class="Info_Name">
                        <label class="LabelName">姓名：</label>
                        <input class="easyui-validatebox textbox" data-options="prompt:'请输入姓名.',required:true,validType:'length[2,10]'">
                    </div>
                    <!--手机号-->
                    <div class="Info_TelPhone">
                        <label class="LabelTel">手机号：</label>
                        <input class="easyui-validatebox textbox" data-options="prompt:'请输入你的手机号.',required:true,validType:'length[11]'">
                    </div>
                    <!--电子邮件-->
                    <div class="Info_Email">
                          <label class="LabelEmail">电子邮箱</label>
                        <input class="easyui-validatebox textbox" data-options="prompt:'输入你的邮箱地址.',required:true,validType:'email'">
                    </div>
                    <div class="Info_Hint">
                       <p>您的邮箱将收到加盖公章的合同,您也可以在个人中心查看和下载您的合同。</p>
                    </div>
                 </div>
                </div>

            </div>
            <!--contact box end-->

            <!--order to next start-->
             <div class ="order_to_next">
                 <a class="back" href="" target="_self">返回上一步</a>
                 <div class="order_sum">
                     <label class="vm">订单金额</label>
                     <span  class="sign_vm">￥</span>
                     <span class="number_vm">value</span>
                     <input id="InputInfo" type="hidden" value=""/>
                     <a href="" class ="next_vm">我已阅读预定须知，下一步</a>
                 </div>
             </div>
            <!--order to next end-->
       

            <!--notice box start-->
              <div class="NoticeInfo" id="NoticeInfoBox">
                <!--联系人标题-->
                <h2 class="Notice_Info">
                    <span class="icon-info"></span>
                    <span class="text-notice">预定须知</span>
                </h2>
                  <div class="panel_body">
                      <dl>
                          <dt>*预定须知</dt>
                          <dd>1、正常阴雨天气不影响正常出游，如遇不可抗逆因素导致不能出游我司会提前与您联系；</dd>
                          <dd>2、如您预订的出游日期最终不成行，我司会提前与您沟通解决方案，届时您可以选择改期出游、更改出游产品；</dd>
                          <dd>3、病患者、孕妇及行动不便者预订提示：为了确保旅游顺利出行，防止旅途中发生人身意外伤害事故，请旅游者在出行前做一次必要的身体检查 。</dd>
                          <dt>*出游费用包含</dt>
                          <dd>1、交通：当地旅游巴士</dd>
                          <dd>2、小交通：景区内用车(庐山景区交通)。</dd>
                          <dd>3、住宿：行程所列酒店。</dd>
                          <dd>4、用餐：行程中团队标准用餐，赠送酒店自助早餐（中式餐或自助餐或特色餐，含飞机上用餐，自由活动期间用餐请自理；如因自身原因放弃用餐，则餐费不退）。</dd>
                          <dd>5、门票：行程中所含的景点首道大门票，具体请参考行程描述。</dd>
                          <dd>6、导服：当地中文导游，持证导游。</dd>
                          <dd>7、儿童价标准：身高0.8~1.2米（含），不占床，自行购买门票和庐山景交，不含餐，仅含山下车位费和导游。</dd>
                          <dt>*出游费用不包含</dt>
                          <dd>1、小交通：景区内用车（三叠泉缆车80元/人往返）。</dd>
                          <dd>2、单房差：单房差（单人出游务必补交单房差）。</dd>
                          <dd>3、补充：酒店内洗衣、理发、电话、传真、收费电视、饮品、烟酒等个人消费</dd>
                          <dd>4、补充：当地参加的自费以及以上"费用包含"中不包含的其它项目</dd>
                          <dd>5、旅游意外险：旅游人身意外保险</dd>
                      </dl>
                  </div>
             </div>
            <!--notice box end-->
            </div>
            
            <!--summary box start-->
            <div class="summary" style="left:0px; top:0px; position:relative;">
                <div class="Top"></div>
                <div class="inner">
                    <div id="cost_summary">
                        <h2>结算信息</h2>
                        <dl class="cost">
                            <dt>出游团费</dt>
                            <dd class="mt5 clearfix">
                                <span class ="number">x成人</span>
                                x
                                <span class="price">￥price</span>
                                <span class="amount">￥amount</span>
                            </dd>
                            <dt class="mt20">保险费用</dt>
                            <dd class="insurance">
                                <p title="后台数据标题">后台数据标题</p>
                                <span class="number">x人</span>
                                <span class="price">￥price</span>
                                <span class="amount">￥amount</span>
                            </dd>
                            <dd class="insurance_last">
                                <p title="后台数据标题">后台数据标题</p>
                                <span class="number">x人</span>
                                <span class="price">￥price</span>
                                <span class="amount">￥amount</span>
                            </dd>
                            </dl>

                            <div class="action">
                                <label>订单金额：</label>
                                <sup class="sign"></sup>
                                <span class="number">￥price</span>
                                <i class="icon-question" style="display:none;"></i>
                            </div>
                            
                             <div>
                                 <a href="" class="btn_next">下一步</a>
                             </div>
                        
                    </div>
                </div>
            </div>
            <!--summary box end-->

          
       </div>
      <!--copyright box-->
            <div id="footer">
                Copyright © 2016 ITCat旅游网 
            </div>
        <!--发送邮件测试 -->
      <div><input type=button value="E-Mail Someone!" onClick="mailsome1()">
    </div>
     
  </div>
    
    <!--begin JS引用-->
    <script src="js/BuyTicket.js"></script>
    <script src="../Public/js/jquery.min.js"></script>
    <script src="../Public/js/jquery.easyui.min.js"></script>
    <script type="text/javascript">
    $(function () {
    $('#dd').datebox().datebox('calendar').calendar({
        validator: function (date) {
            var now = new Date();
            var d1 = new Date(now.getFullYear(), now.getMonth(), now.getDate());
            var d2 = new Date(now.getFullYear(), now.getMonth(), now.getDate() + 10);
            return d1 <= date && date <= d2;
        }
    });
});
   </script>
</body>
</html>
