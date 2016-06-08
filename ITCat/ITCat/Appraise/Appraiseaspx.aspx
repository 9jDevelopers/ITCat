<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Appraiseaspx.aspx.cs" Inherits="iTCat.Appraise.Appraiseaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; char    set=utf-8"/>
    <link href="../../Public/css/themes/default/easyui.css" rel="stylesheet" />
    <link href="../../Public/css/themes/icon.css" rel="stylesheet" /> 
    <link href="../../Public/css/demo.css" rel="stylesheet" /> 
    <link href="cs/Appraise.css" rel="stylesheet" />
    <script src="../../Public/js/jquery.min.js"></script>
    <script src="../../Public/js/jquery.easyui.min.js"></script> 
  
    

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="head">
            <div class="dt">
              <h1>动态点评</h1>
            </div>
            <div class="pl">
                风景区&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;与描述相符(打分匿名)            
            </div>
          
            <div  class="img"><img src="img/16fdd1448b3164f7.jpg_r_390x260x90_f9a01e23.jpg" / width="470" height="380"></div>
            <div class="pf">
                <img src="img/1.png"/>
                <img src="img/1.png"/>
                <img src="img/1.png"/>
                <img src="img/1.png"/>
                <img src="img/1.png"/>
            </div>
            <div class="pf2">
                <h1>5分</h1>
            </div>
            <div class="pf3">
                <input class="easyui-textbox" data-options="multiline:true" value="" style="width:420px;height:200px"/>
            </div>
            <div class="down">
                <div class="pp">
                  <h1>动态评分</h1>   
                </div>
                <div class ="pa">
                    服务态度:&nbsp;&nbsp;&nbsp;
                 <div class="paa">
                    <img src="img/1.png"/>
                    <img src="img/1.png"/>
                    <img src="img/1.png"/>
                    <img src="img/1.png"/>
                    <img src="img/1.png"/>  
                 </div>
                </div>
                <div class ="pa">
                    与描述相符:&nbsp;&nbsp;&nbsp;
                 <div class="paa">
                    <img src="img/1.png"/>
                    <img src="img/1.png"/>
                    <img src="img/1.png"/>
                    <img src="img/1.png"/>
                    <img src="img/1.png"/>
               </div>
              </div>
              <div class="box">
                    <button type="submit" class="box1">发表评论</button>
              </div>
           </div>
     </div>
    </form>
</body>
</html>
