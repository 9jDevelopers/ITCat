<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pim.aspx.cs" Inherits="iTCat.Account.PersonalCenter.Pim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title></title>
    <link href="../../Public/css/themes/default/easyui.css" rel="stylesheet" />
    <link href="../../Public/css/themes/icon.css" rel="stylesheet" /> 
    <link href="../../Public/css/demo.css" rel="stylesheet" /> 
    <link href="css/Pim.css" rel="stylesheet" />
    <script src="../../Public/js/jquery.min.js"></script>
    <script src="../../Public/js/jquery.easyui.min.js"></script> 
    <script src="js/Pim.js"></script>
    <script src="js/tijiao.js"></script>
   
</head>
<body>
  
    <div class="wz ">个人资料设置</div>
    <form id="form1">

        <div class="easyui-accordion" style="width:900px;height:500px;">
            <div title="个人信息"  style="overflow:auto;padding:10px;">

                <div class="ge" style="height: 399px">

                    <div class="gf">

                        <tr>
                            <td>
                                手机
                            </td>
                            <td>
                                18146725658
                            </td>
                            <td>
                                <a href="javascript:void(0)" class="easyui-2" onclick="$('#w').window('open')"> 修改</a>

                            </td>
                        </tr>
                    </div>
                    <div class="gf">
                        <tr>
                            <td>邮箱</td>
                            <td>未填写</td>
                            <td> <a href="javascript:void(0)" class="easyui-2" onclick="$('#w').window('open')"> 验证</a></td>                 
                        </tr>
                        <div id="q" class="easyui-window" title="Modal Window" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width:200px;height:200px;padding:10px;">
                        </div>
                    </div>
                    <div class="gf">
                        <tr>
                            <td>昵称</td>
                            <td>未设置</td>
                        </tr>
                    </div>
                    <div class="gf">
                        <tr>
                            <td>姓名</td>
                            <td>未设置</td>
                        </tr>
                    </div>
                    <div class="gf">
                        <tr>
                            <td>性别</td>
                            <td>未设置</td>
                        </tr>
                    </div>
                    <div class="gf">
                        <tr>
                            <td>生日</td>
                            <td>未设置</td>
                        </tr>
                    </div>
                    <div class="gh">
                        <tr>
                            <td>联系电话</td>
                            <td>未设置</td>
                        </tr>
                    </div>
                    <div class="gg">
                        <tr>
                            <td>常用出发城市</td>
                            <td>未设置</td>
                        </tr>
                    </div>
                    <div class="gi">
                        
                        <div style="margin:20px 0;">
                            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#w').window('open')">编辑</a>
                        </div>
                         <div id="w" class="easyui-window" title="Modal Window"  data-options="modal:true,closed:true,iconCls:'icon-save'" style="width:700px;height:500px;padding:10px;">
                            <div class="gf">
                                <tr>
                                    <td>
                                        手机:
                                    </td>
                                    <td>
                                        <input class="easyui-textbox" id="txtTel"  data-options="prompt:'请输入11位数字',invalidMessage:'请输入正确的手机号',validType:'lenght[11]'" style="width:200px;height:25px" runat="server">
                                    </td>
                                   
                                </tr>
                            </div>
                            <div class="gf">
                                <tr>
                                    <td>邮箱:</td>
                                    <td>
                                        <input class="easyui-textbox" id="txtEmail" data-options="prompt:'请输入邮箱',missingMessage:'',invalidMessage:'请输入正确的邮箱格式',required:true, validType:'email'" style="width:200px;height:25px" runat="server">
                                      
                                    </td>
                                    <td></td>
                                </tr>
                            </div>
                            <div class="gf">
                                <tr>
                                    <td>昵称:</td>
                                    <td><input class="easyui-textbox" id="txtPname" style="width:200px;height:25px" runat="server"></td>
                                </tr>
                            </div>
                            <div class="gf">
                                <tr>
                                    <td>姓名:</td>
                                    <td><input class="easyui-textbox" id="txtName" style="width:200px;height:25px" runat="server"></td>
                                </tr>
                            </div>
                            <div class="gf">
                                <tr>
                                    <td>性别:</td>
                                    <td><input class="easyui-textbox" id="txtGender" style="width:200px;height:25px" runat="server"></td>
                                </tr>
                            </div>
                            <div class="gf">
                                <tr>
                                    <td>生日:</td>
                                    <td><input class="easyui-datebox" id="txtBirthday" data-options="sharedCalendar:'#cc'" style="width:200px;height:25px" runat="server"></td>
                                    <div id="cc" class="easyui-calendar"></div>
                                </tr>
                            </div>
                            <div class="gh">
                                <tr>
                                    <td>联系电话:</td>
                                    <td><input class="easyui-textbox" id="txtPone" style="width:200px;height:25px" runat="server"></td>
                                </tr>
                            </div>
                            <div class="gg">
                                <tr>
                                    <td>常用出发城市:</td>
                                    <td><input class="easyui-textbox" id="txtCity" style="width:200px;height:25px" runat="server"></td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp; 
                                    <a href="javascript:Pim" class="easyui-linkbutton" id="submitForm" onclick="submitForm()">提交</a>                   
                                    <input  runat="server" height="36px" style="margin-top: 0px"  value="重置" type="submit"  width="200px" /></td>
                                        
                                    
                                    </tr>
                                </tr>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
            <div title="头像" style="padding:10px;">

                <div class="down">
                    <div class="ft">
                        <h5>仅支持jpg,gif,png格式图片，且文件小于2M.</h5>
                    </div>
                <div class="TP">   
                    <input type="button" id="btnimage"  onclick="test()" value="点击添加图片" style="margin-left:20px;"> 
                        <div id="fileups">                  
                            <input type="file" class="file-up" name="btnim1"onchange=" previewImages()" style="display:none;"/>
                            <input type="file" class="file-up" name="btnim2" onchange=" previewImages()" style="display:none;"/>
                        <input type="file" class="file-up" name="btnim3" onchange=" previewImages()" style="display:none;"/>
                        </div>   
                </div>
                    
                    <div class="add-images"></div>
                    <div class="imgss"></div>
                    <div class="kj"><input type="button" value="提交"  onclick = "" /></div>
                </div>
            </div>
        </div>
        
    </form>
    <script >
        $.extend($.fn.validatebox.defaults.rules, {
            email: {
                
                validator: function (value, param) {
                    var reg = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
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

