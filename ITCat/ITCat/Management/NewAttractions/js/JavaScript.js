 
        $("#btnUpi").click(
             function () {              
                 var button = $('#btnUp1');
                 var image = $('#ig1');
                 var tu = $('.tu1');

                 $(function () {
                     imagedata(button, image, tu);                       

                 });                  
                 function imagedata(button, img, tu) {

                     new AjaxUpload(button, {
                         action: 'Attrctionsimage.ashx',
                         name: 'myflie',
                         //上传结束
                         onComplete: function (file, response) {
                             alert(response);
                             $(function () { tu.hide(); })
                             img.attr("src", "img/" + response);
                             img.attr("width", "100");
                             img.attr("height", "100");
                             $("#images").append
                             ("<div id='btnUp2' class='q'>" + "<input type='button' name='button'   value='点击添加图片1' style='margin-left:20px;'/>" +
                              "<i class='tu2 w icon-googleplus'>" + "</i>" +
                              "<img id='ig2' src=''/>" +
                              "</div>");
                             $("#btnUpi").hide();
                         }
                     })
                 }
             }
         )
}
//提交数据
$('#FileName').click(
    function () {
        $.post(
               "../../Handler/AttractionsImgHandler.ashx",
               {
                   AttractionsID: $("#txtAttractionsID").val(),
                   image1: $("#ig1").attr("src"),
                   image2: $("#ig2").attr("src"),
                   image3: $("#ig3").attr("src"),
                   image4: $("#ig4").attr("src")
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