//easyui控件的样式
$(function () {
    $('input.easyui-validatebox').validatebox({
        tipOptions: {	// the options to create tooltip
            showEvent: 'mouseenter',
            hideEvent: 'mouseleave',
            showDelay: 0,
            hideDelay: 0,
            zIndex: '',
            onShow: function () {
                if (!$(this).hasClass('validatebox-invalid')) {
                    if ($(this).tooltip('options').prompt) {
                        $(this).tooltip('update', $(this).tooltip('options').prompt);
                    } else {
                        $(this).tooltip('tip').hide();
                    }
                } else {
                    $(this).tooltip('tip').css({
                        color: '#000',
                        borderColor: '#CC9933',
                        backgroundColor: '#FFFFCC'
                    });
                }
            },
            onHide: function () {
                if (!$(this).tooltip('options').prompt) {
                    $(this).tooltip('destroy');
                }
            }
        }
    }).tooltip({
        position: 'right',
        content: function () {
            var opts = $(this).validatebox('options');
            return opts.prompt;
        },
        onShow: function () {
            $(this).tooltip('tip').css({
                color: '#000',
                borderColor: '#CC9933',
                backgroundColor: '#FFFFCC'
            });
        }
    });
});
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
//验证中文的JS代码
$.extend($.fn.validatebox.defaults.rules, {
    ChineseLength: {
        validator: function (value, param) {
                    
            var reg = /^[\u4e00-\u9fa5]{0,}$/;
            if (reg.exec(value)) {
                return value.length >= param[0];
            }

            else {

                return false;
            }
                   
        },
        message: 'Please enter at least {0} characters.'
    }
});
$.extend($.fn.validatebox.defaults.rules, {
    String:{
        validator: function (value, param) {

            var reg = /^[0-9]{1,3}.[0-9]{0,6}|[0-9]{0,2}.[0-9]{0,6}$/;
            if (reg.exec(value)) {
                return value.length >= param[0];
            }

            else {

                return false;
            }

        },
        message: 'Please enter at least {0} characters.'
    }
});
//提交图片路径
var button1 = $('#btnUp1');
var image1 = $('#ig1');
var tu1 = $('.tu1');

var button2 = $('#btnUp2');
var image2 = $('#ig2');
var tu2 = $('.tu2');

var button3 = $('#btnUp3');
var image3 = $('#ig3');
var tu3 = $('.tu3');

var button4 = $('#btnUp4');
var image4 = $('#ig4');
var tu4 = $('.tu4');

$(function () {
    imagedata(button1, image1, tu1);
    imagedata(button2, image2, tu2);
    imagedata(button3, image3, tu3);
    imagedata(button4, image4, tu4);

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

        }
    })
}
115.995818 | 29.677338
"/^[0-9]{1,3}.[0-9]{0,6}|[0-9]{0,2}.[0-9]{0,6}$/"
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
