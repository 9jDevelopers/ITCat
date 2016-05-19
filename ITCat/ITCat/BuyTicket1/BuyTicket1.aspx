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
             </h1>
                <span>订单编号</span>
            </div>
            <div class="order_form">
                <div class="StartCity"><label>出发城市：</label><label id="allmap"></label></div>
            </div>
            <!--order box end-->
        </div>
       
    </div>
    </form>
    <!--begin JS引用-->
    <script src="js/BuyTicket.js"></script>
    <!--begin JS引用-->
</body>
</html>
