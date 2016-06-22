$(document).ready(function () {
    $.post("../../Handler/OrderHandler.ashx",
           {
               Action: "userInfo",
           },
           function (data)
           {
               //把调取的值赋值给输入框显示出来
               $("#datetime").html(data.order[0].Timetaday);             
               $("#order").html( data.order[0].OrderID); 
               $("#UnitPrice").html(data.order[0].UnitPrice);
               $("#number").html(data.order[0].Number);
               $("#RealPayment").html(data.order[0].RealPayment);
           },
           "json"
        )
});
      
