//easyui日历控件


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
