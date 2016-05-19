  //百度地图API功能
    var map = new BMap.Map("allmap");
	var point = new BMap.Point(116.331398,39.897445);
	map.centerAndZoom(point,12);

	function myFun(result){
		var cityName = result.name;
		map.setCenter(cityName);
		alert("当前定位城市:" + cityName);
		document.getElementById("allmap").innerHTML = cityName;
	}
	var myCity = new BMap.LocalCity();
	myCity.get(myFun);