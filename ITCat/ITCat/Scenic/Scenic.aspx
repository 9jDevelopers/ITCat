<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Scenic.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>景点</title>
    <link href="css/Scenic.css" rel="stylesheet" />  
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="keywords" content="�ٶȵ�ͼ,�ٶȵ�ͼAPI���ٶȵ�ͼ�Զ��幤�ߣ��ٶȵ�ͼ���������ù���" />
<meta name="description" content="�ٶȵ�ͼAPI�Զ����ͼ�������û��ڿ��ӻ����������ɰٶȵ�ͼ" />
<style type="text/css">
    html,body{margin:0;padding:0;}
    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
</style>
     <script type="text/javascript" src="../Public/js/jquery.min.js"></script>
    <script type="text/javascript" src="../Public/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
</head>
<body onload="javascript:Scenic"id="submitForm">
    <form id="form1" runat="server">
        <div>
            <div class="mp-description pngfix ">
                <div class="mp-description-slider " id="slider">
                    <div id="mp-description-content" class="mp-description-imgs" style="position: relative;">
                        <div class="mp-description-image" style="position: absolute; top: 0px; left: 0px;">
                            <img src="images/dcb.jpg" id="ImagePath" />" 
                        </div>
                    </div>
                 </div>
  
                        <div class="mp-description-detail">
                            <div class="mp-description-view" id="attractionsName">
                                <span class="mp-description-name" id="txtScenicspotName  "  title="庐山">庐山</span>
                            </div>
                            <div class="mp-description-onesentence" id="attractionsSynopsis">风景秀美风景秀美风景秀美风景秀美风景秀美风景秀美风景秀美。</div>
                            <div class="mp-description-location">

                                <span class="mp-description-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位      置：</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span class="mp-description-address" id="attractionsAddress" title="江西省九江市庐山区">江西省九江市庐山区</span>
                                <a class="ditu">查看地图</a>
                            </div>
                            <div class="mp-description-price" style="display: block;">
                              <span class="mp-description-qunar-price"><em id="startat">$26</em>"起"</span>
                              <a class="mp-description-bookingbtn">立刻预定</a>
                           </div>
                        </div>                   
             </div>
        </div>
        <div class="mp-navbar-takeplace">
           <div class="mp-navbar-wrap" id="mp-navbar-wrap">
               <div class="mp-navbar" id="mp-navbar">                 
                   <ul>
                     <li><a href="#home" name="home">门票预订</a></li>
                     <li><a href="#news" >特色看点</a></li>
                     <li><a href="#contact">交通位置</a></li>
                     <li><a href="#about">同城推荐</a></li>
                  </ul>                    
               </div>
           </div>
        </div>
        <div class="table">
            <div name="home" id="home"> 
            <div>门票</div>
            <div class="table-tr">
                <div class="table-td-1" id="ticketsName">XX成人票</div>
                <div class="table-td-2" id="price">XX元</div>
                <div class="table-td-3">预定</div>
                <div style="clear:both"></div>
            </div>
            <div class="table-tr">
                <div class="table-td-1">XX票</div>
                <div class="table-td-2">XX元</div>
                <div class="table-td-3">预定</div>
                <div style="clear:both"></div>

            </div>
            <div class="table-tr">
                <div class="table-td-1">儿童票</div>
                <div class="table-td-2">123元</div>
                <div class="table-td-3">预定</div>
                <div style="clear:both"></div>

            </div>
            <div class="table-tr">
                <div class="table-td-1">XX票</div>
                <div class="table-td-2">XX元</div>
                <div class="table-td-3">预定</div>
                <div style="clear:both"></div>
            </div>
                </div>
        </div>
        <div class="mp-descriptio">
            <div class="mp-description-onesentence">   
                <div class="news" id="news"> 
                <div>特色看点:</div>             
                    <p>庐山，又称匡山或匡庐，隶属于江西省九江市。传说殷周时期有匡氏兄弟七人结庐隐居于此，后成仙而去，其所居之庐幻化为山，故而得名。位于九江市南36公里处，北靠长江，南傍鄱阳湖。南北长约25公里，东西宽约20公里。大部分山峰在海拔1000米以上，主峰汉阳峰海拔1474米，云中山城牯岭镇海拔约1167米。自古以“雄、险、奇、秀”而闻名于世，是我国的一座千古文化名山，世界遗产地、世界地质公园、首批国家AAAAA级旅游景区，爱国主义教育基地。</p>
                    <p>庐山旅游资源极其丰富，素以风景名山、文化名山、教育名山、宗教名山、政治名山著称于世。风景区内有16大自然奇观，474处景点，庐山的历史文化源远流长，是中国田园诗的诞生地、中国山水诗的策源地、中国山水画的发祥地。</p>
                <p>庐山雄奇秀拔，云雾缭绕，山中多飞泉瀑布和奇洞怪石，名胜古迹遍布，夏天气候凉爽宜人，是我国著名的旅游风景区和避暑疗养胜地，于1996年被列入“世界自然与文化遗产名录”。古人云“匡庐奇秀甲天下”，自司马迁将庐山载入《史记》后，历代诗人墨客相继慕名而来，陶渊明、谢灵运、李白、白居易、苏轼、王安石、陆游、徐志摩 、郭沫若等1500余位诗人相继登山，留下了许多珍贵的名篇佳作。苏轼所写的“横看成岭侧成峰，远近高低各不同。不识庐山真面目，只缘身在此山中”形象描绘了庐山的景色，成为千百年来脍炙人口的名篇。</p>
                    </div>
            </div>
        </div>
        
        <div class="mp-description-img">
            <img width="990px" height="390px" src="images/dcb.jpg" id="ImagePathx" />
            <div class="mp-description-onesentence" id="ImgDescription">含鄱口:对面为庐山最高峰“汉阳峰”，北面为第二高峰“大月山”，南面为庐山第三高峰 “五老峰”，湖光山色，相互比美。</div>
            <img width="990px" height="390px" src="images/dcbb.jpg" id="ImagePathy" />
            <div class="mp-description-onesentence">花径公园:位于牯岭街西南2公里处，相传是唐代诗人白居易咏诗《大林寺桃花》的地方。园中繁花似锦，亭台碑碣，湖光山色。</div>
            <img width="990px" height="390px" src="images/dcbbb.jpg" id="ImagePathz" />
            <div class="mp-description-onesentence">如琴湖:座落西谷，峰岭围抱，森林蓊蔚，环境幽雅。湖心立岛，岛内有许多人工饲养的孔雀，所以名为 孔雀岛,曲桥连接。</div>
            <img width="990px" height="390px" src="images/dcbbbbb.jpg" id="ImagePathv" />
            <div class="mp-description-onesentence">三叠泉:位于五老峰下部，飞瀑流经的峭壁有三级，溪水分三叠泉飞泻而下，落差共155米，极为壮观，撼人魂魄，风景优美。</div>
        </div>
        <div class="mp-descr">
          <div class="mp-description-towtxt">
            <div class="mp-descrone" id="txtFreePolicy ">
                <p>免费政策</p>
                <p>1.身高1.4米以下儿童免票；</p>
                <p>2. 70周岁以上（含70周岁）老年人凭有效证件免票；</p>
                <p> 3. 残疾人、现役军人、全国人大代表、全国政协委员、先进模范群体、省级以上媒体记者、省内市级以上媒体记者、九江本地居民凭有效证件免票。</p>
                <p> Tips庐山景区在特殊节假日对相应群体有特色的优惠、免票活动，具体参见景区公告。</p></div>
            <div class="mp-descrtwo" id="txtFavouredPolicy ">
                <p>优惠政策</p>
                <p>1、大学生凭有效证件，门票7.5折优惠；</p>
                <p>2、中学生及中等专业学校学生凭有效证件，门票半价优惠。</p>
            </div>
         </div>
        </div>
        <div name="contact" id="contact"><h2>地图交通</h2></div>
        <div class="mp-descriptio" id="txtScenicspotMap "> <!--�ٶȵ�ͼ����-->
        <div style="width:1190px;height:521px;border:#ccc solid 1px;" id="dituContent"></div>
   </div>
        <div id="mp-nearsight" class="mp-nearsight">
             <div name="about" id="about">
            <h2>同城推荐</h2>
            <h3>附近景点</h3>           
            <div class="dian1"><img src="images/1.jpg" /></div>
            <div class="dian2"><img src="images/2.jpg" /><div>
            <div class="dian3"><img src="images/3.jpg" /></div>         
            <h3>附近酒店</h3>
            <div class="dian4"><img src="images/e1.jpg" /></div> 
            <div class="dian5"><img src="images/e2.jpg" /></div> 
                </div>
        </div>

    </form>
