<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministratorLogin.aspx.cs" Inherits="iTCat.Management.administrator.Login.AdministratorLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员登录</title>
    <script src="../../NewAttractions/js/Submit.js"></script>
</head>
<body>
    <form id="form1">
      <div class="Main_title"><h1>管理员登录</h1>
        <div>
         <table>
            <tr>
                <td class ="The_title">*管理员用户名:</td> 
                <td  class="Textbox"><input class="easyui-validatebox textbox"
                     data-options="missingMessage:'请输入用户名' ,prompt:'验证完成.',invalidMessage:'请输入存在的用户名',required:true, validType:'length[5,10]'"
                     id="txtAttractionsID" runat="server"/></td>
             </tr>
            </table>
            </div>
          <div>
         <table>
            <tr>
                <td class ="The_title">*管理员密码:</td> 
                <td  class="Textbox"><input class="easyui-validatebox textbox"
                     data-options="missingMessage:'请输入密码' ,prompt:'验证完成.',invalidMessage:'请输入正确的密码',required:true, validType:'length[5,10]'"
                     id="Text1" runat="server"/></td>
            </tr>
            </table>
            </div>
      </div>
    </form>
</body>
</html>
