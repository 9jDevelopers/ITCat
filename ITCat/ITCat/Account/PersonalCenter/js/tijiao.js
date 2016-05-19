   
$(document).ready(function ()
{
    $.post(
                   "../../Handler/transferpimone.ashx",
              {
                  Action:"userInfo",
                  UserID: 1,        
              },
        function (data) 
        {
            if (data == "1") {
                alert("调用成功");
            }
            else 
            {
                alert("调用失败");
            }
        }
          )
},
       function submitForm() 
       {            
           $('##frmMain').form('submit',
           $("#submitForm").click(
            function () {
                
               
                $.post(
                    "../../Handler/PimHandler1.ashx",
               {
                   Action:"userInfo",
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
            }
                    )
           );
            
       }
