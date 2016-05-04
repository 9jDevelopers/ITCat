   
       function submitForm() {            
           $('#form1').form('submit',
           $("#submitForm").click(
            function () {
                
               
                $.post(
                    "../../Handler/PimHandler1.ashx",
               {
                   UserID: "1",
                   Tel: $("#txtTel").val(),
                   Email: $("#txtEmail").val(),
                   Pname: $("#txtPname").val(),
                   Name: $("#txtName").val(),
                   Gender: $("#txtGender").val(),
                   Birthday: $("#txtBirthday").datebox("getValue"),
                   Pone: $("#txtPone").val(),
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
