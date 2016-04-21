

function submitForm() {
    $('#ff').form('submit');
    $("#submitForm").click(
     function () {
         $.post(
             "../../../Handler.ashx",
        {
            ScenicspotID: $("#txtScenicspotID").val(),
            Scenicspot_Name: $("#txtScenicspot_Name").val(),
            ScenicspotIntroduction: $("#txtScenicspot_Introduction").val(),
            ScenicspotAddress: $("#txtScenicspot_Address").val(),
            TicketPrice: $("#txtTicketPrice").val(),
            ScenicspotPicture: $("#txtScenicspot_Picture").val(),
            FreePolicy: $("#txtFreePolicy").val(),
            FavouredPolicy: $("#txtFavouredPolicy").val(),
            ScenicspotMap: $("#txtScenicspot_Map").val(),
            ScenicspotGrade: $("#txtScenicspot_Grade ").val(),
            ScenicspotTitle: $("#txtScenicspot_Title ").val(),
            ScenicSpotContactPhone: $("#txtScenicSpot_ContactPhone ").val(),
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