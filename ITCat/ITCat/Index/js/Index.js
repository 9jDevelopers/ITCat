
$(function ()
{
    //页面加载完成执行
    $(document).ready(function ()
    {
        $.post("/Handler/SessionHandler.ashx",
                {},
                function (data)
                {
                    if(data==-1)
                    {
                        $("#Pim").hide();
                    }
                    else
                    {
                        $("#Login").hide();
                        $("#Register").hide();
                    }

                }
                );

        $.post("/Handler/IndexHandler.ashx",
                //参数
                {},
                //data：IndexHandler中返回的值
                function (data)
                {
                    for (i = 0;i<=5;i++)
                    {
                        var name = "#AttractionsName" + i;
                        $(name).html(data.index[i].AttractionsName);
                        var synopsis = "#AttractionsSynopsis" + i;
                        $(synopsis).html(data.index[i].AttractionsSynopsis);
                        var http = "#http" + i;
                        $(http).attr('href', '../Scenic/Scenic.aspx?AttractionsID=' + data.index[i].AttractionsID);
                        //data.index[0].AttractionImages;
                    }
                },
                //返回类型
                "json"
            );
    });
});
