
$(function ()
{
    //页面加载完成执行
    $(document).ready(function ()
    {
        $.post("/Handler/IndexHandler.ashx",
                //参数
                {},
                //data：IndexHandler中返回的值
                function (data)
                {
                    for (i = 0; i <= 5; i++)
                    {
                        var name = "#AttractionsName" + i;
                        $(name).html(data.index[i].AttractionsName);
                        var synopsis = "#AttractionsSynopsis" + i;
                        $(synopsis).html(data.index[i].AttractionsSynopsis);
                        var http = "#http" + i;
                        $(http).attr('href', '../Scenic/Scenic.aspx?AttractionsID=' + data.index[i].AttractionsID);
                        var img = "#image" + i;
                        $(img).attr('src', '../Handler/ShowImg.ashx?AttractionsID=' + data.index[i].AttractionsID);
                    }
                },
                //返回类型
                "json"
            );
        //$('#datagrid').datagrid({

        //    url: '/Index/json.json',
        //    method:'get',
        //    //url: '/Handler/IndexHandler.ashx',
        //    columns: [[
        //        { field: 'AttractionsName',  width: 100 },
        //        { field: 'AttractionsSynopsis',  width: 200, align: 'right' }
        //    ]],
        //    pagination: true,//分页控件 
        //});


        //var p = $('#datagrid').datagrid('getPager');
        //$(p).pagination({
        //    pageSize: 3,//每页显示的记录条数，默认为10 
        //    pageList: [3, 6, 9],//可以设置每页记录条数的列表 
        //    beforePageText: '第',//页数文本框前显示的汉字 
        //    afterPageText: '页    共 {pages} 页',
        //    displayMsg: '当前显示 {from} - {to} 条记录   共 {total} 条记录',
        //});
    });
});