</body>
    <script type="text/javascript">
    //�����ͳ�ʼ����ͼ������
    function initMap(){
        createMap();//������ͼ
        setMapEvent();//���õ�ͼ�¼�
        addMapControl();//���ͼ��ӿؼ�
        addMarker();//���ͼ�����marker
    }
    
    //������ͼ������
    function createMap(){
        var map = new BMap.Map("dituContent");//�ڰٶȵ�ͼ�����д���һ����ͼ
        var point = new BMap.Point(115.983888,29.651729);//����һ�����ĵ�����
        map.centerAndZoom(point,13);//�趨��ͼ�����ĵ�����겢����ͼ��ʾ�ڵ�ͼ������
        window.map = map;//��map�����洢��ȫ��
    }
    
    //��ͼ�¼����ú�����
    function setMapEvent(){
        map.enableDragging();//���õ�ͼ��ק�¼���Ĭ������(�ɲ�д)
        map.enableScrollWheelZoom();//���õ�ͼ���ַŴ���С
        map.enableDoubleClickZoom();//�������˫���Ŵ�Ĭ������(�ɲ�д)
        map.enableKeyboard();//���ü����������Ҽ��ƶ���ͼ
    }
    
    //��ͼ�ؼ���Ӻ�����
    function addMapControl(){
        //���ͼ��������ſؼ�
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //���ͼ���������ͼ�ؼ�
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //���ͼ����ӱ����߿ؼ�
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    //��ע������
    var markerArr = [{title:"欢迎来到庐山",content:"联系电话：12345678900",point:"115.995818|29.677338",isOpen:0,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
		 ];
    //����marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //����InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //����һ��Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//�����ͳ�ʼ����ͼ
    window.onload = function () {
       
        var i = 147456;

        $.post(
           "../Handler/GetimgHandler.ashx",

      {
          txtGetimgID: 147456

      },
         function (data) {
             if (data != "-1") {
                 var obj = JSON.parse(data);
                 $("#ImagePath").html(obj.browse[0].imagePath);
                 $("#ImagePathx").html(obj.browse[0].imagePathx);
                 $("#ImagePathy").html(obj.browse[0].imagePathy);
                 $("#ImagePathz").html(obj.browse[0].imagePathz);
                 $("#ImagePathv").html(obj.browse[0].imagePathv);
                 $("#ImgDescription").html(obj.browse[0].imgDescription);

                 addMarker();

                 alert("提交成功");
             }
             else {
                 var obj = JSON.parse(data);

             }
         }
   );

        $.post(
            "../Handler/SceniSpot2Handler.ashx",

       {
           txtScenics2potID: 147456,

       },
          function (data) {
              if (data != "-1") {
                  var obj = JSON.parse(data);             
                  $("#ticketsName").html(obj.browse[0].TicketsName);
                  $("#price").html(obj.browse[0].Price);
                  $("#startat").html(obj.browse[0].Startat);

                  addMarker();

                  alert("提交成功");
              }
              else {
                  var obj = JSON.parse(data);                 

              }
          }
    );
       

        $.post(
            "../Handler/SceniSpotHandler.ashx",        

       {
           txtScenicspotID: 147456,  

       },      
        function (data) {
            if (data != "-1") {
                var obj = JSON.parse(data);
                $("#attractionsName").html(obj.browse[0].AttractionsName);
                $("#attractionsSynopsis").html(obj.browse[0].AttractionsSynopsis);
                $("#attractionsAddress").html(obj.browse[0].AttractionsAddress);
                $("#ticketsName").html(obj.browse[0].TicketsName);
                $("#price").html(obj.browse[0].Price);


                $("#").html(obj.browse[0].AttractionsContact);
               
                markerArr = [{ title: obj.browse[0].AttractionsName, content: obj.browse[0].AttractionsContact, point: "115.995818|29.677338", isOpen: 0, icon: { w: 21, h: 21, l: 0, t: 0, x: 6, lb: 5 } }
                ];

               addMarker();

                alert("提交成功");
            }
            else {
                var obj = JSON.parse(data);
              // obj.data;
               
            }
        }
       );

    }
    function showJson() {

        var obj = JSON.parse('{"data":"ScenicspotID"}');
        console.log(obj.data);  // 取得的值为：this-is-json
    }

</script>

</html>
