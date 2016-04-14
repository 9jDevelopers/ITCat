$(function ()
{
    //给ID为TM的标签设置点击事件
    $("#TM").click(function ()
    {
         var TM_Tel = $("#txtTel").val();
         var TM_Email = $("#txtEmail").val();
         var TM_Pname = $("#txtPname").val();
         var TM_Name = $("#txtName").val();
         var TM_Gender = $("#txtGender").val();
         var TM_Birthday = $("#txtBirthday").val();
         var TM_Pone = $("#txtPone").val();
         var TM_City = $("#txtCity").val(); 
        if (TM_Tel == "" || TM_Tel == null)
        {
            ShowTip("手机号不能为空");
            return;
        }
        $.post("/Handler.ashx",
                {
                    Tel:TM_Tel,
                    Email:TM_Email,
                    Pname:TM_Pname,
                    Name:TM_Name,
                    Gender:TM_Gender,
                    Birthday:TM_Birthday,
                    Pone:TM_Pone,
                    City:TM_City,
                },
                //data：AccountHandler中返回的值
                function (data)
                {
                    if (data == 1)
                    {
                        //显示到首页
                    }
                    else if (data == 0)
                    {
                        //重新输入
                        ShowTip("账号密码不存在");
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






//$("#btn-login").click(function () {
//    var loginName = $("#txtLoginName").val();
//    var loginPassword = $("#txtLoginPassword").val();
//    if (loginName == "" || loginName == null)
//    {
//        tip("请输入账号");
//        return;
//    }
//    $.post("/Handlers/AccountServer/AccountHandler.ashx",
//            {
//                UserName: loginName,
//                UserPassword:loginPassword
//            },
//            //data后台返回结果即AccountHandler.ashx页面
//            function (data)
//            {
//                if (data == 1)
//                {
//                    tip("账号存在");
//                    ////跳转到首页
//                    //window.location.href = "/Default.aspx";
//                }
//                if (data == -1)
//                {
//                    tip("账号或密码错误");
//                }

//            }
//        );
//});


function tip(txt)
{
    var body_width = $("body").width();//获取body宽度
    $("#tip").html(txt);//显示提示信息
    var tip_width = $("#tip").width() + 52;//获取提示层宽度
    var left = body_width / 2 - tip_width / 2;//提示div左边距
    $("#tip").css("left", left).show().fadeOut(3000);//显示提示信息
}
