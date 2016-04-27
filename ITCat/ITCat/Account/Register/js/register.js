$(function ()
{
    //给ID为btn-register的标签设置点击事件
    $("#btn-register").click(function ()
    {
        var register_Name = $("#txtregisterName").val();
        var register_Password = $("#txtregisterPassword").val();
        //判断用户名或密码不为空
        if (register_Name == "" || register_Name == null)
        {
            ShowTip("帐号不能为空");
            return;
        }
        if (register_Password == "" || register_Password == null)
        {
            ShowTip("密码不能为空");
            return;
        }
        $.post("/Handler/RegisterHandler.ashx",
                {
                    //<input name="UserName" value="register_Name">
                    rUserName: register_Name,
                    rUserPassword: register_Password
                },
                //data：AccountHandler中返回的值
                function (data)
                {
                    if (data == 1)
                    {
                        ShowTip("注册成功");
                    }
                    else if (data == 0)
                    {
                        ShowTip("用户名已经存在,请更换用户名");
                    }
                    else if (data == -1)
                    {
                        ShowTip("服务器暂时无法连接");
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
