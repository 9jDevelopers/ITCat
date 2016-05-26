$(function () {

    $("#btn-change").click(function () {
        var change_Password = $("#txtchangePassword").val();
        var change_NewPassword = $("#txtchangeNewPassword").val();
        //判断原始密码或新密码不为空
        if (change_Password == "" || change_Password == null) {
            ShowTip("原始密码不能为空");
            return;
        }
        if (change_NewPassword == "" || change_NewPassword == null) {
            ShowTip("新密码不能为空");
            return;
        }
        $.post("/Handler.ashx",
                {
                    UserName: change_Password,
                    UserPassword: change_NewPassword
                },

                function (data) {
                    if (data == 1) {
                        ShowTip("原始密码正确");
                    }
                    else if (data == 0) {
                        ShowTip("原始密码不正确");
                    }
                    else if (data == -1) {
                        ShowTip("服务器暂时无法连接");
                    }
                }
                //回调函数
            );
    });
});