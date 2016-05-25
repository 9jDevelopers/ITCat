
$(document).ready(function () {
    $.post("../../Handler/transferpimone.ashx",
           {
               Action: "userInfo",
               UserID: 1,
           },
           function (data)
           {
               //把调取的值赋值给输入框显示出来
               $("#txtTel1").textbox({
                   value: data.Information[0].Tel
               });
               $("#txtEmail1").textbox({
                   value: data.Information[0].Email
               });
               $("#txtPname1").textbox({
                   value: data.Information[0].Pname
               });
               $("#txtName1").textbox({
                   value: data.Information[0].Name
               });
               $("#txtGender1").textbox({
                   value: data.Information[0].Gender
               });
               $("#txtBirthday1").textbox({
                   value: data.Information[0].Birthday
               });
               $("#txtCity1").textbox({
                   value: data.Information[0].City
               });
           },
           "json"
        )
},
       function submitForm() {
           $('#frmMain').form('submit');
           $("#submitForm").click(function () {
               $.post(
                   "../../Handler/PimHandler1.ashx",
              {
                  Action: "userInfo",
                  UserID: 1,
                  Tel: $("#txtTel").val(),
                  Email: $("#txtEmail").val(),
                  Pname: $("#txtPname").val(),
                  Name: $("#txtName").val(),
                  Gender: $("#txtGender").val(),
                  Birthday: $("#txtBirthday").datebox("getValue"),
                  City: $("#txtCity").val(),
                  Head_Portrait: $("#txtHead_Portrait").val(),
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
           });
       });