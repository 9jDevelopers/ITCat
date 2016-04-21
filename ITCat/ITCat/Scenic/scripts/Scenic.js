

function submitForm() {
    $('#ff').form('submit');
    $("#submitForm").click(
     function () {
         $.post(
             "../../../Handler.ashx",
        {
            ScenicspotID: $("#txtScenicspotID").val(),
  
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
             );

}