<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministratorLogin.aspx.cs" Inherits="iTCat.Management.administrator.Login.AdministratorLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员登录</title>
      <link href="../../../Public/css/themes/default/easyui.css" rel="stylesheet" />
    <link href="../../../Public/css/themes/icon.css" rel="stylesheet" />
    <link href="../../../Public/css/demo.css" rel="stylesheet" />
    <link href="../../NewAttractions/css/NewAttractions.css" rel="stylesheet" />
    <script src="../../../Public/js/jquery.min.js"></script>
    <script src="../../../Public/js/jquery.easyui.min.js"></script>
    <script src="../../../NewAttractions/js/jquery-2.1.1.min.js"></script>
    <script src="../../NewAttractions/js/validation.js"></script>
</head>
<body>
    <form id="form1">
      <div class="Main_title"><h1>管理员登录</h1>
        <div>
         <table>
            <tr>
                <td class ="The_title">*管理员用户名:</td> 
                <td  class="Textbox"><input class="easyui-validatebox textbox"
                     data-options="missingMessage:'请输入用户名' ,prompt:'验证完成.',required:true, validType:'UserLength[5,10]'"
                     id="txtA_ID" runat="server"/></td>
             </tr>
            </table>
            </div>
          <div>
         <table>
            <tr>
                <td class ="The_title">*管理员密码:</td> 
                <td  class="Textbox"><input class="easyui-validatebox textbox"
                     data-options="missingMessage:'请输入密码' ,prompt:'验证完成.',required:true, validType:'PasswordLength[5,10]'"
                     id="txtA_password" runat="server"/></td>
            </tr>
            </table>
            </div>
          <a href="javascript:ARegister" class="easyui-linkbutton" id="submitlogin" onclick="submitlogin()">登录</a>                   
                    <input  runat="server" height="36px" style="margin-top: 0px"  value="注册" type="submit"  width="72px" />
      </div>
    </form>
</body>
</html>
