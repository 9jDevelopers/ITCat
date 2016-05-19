<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewAttractions.aspx.cs" Inherits="iTCat.Management.NewAttractions.NewAttractions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../Public/css/themes/default/easyui.css" rel="stylesheet" />
    <link href="../../Public/css/themes/icon.css" rel="stylesheet" />
    <link href="../../Public/css/demo.css" rel="stylesheet" />
    <link href="css/NewAttractions.css" rel="stylesheet" />
    <script src="../../Public/js/jquery.min.js"></script>
    <script src="../../Public/js/jquery.easyui.min.js"></script>
    <script src="js/Submit.js"></script>
    <script src="js/ajaxupload.3.9.js"></script>
</head>
<body>
    <form  id="ff" method="post" >
       
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
                        id="txtAttractions_name" runat="server" /></td> </tr>
         </table>
        </div>
        <div>
             <table>
               <tr> <td class ="The_title">*景点标题:</td><td class="Textbox">
                   <input class="easyui-validatebox textbox"
                     data-options=" missingMessage:'请输入景点标题' ,prompt:'验证完成.',invalidMessage:'请输入8个以上中文字',required:true,validType:'ChineseLength[8]'"
                        id="txtAttractions_title" /></td> </tr> 
             </table>
        </div>            
        
        <div>
           <table>
            <tr>
                <td class ="The_title">*景点级别:</td>
               <td>
                    <select id="cc" style="width:150px"></select>
                   <div id="sp">
                    <div style="color:#99BBE8;background:#fafafa;padding:5px;">以下是选择景点的级别</div>
                    <div style="padding:10px" id="Level_RadioButton" runat="server">
                     <input type="radio" name="lang" value="01"/><span>A级</span><br/>
                     <input type="radio" name="lang" value="02"/><span>AA级</span><br/>
                     <input type="radio" name="lang" value="03"/><span>AAA级</span><br/>
                     <input type="radio" name="lang" value="04"/><span>AAAA级</span><br/>
                     <input type="radio" name="lang" value="05"/><span>AAAAA级</span>
                     </div>        
                    </div>        
                   </td>
                 </tr>
                </table>
             </div>
   
        <div>
             <table>
              <tr>
                <td class ="The_title">*景点地址:</td>
                <td class="Textbox_one">
                    <input class="easyui-textbox" runat="server"
                     id="AddressTextBox" data-options="prompt:'请填写景点的省份,市，区，县（包括镇）',validType:'Lenght[10,30]'"/></td>
              </tr>
            </table>
        </div>
        <div>
             <table>
              <tr>
                <td class ="The_title">*景点地图坐标:</td>
                <td class="Textbox_one">
                    <input class="easyui-textbox" runat="server"
                     id="txtPoint" data-options="prompt:'请填写景点的坐标',validType:'Lenght[10,30]'"/></td>
              </tr>
            </table>
        </div>
        <div>
             <table>
              <tr>
                <td class ="The_title">*开放时间:</td>
                <td  class="Textbox_one">
                    <input class="easyui-textbox" runat="server"
                     id="OpenTimeTextBox" data-options="prompt:'请填写景点的开放时间，包括年月日都必填',validType:'Lenght[10,30]'" /></td>
            </tr>
            </table>
        </div>
             <table>
              <tr>
                <td class ="The_title">*景点图片:</td>
                <td class="images">
                    <%-- <div class="images-preview clearfix">                           
                            <%--通过JS添加显示图片的html--%>                         
                            <div id="images">
                         
                    <div id="btnUp1" class="q"><input type="button"   value="点击添加图片" style="margin-left:20px;"/>                         
                       <i class="tu1 w icon-googleplus" ></i> 
                       <img id="ig1"  src=""/>         
                   </div>

                    <div id="btnUp2" class="q"><input type="button"   value="点击添加图片" style="margin-left:20px;"/>
                       <i class="tu2 w icon-googleplus"></i> 
                       <img id="ig2" src=""/>         
                   </div>
        
                    <div id="btnUp3" class="q"><input type="button"  value="点击添加图片" style="margin-left:20px;"/>
                       <i class="tu3 w icon-googleplus" ></i> 
                       <img id="ig3" src=""/>         
                   </div>        
                    <div id="btnUp4" class="q"><input type="button" value="点击添加图片" style="margin-left:20px;"/>
                       <i class="tu4 w icon-googleplus" ></i> 
                       <img id="ig4" src=""/>         
                   </div>   
                </div>                  
                    <div class="kj"><input type="button" id="FileName"  value="提交"  onclick = "" /></div>                        
                </td>
              </tr>
            </table>
            <div>
                       
            <table>
            <tr>
                <td class ="The_title">*景点简介:</td>
                <td  class="Textbox_one">
                    <input class="easyui-textbox" data-options="prompt:'请填写景点的介绍内容和概括描述',validType:'Lenght[20,40]'"
                    id="IntroduceTextBox" runat="server" />

                </td>
            </tr>
            </table>
        </div>
         <div>
             <table>
            <tr>
                <td class ="The_title">*联系方式:</td>
                <td class="Textbox_one"><input class="easyui-textbox" runat="server"
                    id="Contact" data-options="prompt:'请填写景点客服的联系方式',validType:'Lenght[11]'" /></td>
            </tr>
            </table>
        </div>
         <div>
             <table>
            <tr>
                <td class ="The_title">*注释:      
                </td>
                <td class="Textbox_one">&nbsp;&nbsp;<input  id="NoteAttractions" runat="server"
                    class="easyui-textbox" data-options="prompt:'请填写景点注意事项和说明',validType:'Lenght[20,30]'" /></td>
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
    <script  >  
        var button1 = $('#btnUp1');
        var image1 = $('#ig1');
        var tu1 = $('.tu1');

        var button2 = $('#btnUp2');
        var image2 = $('#ig2');
        var tu2 = $('.tu2');

        var button3 = $('#btnUp3');
        var image3 = $('#ig3');
        var tu3 = $('.tu3');

        var button4 = $('#btnUp4');
        var image4 = $('#ig4');
        var tu4 = $('.tu4');

        $(function () {
            imagedata(button1, image1, tu1);
            imagedata(button2, image2, tu2);
            imagedata(button3, image3, tu3);
            imagedata(button4, image4, tu4);

        });

        function imagedata(button, img, tu) {

            new AjaxUpload(button, {
                action: 'Attrctionsimage.ashx',
                name: 'myflie',

                //上传结束
                onComplete: function (file, response) {
                    $(function () { tu.hide(); })
                    alert(response);
                    img.attr("src", "img/" + response);
                    img.attr("width", "100");
                    img.attr("height", "100");
                }
            })
        }

        function submitForm() {            
            $('#ff').form('submit',
            $("#submitForm").click(
             function () {
                     //var image1 = $("#ig1").attr("src");           
                     //var image2 = $("#ig2").attr("src");        
                     //var image3 = $("ig3").attr("src");
                     //var image4 = $("ig4").attr("src");
                 alert("1");
                 $.post(
                     "../../Handler/NewAttractionsHandler.ashx",
                {                    
                    AttractionsID: $("#txtAttractionsID").val(),
                    Attractions_name: $("#txtAttractions_name").val(),
                    Attractions_title: $("#txtAttractions_title").val(),
                    Level_RadioButton: $('#cc').combo('getText'),
                    Address: $("#AddressTextBox").val(),
                    OpenTime: $("#OpenTimeTextBox").val(),
                    Introduce: $("#IntroduceTextBox").val(),
                    Contact: $("#Contact").val(),
                    NoteAttractions: $("#NoteAttractions").val(),
                    image1 : $("#ig1").attr("src"),          
                    image2 : $("#ig2").attr("src"),       
                    image3 : $("#ig3").attr("src"),
                    image4: $("#ig4").attr("src"),
                    Point:$("#txtPoint").val()
                    
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
                     )
            );
            
        }
    </script>
</body>
</html>
