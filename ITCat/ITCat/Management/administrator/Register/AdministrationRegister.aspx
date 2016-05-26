<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministrationRegister.aspx.cs" Inherits="iTCat.Management.administrator.Register.AdministrationRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员注册</title>
     <link href="../../../Public/css/themes/default/easyui.css" rel="stylesheet" />
    <link href="../../../Public/css/themes/icon.css" rel="stylesheet" />
    <link href="../../../Public/css/demo.css" rel="stylesheet" />
    <link href="../../NewAttractions/css/NewAttractions.css" rel="stylesheet" />
    <script src="../../../Public/js/jquery.min.js"></script>
    <script src="../../../Public/js/jquery.easyui.min.js"></script>
    <script src="../../../NewAttractions/js/jquery-2.1.1.min.js"></script>
    <script src="../../../NewAttractions/js/Submit.js"></script>
    <script src="../../NewAttractions/js/validation.js"></script>
</head>
<body>
    <form id="form1">
    <div class="Main_title"><h1>管理员注册</h1>
        <div>
         <table>
            <tr>
                <td class ="The_title">*管理员姓名:</td> 
                <td  class="Textbox"><input class="easyui-validatebox textbox"
                     data-options="missingMessage:'请输入用户名' ,prompt:'验证完成.',invalidMessage:'请输入中文姓名',required:true, validType:'ChineseLength[2,5]'"
                     id="Manager_name"/></td>
            </tr>
            </table>
            </div>
         <div>
         <table>
            <tr>
                <td class ="The_title">*管理员手机号:</td> 
                <td  class="Textbox"><input class="easyui-validatebox textbox"
                     data-options="missingMessage:'请输入手机号' ,prompt:'验证完成.',invalidMessage:'请输入正确格式的手机号',required:true, validType:'PhoneLength[11]'"
                     id="Manager_phone" /></td>
            </tr>
            </table>
            </div>
        <div>
         <table>
            <tr>
                <td class ="The_title">*管理员用户名:</td> 
                <td  class="Textbox"><input class="easyui-validatebox textbox"
                     data-options="missingMessage:'请输入用户名' ,prompt:'验证完成.',required:true, validType:'UserLength[6,10]'"
                     id="Manager_User" /></td>
            </tr>
            </table>
            </div>
          <div>
         <table>
            <tr>
                <td class ="The_title">*管理员密码:</td> 
                <td  class="Textbox"><input class="easyui-validatebox textbox"
                     data-options="missingMessage:'请输入密码' ,prompt:'验证完成.',required:true, validType:'PasswordLength[5,10]'"
                     id="Manager_password" /></td>
            </tr>
            </table>
            </div>
         <div>
         <table>
            <tr>
                <td class ="The_title">*重复密码:</td> 
                <td  class="Textbox"><input class="easyui-validatebox textbox"
                     data-options="missingMessage:'请输入密码' ,prompt:'验证完成.',invalidMessage:'密码不一致',required:true, validType:'equals[#Manager_password]'"
                     id="Repeat_password" /></td>
            </tr>
            </table>
            </div>
             <div>
            <table>
             <tr>
                <td>
                    <a href="javascript:NewAttractions" class="easyui-linkbutton" id="submitForm" onclick="submitForm()">提交</a>                   
                    <input  runat="server" height="36px" style="margin-top: 0px"  value="重置" type="submit"  width="72px" />
                </td>
             </tr> 
            </table> 
        </div>          
      </div>
    </form>
</body>
</html>
