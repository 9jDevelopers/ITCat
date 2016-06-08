/// <reference path="C:\Users\CAT\Source\Repos\ITCat\ITCat\ITCat\Index/index.aspx" />
$(function ()
{
    //给ID为btn-login的标签设置点击事件
    $("#btn-login").click(function ()
    {
        var login_Name = $("#txtLoginName").val();
        var login_Password = $("#txtLoginPassword").val();

        //判断用户名或密码不为空
        if (login_Name == "" || login_Name == null)
        {
            ShowTip("帐号不能为空");
            return;
        }
        if (login_Password == "" || login_Password == null)
        {
            ShowTip("密码不能为空");
            return;
        }
        $.post("/Handler/LoginHandler.ashx",
                {
                    //<input name="UserName" value="login_Name">
                    UserName: login_Name,
                    UserPassword: login_Password
                },
                //data：AccountHandler中返回的值
                function (data)
                {
                    if (data == -1)
                    {
                        ShowTip("账号密码不存在");
                    }
                    else 
                    {
                        window.location = "/Index/index.aspx";
                    }
                    
                }
                //回调函数
            );
    });
});

function ShowTip(text)
{
    $("#tip").html(text);
    var body_width = $("body").width();
    var tip_width = $("#tip").width();
    var tip_left = body_width / 2 - tip_width / 2 - 26;
    $("#tip").css("left", tip_left).show().fadeOut(5000);
}


function tip(txt)
{
    var body_width = $("body").width();//获取body宽度
    $("#tip").html(txt);//显示提示信息
    var tip_width = $("#tip").width() + 52;//获取提示层宽度
    var left = body_width / 2 - tip_width / 2;//提示div左边距
    $("#tip").css("left", left).show().fadeOut(3000);//显示提示信息
}
