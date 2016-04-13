<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewTicketClass.aspx.cs" Inherits="NewTicketClass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>新建门票</title>
    <link href="css/ticket.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="center">
            <tr>
                <td>
                    <h1>新建门票</h1>
                </td>
            </tr>
        </div>
        <div>
            <tr>
                <td>门票编号</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
            </tr>
        </div>
        <div>
            <tr>
                <td>门票类型</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="3" Style="margin-left: 349px" Width="612px">
                        <asp:ListItem>成人票</asp:ListItem>
                        <asp:ListItem>儿童票</asp:ListItem>
                        <asp:ListItem>学生票</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </div>
        <div>
            <tr>
                <td>门票名称</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
        </div>
        <div>
            <tr>
                <td>门票价格</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
        </div>
        <div>
            <tr>
                <td>门票说明</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="68px" Width="223px"></asp:TextBox>
                </td>
            </tr>
        </div>
        <div>
            <tr>
                <td>门票时间段</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
        </div>
        <div>
            <tr>
                <td>门票上限数</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
        </div>
        <div>
            <tr>
                <td>注意事项</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Height="43px" Width="214px"></asp:TextBox>
                </td>
            </tr>
        </div>
        <div>
            <tr>
                <td>管理员</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Style="margin-left: 0px" Width="114px"></asp:TextBox>
                </td>
                <td>联系方式</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
            </tr>
        </div>
        <div>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="提交" />
                <td>
            </tr>
        </div>
    </form>
</body>
</html>
