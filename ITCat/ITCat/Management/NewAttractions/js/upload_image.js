var count = 0;
//点击添加图片按钮，触发上传控件
$(function () {
    $("#btn-add-images").click(function () {
        alert(1);
        count = $(".images-preview .item").size();
        $(".file-up").eq(count).click();
        //        $(".file-up").each(function () {
        //            var name = $(this).val();
        //            if (name == "") {
        //                $(this).click();
        //                return false;
        //            }
        //        });
    });
});



$(function () {
    $(".file-up").live("change", function () {
        //操作读取事件
       
        previewImages();
    });

});

//读取图片
function previewImages() {
    //获取上传控件中的图片
    var file = $(".file-up").eq(count)[0].files[0];
    //读取图片文件
    if (typeof FileReader != undefined) {
        var reader = new FileReader();
        reader.readAsDataURL(file);
        reader.onload = function () {
            //显示图片
            addPreviewHtml(this.result);
        };
    }
}

function addPreviewHtml(src) {
    $(".add-images").before("<div class='item'>" +
                                   "<div class='content' style='background-image:url(" + src + ");'></div>" +
                                   "<i class='icon-close'></i>" +
                            "</div>");
    //获取.images-preview下有多少个item
    var itemSize = $(".images-preview .item").size();

    if (itemSize == 4) {
        $(".add-images").hide();
    }
    else {
        $(".add-images").show();
    }
}


//删除图片div组
$(function () {
    $(".icon-close").live("click", function () {
        //获取父级.item的index的索引
        var index = $(this).parent(".item").index();
        //删除对应item的div
        $(this).parent().remove();
        //删除索引上传控件
        $(".file-up").eq(index).remove();
        //循环修改上传控件name
        $(".file-up").each(function (id) {
            $(this).attr("name", "fileUp" + id);
        });
        //.images-preview结尾插入一个控件
        $(".images-preview").append("<input type='file'  capture='camera' accept='image/*' class='file-up' name='fileUp3' style='display:block;'/> ");
        var itemSize = $(".images-preview .item").size();
        if (itemSize != 4) {
            $(".add-images").show();
        }
    });

});



$(function () {
    $("#txtFileName").click(function () {
        var formData = new FormData($("#ff")[0]);
        $.ajax({
            cache: true, //缓存
            type: "POST", //提交方式post get
            url: "NewAttractionsHandler.ashx",
            data: formData,
            async: true, //异步
            contentType: false, //避免jQuery将你的表格数据转换为字符串，导致提交失败。
            //默认值: "application/x-www-form-urlencoded"。发送信息至服务器时内容编码类型。默认值适合大多数情况。
            //上传文件的制定方式：multipart/form-data形式传递文件。
            processData: false, //是否转换信息//false避免数据转换成查询字符串
            error: function (request) {
                alert(request);
            },
            success: function (data) {
                alert(data);
            }
        });
    });
});

////通过Web表单提交请求FormData接口获取表单数据，异步上传一个二进制文件. 
//        var formData = new FormData($("#frmMain")[0]);
//        $.ajax({
//            cache: true, //缓存
//            type: "POST", //提交方式post get
//            url: "/Handlers/GoodsHandler/GoodsHandlers.ashx",
//            data: formData,
//            async: true, //异步
//            contentType: false, //避免jQuery将你的表格数据转换为字符串，导致提交失败。
//            //默认值: "application/x-www-form-urlencoded"。发送信息至服务器时内容编码类型。默认值适合大多数情况。
//            //上传文件的制定方式：multipart/form-data形式传递文件。
//            processData: false, //是否转换信息//false避免数据转换成查询字符串
//            error: function (request) {
//                alert("上传失败");
//            },
//            success: function (data) {
//                alert("上传成功");
//            }
//        });