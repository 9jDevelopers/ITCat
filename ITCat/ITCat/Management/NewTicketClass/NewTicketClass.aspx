<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewTicketClass.aspx.cs" Inherits="NewTicketClass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>新建门票</title>
    <link href="css/ticket.css" rel="stylesheet" />
    <link href="../../Public/css/themes/default/easyui.css" rel="stylesheet" />
    <link href="../../Public/css/demo.css" rel="stylesheet" />
    <link href="../../Public/css/themes/icon.css" rel="stylesheet" />
    <script src="../../Public/js/jquery.min.js"></script>
    <script src="../../Public/js/jquery.easyui.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 70px;
        }
        .auto-style2 {
            height: 30px;
            width: 385px;
        }
    </style>
</head>
<body>
    <form id="ff" method="post" runat="server">

        <div class="center">
            <table>
            <tr>
                <td>
                    <h1>新建门票</h1>
                </td>
            </tr>
           </table>
        </div>
        <div>
           <table>
            <tr>
                <td>门票编号</td>
                <td>
                   <input class="easyui-validatebox textbox"
                     data-options="missingMessage:'请输入门票编号' ,prompt:'验证完成.',invalidMessage:'请输入5个以上数字',required:true, validType:'length[5,10]'"
                     id="ticketsID" runat="server"/>
                </td>
            </tr>
          </table>
        </div>
        <div class="auto-style2">
            <table>
            <tr>
                <td class="auto-style1">门票类型</td>
                <td>
                     <select id="cc" style="width:150px"></select>
                   <div id="sp">
                    <div style="color:#99BBE8;background:#fafafa;padding:5px;">以下是选择票的类型</div>
                    <div style="padding:10px" id="Ticket_type">
                     <input type="radio" name="lang" value="01"/><span onclick="">成人票</span><br/>
                     <input type="radio" name="lang" value="02"/><span onclick="">儿童票</span><br/>
                     <input type="radio" name="lang" value="03"/><span onclick="">学生票</span>                     
                     </div>        
                    </div>                            
                </td>
              </tr>
             </table>
        </div>
        <div>
            <table>
            <tr>
                <td>门票名称</td>
                <td>
                    <input class="easyui-validatebox textbox"
                    data-options=" missingMessage:'请输入门票名称' ,prompt:'验证完成.',invalidMessage:'请输入5个以上中文字',required:true,validType:'ChineseLength[5]' "
                        id="tickets_name"  />
                </td>
            </tr>
           </table>
        </div>
        <div>
            <table>
            <tr>
                <td>门票价格</td>
                <td>
                   <input class="easyui-validatebox textbox"
                     data-options="missingMessage:'请输入门票价格' ,prompt:'验证完成.',invalidMessage:'请输入正确的价格',required:true, validType:'length[3,10]'"
                     id="ticketsPrices" runat="server"/>
                </td>
            </tr>
           </table>
        </div>
        <div>
            <table>
            <tr>
                <td>门票说明</td>
                <td>
                    <input class="easyui-validatebox textbox"
                     data-options=" missingMessage:'请输入门票说明' ,prompt:'验证完成.',invalidMessage:'请输入8个以上中文字',required:true,validType:'ChineseLength[8]'"
                        id="Tickets_illustrate" runat="server"/>
                </td>
            </tr>
           </table>
        </div>
       
        <div>
            <table>
            <tr>
                <td>景点ID</td>
                <td>
                    <input class="easyui-textbox" data-options="prompt:'请填写门票对应的景点ID',validType:'Lenght[20,40]'"
                    id="SpotID_text" />
                </td>
            </tr>
           </table>
        </div>
        <div>
            <table>
            <tr>
                <td>门票期限</td>
                <td>
                    <input class="easyui-textbox" data-options="prompt:'请填写该门票的使用期限',validType:'Lenght[20,40]'"
                    id="Ticket_time" />
                </td>
            </tr>
           </table>
        </div>
        <div>
            <table>
            <tr>
                <td>提前订票的时间</td>
                <td>
                    <input class="easyui-validatebox textbox"
                     data-options=" missingMessage:'请输入该门票可以提前预定的时间' , prompt:'验证完成.',required:true,validType:'Length[10,20]'"
                        id="OrderDateD" />
                </td>             
            </tr>
           </table>
        </div>
        <div>
            <table>
            <tr>
                <td>
                     <a href="javascript:NewTicketClass" class="easyui-linkbutton" id="submitForm" onclick="submitForm()">提交</a>
                </td>              
            </tr>
           </table>
        </div>
    </form>
    <script src="js/JavaScript.js"></script>   
    <script>
        function submitForm() {
            $('#ff').form('submit');
            $("#submitForm").click(
             function () {
                 alert("1");
                 $.post(
                     "../../Handler/NewTicketClassHandler.ashx",
                {
                    TicketsID: $("#ticketsID").val(),
                   
                    Ticket_type: $('#cc').combo('getText'),
                    Tickets_name: $("#tickets_name").val(),
                    TicketsPrices: $("#ticketsPrices").val(),
                    Tickets_illustrate: $("#Tickets_illustrate").val(),
                    OrderDateD: $("#OrderDateD").val(),
                    SpotID: $("#SpotID_text").val(),
                    Ticket_time: $("#Ticket_time").val()
                },
                 function (data) {
                     if (data == "1") {
                         alert("提交成功");
                     }
                     else {
                         alert("提交失败");
                     }
                 }
                );
             }
                     );
        }
    </script>
</body>
</html>
