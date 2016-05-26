
//提交图片路径


function submitForm() {
    $('#ff').form('submit',
    $("#submitForm").click(
     function () {
         alert("1");
         $.post(
             "../../Handler/NewAttractionsHandler.ashx",
        {
            AttractionsID: $("#txtAttractionsID").val(),
            Attractions_name: $("#txtAttractions_name").val(),
            Attractions_title: $("#txtAttractions_title").val(),
            Level_RadioButton: $('#cc').combo('getText'),
            Address: $("#AddressTextBox").val(),
            OpenTime: $("#OpenTimeTextBox").val(),
            Introduce: $("#IntroduceTextBox").val(),
            Contact: $("#Contact").val(),
            NoteAttractions: $("#NoteAttractions").val(),
            Point: $("#txtPoint").val()

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
