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
                     <span class="number_vm"></span>
                     <input id="InputInfo" type="hidden" value=""/>
                     <a class="next_vm">我已阅读预定须知，下一步</a>
                 </div>
             </div>
            <!--order to next end-->
       
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
