   
       function submitForm() {            
           $('#form1').form('submit',
           $("#submitForm").click(
            function () {
                alert("1");
                $.post(
                    "../../Handler/NewAttractionsHandler.ashx",
               {                    
                   Tel: $("#Tel").val(),
                   Email: $("#Email").val(),
                   Pname: $("#Pname").val(),
                   Name: $("#Name").val(),
                   Gender: $("#Gender").val(),
                   Birthday: $("#Birthday").val(),
                   Pone: $("#Pone").val(),
                   City: $("#City").val(),
                   Head_Portrait: $("#Head_Portrait").val(),
                    
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
