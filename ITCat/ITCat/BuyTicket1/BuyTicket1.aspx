<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuyTicket1.aspx.cs" Inherits="iTCat.BuyTicket1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=L6XIsG1aAA4RE4doBEGEIt2s230iN1b9"></script>
    <script async src="http://c.cnzz.com/core.php"></script>
    <title>购票</title>
    <!--引用css begin-->
    <link href="css/BuyTicket1.css" rel="stylesheet" />
    <link href="../Public/css/demo.css" rel="stylesheet" />
    <link href="../Public/css/themes/icon.css" rel="stylesheet" />
    <link href="../Public/css/themes/default/easyui.css" rel="stylesheet" />
    <!--引用css end-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
        <div id="TicketNews">
            <!--order box start-->
            <div class="order_box" id="order_box" >
             <h1 class="order_title">
                 后台标题
                 <span>订单编号</span>
             </h1>
                
            </div> 
            <div class="order_form">
                <div class="StartCity"><label>出发城市：</label><label id="allmap"></label></div>
            </div>
            <div class="StartTime"><label>出发日期:</label><input id="dd" /></div>
            <div class="BackTime"><label>归来日期:</label><label></label></div>

            <!--order box end-->
        </div>
       
        <div><input type=button value="E-Mail Someone!" onClick="mailsome1()"></div>

    </div>
    </form>
    <!--begin JS引用-->
    <script src="js/BuyTicket.js"></script>
    <script src="../Public/js/jquery.min.js"></script>
    <script src="../Public/js/jquery.easyui.min.js"></script>
    <script>
		$(function(){
		$('#dd').datebox().datebox('calendar').calendar({
				validator: function(date){
					var now = new Date();
					var d1 = new Date(now.getFullYear(), now.getMonth(), now.getDate());
					var d2 = new Date(now.getFullYear(), now.getMonth(), now.getDate()+10);
					return d1<=date && date<=d2;
				}
			});
		});
	</script>
    <!--发送邮件-->
<script type="text/javascript">
<!-- Begin
function mailsome1(){
who=prompt("Enter recipient's email address: ","antispammer@earthling.net");
what=prompt("Enter the subject: ","none");
if (confirm("Are you sure you want to mail "+who+" with the subject of "+what+"?")==true){
parent.location.href='mailto:'+who+'?subject='+what+'';
  }
}
// End -->
</script>
 
    <!--发送邮件end-->
    <!--begin JS引用-->

</body>
</html>
