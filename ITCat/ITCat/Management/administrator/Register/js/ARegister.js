function submitForm() {
    $('#ff').form('submit',
    $("#submitForm").click(
     function () {
         alert("1");
         $.post(
             "../../../Handler/ARegisterHandler.ashx",
        {
            Manager_name: $("#txtManager_name").val(),
            Manager_phone: $("#txtManager_phone").val(),
            Manager_User: $("#txtManager_User").val(),
            Manager_password: $("#txtManager_password").val(),           
        },
          function (data) {
              if (data == "1") {
                  alert("注册成功");
              }
              else {
                  alert("该用户已注册");
              }
          }
        );
     }
             )
    );
}
function submitlogin() {
    $('#ff').form('submit',
    $("#submitlogin").click(
     function () {
         alert("1");
         $.post(
             "../../../Handler/ALoginHandler.ashx",
        {
            A_ID: $("#txtA_ID").val(),
            A_password: $("#txtA_password").val(),
        },
        function (data) {
            if (data ==0) {
                alert("登录成功");
            }
            else {
                alert("登录失败");
            }
        }
        
        );
     }
             )
    );

}