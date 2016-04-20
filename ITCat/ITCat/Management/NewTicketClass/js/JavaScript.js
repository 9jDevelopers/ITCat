$(function () {
    $('#cc').combo({
        required: true,
        editable: false
    });
    $('#sp').appendTo($('#cc').combo('panel'));
    $('#sp input').click(function () {
        var v = $(this).val();
        var s = $(this).next('span').text();
        $('#cc').combo('setValue', v).combo('setText', s).combo('hidePanel');
    });
});
function submitForm() {
    $('#ff').form('submit');
    $("#submitForm").click(
     function () {
         $.post(
             "../../../Handler.ashx",
        {
            ticketsID: $("#ticketsID").val(),
            Ticket_type: $("#Ticket_type").val(),
            tickets_name: $("#tickets_name").val(),
            ticketsPrices: $("#ticketsPrices").val(),
            Tickets_illustrate: $("#Tickets_illustrate").val(),
            AdministratorName_TextBox: $("#AdministratorName-TextBox").val()
            
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