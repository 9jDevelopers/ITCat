<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewAttractions.aspx.cs" Inherits="New_attractions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <title></title>
  
    <link href="../../Public/css/themes/default/easyui.css" rel="stylesheet" />
    <link href="../../Public/css/themes/icon.css" rel="stylesheet" />
    <script src="../../Public/js/jquery.min.js"></script>
    <script src="../../Public/js/jquery.easyui.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       
    <div class="Main_title"><h1>新建景点</h1></div>
        <div>
         <table>
            <tr>
                <td class ="The_title">*景点编号:</td> 
                <td  class="Textbox"><input class="easyui-validatebox textbox"
                     data-options="missingMessage:'请输入景点编号' ,prompt:'验证完成.',invalidMessage:'请输入5个以上数字',required:true, validType:'length[5,10]'"
                     id="txtAttractionsID" runat="server"/></td>
            </tr>
            </table>
            </div>
        <div>
             <table>
               <tr> <td class ="The_title">*景点名称:</td>
                    <td class="Textbox"><input class="easyui-validatebox textbox"
                    data-options=" missingMessage:'请输入景点名称' ,prompt:'验证完成.',invalidMessage:'请输入5个以上中文字',required:true,validType:'ChineseLength[5]' "
                        id="txtAttractions_name"  /></td> </tr>
         </table>
        </div>
        <div>
             <table>
               <tr> <td class ="The_title">*景点标题:</td><td class="Textbox">
                   <input class="easyui-validatebox textbox"
                     data-options=" missingMessage:'请输入景点标题' ,prompt:'验证完成.',invalidMessage:'请输入8个以上中文字',required:true,validType:'ChineseLength[8]'"
                        id="txtAttractions_title" runat="server"/></td> </tr> 
             </table>
        </div>            
        
        <div>
           <table>
            <tr>
                <td class ="The_title">*景点级别:</td>
               <td>
                 <asp:RadioButtonList ID="Level_RadioButton" runat="server" RepeatColumns="5" Width="361px">                   
                        <asp:ListItem>A级</asp:ListItem>
                        <asp:ListItem>AA级</asp:ListItem>
                        <asp:ListItem>AAA级</asp:ListItem>
                        <asp:ListItem>AAAA级</asp:ListItem>
                        <asp:ListItem>AAAAA级</asp:ListItem>                      
                    </asp:RadioButtonList>
                   </td>
                 </tr>
                </table>
             </div>
   
        <div>
             <table>
              <tr>
                <td class ="The_title">*景点地址:</td>
                <td class="Textbox_one">
                    <input class="easyui-textbox"
                     id="Address-TextBox" data-options="prompt:'请填写景点的省份,市，区，县（包括镇）',validType:'Lenght[10,30]'"/></td>
              </tr>
            </table>
        </div>
        <div>
             <table>
              <tr>
                <td class ="The_title">*开放时间:</td>
                <td  class="Textbox_one">
                    <input class="easyui-textbox"
                     id="OpenTime-TextBox" data-options="prompt:'请填写景点的开放时间，包括年月日都必填',validType:'Lenght[10,30]'" /></td>
            </tr>
            </table>
        </div>
        <div>
             <table>
              <tr>
                <td class ="The_title">*景点图片:  <a href="">添加图片</a></td>
                <td>
                <div id="images">
                    
                    <asp:ImageButton ID="ImageButton1"  runat="server" OnClick="ImageButton1_Click" />
                  <div id="fileups">               
                   <input type="file" class="file-up" name="btnim0" style="display:none;"/>
                   <input type="file" class="file-up" name="btnim1" style="display:none;"/>
                   <input type="file" class="file-up" name="btnim2" style="display:none;"/>
                   <input type="file" class="file-up" name="btnim3" style="display:none;"/>
                </div>
                </div>
                </td>
            </tr>
            </table>
        </div>
        <div>
            <table>
            <tr>
                <td class ="The_title">*景点简介:</td>
                <td  class="Textbox_one"><input class="easyui-textbox" data-options="prompt:'请填写景点的介绍内容和概括描述',validType:'Lenght[20,40]'"
                    id="Introduce-TextBox" /></td>
            </tr>
            </table>
        </div>
        <div>
            <table>
            <tr>
                <td class ="The_title">*周边交通:</td>
                <td class="Textbox_one"><input class="easyui-textbox" data-options="prompt:'请填写景点的周边交通情况',validType:'Lenght[20,30]'" />
                    </td>
            </tr>
            </table>
        </div>
         <div>
             <table>
            <tr>
                <td class ="The_title">*联系方式:</td>
                <td class="Textbox_one"><input class="easyui-textbox" data-options="prompt:'请填写景点客服的联系方式',validType:'Lenght[11]'" /></td>
            </tr>
            </table>
        </div>
         <div>
             <table>
            <tr>
                <td class ="The_title">*注释: </td>
                <td class="Textbox_one">&nbsp;&nbsp;<input  
                    class="easyui-textbox" data-options="prompt:'请填写景点注意事项和说明',validType:'Lenght[20,30]'" /></td>
            </tr>
            </table>
        </div>
         <div>
             <table>
            <tr>
                <td class ="The_title">*管理员:</td>
                <td class="Textbox_one">&nbsp;<input class="easyui-validatebox textbox"
                     data-options=" missingMessage:'请输入该景点的管理员姓名' , prompt:'验证完成.',invalidMessage:'请输入3个以上中文字',required:true,validType:'ChineseLength[3]'"
                        id="AdministratorName-TextBox" /></td>
                </tr>              
            </table>
        </div>
        <div>
            <table>
           <tr>
                <td><asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="提交" Height="36px" Width="76px" />
                    <asp:Button ID="Button3" runat="server" Height="36px" style="margin-top: 0px" Text="重置" Width="72px" />
                </td>
             </tr> 
            </table> 
        </div>          
    </form>
    <style scoped="scoped">
		.easyui-textbox{
			Height:8%;
           Width:40%;
			margin:0;
			padding:0 2px;
			box-sizing:content-box;
		}
        </style>
    <script src="js/JavaScript3.js"></script>
    <script>
        $.extend($.fn.validatebox.defaults.rules, {
            ChineseLength: {
                validator: function (value, param) {
                    
                    var reg = /^[\u4e00-\u9fa5]{0,}$/;
                    if (reg.exec(value)) {
                        return value.length >= param[0];
                    }

                    else {

                        return false;
                    }
                   
                },
                message: 'Please enter at least {0} characters.'
            }
        });
       
    </script>
</body>
</html>
