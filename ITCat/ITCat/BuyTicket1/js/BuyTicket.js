//出发时间选择
$(function () {
    $('#dd').datebox().datebox('calendar').calendar({
        validator: function (date) {
            var now = new Date();
            var d1 = new Date(now.getFullYear(), now.getMonth(), now.getDate());
            var d2 = new Date(now.getFullYear(), now.getMonth(), now.getDate() + 10);
            return d1 <= date && date <= d2;
        }
    });
});

//票量选择器
$('#AdultNumSpin').numberspinner({
    required: true,
    increment: 1,
    min: 0,
    max:100,
    missingMessage:'请选择票的数量',
});

$('#ChildNumSpin').numberspinner({
    required: true,
    increment: 1,
    min: 0,
    max: 100,
    missingMessage: '请选择票的数量',
});





/* $('#ss').spinner({
    editable: false,
    required: true,
    increment: 1,
    width: '50%',
    min: '0',
    missingMessage:'请输入您需要购买的票数',
});
*/

//验证姓名
$('#Name').validatebox({
    required: true,
    validType: 'length[2,10]',
    missingMessage:'请输入您的姓名',
    invalidMessage: '输入错误，请重新输入',
   
});
   

//验证手机号码
$('#Tel').validatebox({
    required: true,
    missingMessage: '请输入您的手机号码',
    invalidMessage: '输入错误，请重新输入',  
});

//验证邮箱
$('#Email').validatebox({
    required: true,
    validType: 'email',
    missingMessage:'请输入您的邮箱',
    invalidMessage: '输入错误，请重新输入',
});
//设定最少输入字符，用于验证
$.extend($.fn.validatebox.defaults.rules, {
    minLength: {
        validator: function (value, param) {
            return value.length >= param[0];
        },
        missingMessage:'输入错误，请重新输入',
    }

});



//百度地图API功能
    var map = new BMap.Map("allmap");
	var point = new BMap.Point(116.331398,39.897445);
	map.centerAndZoom(point,12);

	function myFun(result){
		var cityName = result.name;
		map.setCenter(cityName);
		document.getElementById("allmap").innerHTML = cityName;
	}
	var myCity = new BMap.LocalCity();
	myCity.get(myFun);


    //发送邮件
	
	function mailsome1()
    {
	    who=prompt("Enter recipient's email address: ","antispammer@earthling.net");
	    what=prompt("Enter the subject: ","none");
	    if (confirm("Are you sure you want to mail "+who+" with the subject of "+what+"?")==true){
	        parent.location.href='mailto:'+who+'?subject='+what+'';
	    }
	}
	

	var nodemailer = require('nodemailer');
	var transporter = nodemailer.createTransport({
	    service: 'Gmail',
	    auth: {
	        user: 'sxzqcyj@gmail.com',
	        pass: 'xxxxx'
	    }
	});
	var mailOptions = {
	    from: 'sxzqcyj', // sender address
	    to: 'xxxxx@163.com', // list of receivers
	    subject: 'Hello ', // Subject line
	    text: 'Hello world ', // plaintext body
	    html: '<b>Hello world </b>' // html body
	};
	transporter.sendMail(mailOptions, function (error, info) {
	    if (error) {
	        console.log(error);
	    } else {
	        console.log('Message sent: ' + info.response);
	    }
	});
