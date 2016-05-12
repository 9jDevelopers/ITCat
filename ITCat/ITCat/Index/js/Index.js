$(function ()
{
    //给ID为btn-login的标签设置点击事件
    $(document).ready(function ()
    {
        $.post("/Handler/IndexHandler.ashx",
                //data：AccountHandler中返回的值
                function (data)
                {

                }
                //回调函数
            );
    });
});
