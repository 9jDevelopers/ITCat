<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="iTCat.Index.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>XXX旅游网</title>
    <link href="../Public/css/themes/default/easyui.css" rel="stylesheet" />
    <link href="../Public/css/themes/icon.css" rel="stylesheet" /> 
    <link href="../Public/css/demo.css" rel="stylesheet" /> 

    <!-- Bootstrap-->
    <link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
    <!--#include virtual="../Nav/nav.html" -->

    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div id="carousel1" class="carousel slide">
                    <ol class="carousel-indicators">
                        <li data-target="#carousel1" data-slide-to="0" class="active"> </li>
                        <li data-target="#carousel1" data-slide-to="1" class=""> </li>
                        <li data-target="#carousel1" data-slide-to="2" class=""> </li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item">
                            <img class="img-responsive" src="../Management/NewAttractions/img/115346.jpg" alt="thumb" width="1920" height="400">
                            <div class="carousel-caption"></div>
                        </div>
                        <div class="item active">
                            <img class="img-responsive" src="../Management/NewAttractions/img/177434.jpg" alt="thumb" width="1920" height="400">
                            <div class="carousel-caption"></div>
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="../Management/NewAttractions/img/465162.jpg" alt="thumb" width="1920" height="400">
                            <div class="carousel-caption"></div>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#carousel1" data-slide="prev"><span class="icon-prev"></span></a> <a class="right carousel-control" href="#carousel1" data-slide="next"><span class="icon-next"></span></a>
                </div>
            </div>
        </div>
        <hr>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                <div class="row">
                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-2"><img class="img-circle" alt="Free Shipping" src="img/40X40.gif"></div>
                    <div class="col-lg-6 col-md-9 col-sm-9 col-xs-9">
                        <h4>著名景点</h4>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                <div class="row">
                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-2"><img class="img-circle" alt="Free Shipping" src="img/40X40.gif"></div>
                    <div class="col-lg-6 col-md-9 col-sm-9 col-xs-9">
                        <h4>附近景点</h4>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                <div class="row">
                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-2"><img class="img-circle" alt="Free Shipping" src="img/40X40.gif"></div>
                    <div class="col-lg-6 col-md-9 col-sm-9 col-xs-9">
                        <h4>低价景点</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr/>
    <h2 class="text-center">景点展示</h2>
    <hr/>
<%--        <table id="datagrid"></table>--%>

            <div class="container">
        <div class="row text-center">
            <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                <div class="thumbnail">
                    <img id="image0" src="" alt="Thumbnail Image 1" class="ImgIndex">
                    <div class="caption">
                        <h3 id="AttractionsName0"></h3>
                        <p id="AttractionsSynopsis0"></p>
                        <p><a id="http0" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>查看详情</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                <div class="thumbnail">
                    <img id="image1" src="" alt="Thumbnail Image 1" class="ImgIndex">
                    <div class="caption">
                        <h3 id="AttractionsName1"></h3>
                        <p id="AttractionsSynopsis1"></p>
                        <p><a id="http1" href="#" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>查看详情</a> </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
                <div class="thumbnail">
                    <img id="image2" src="" alt="Thumbnail Image 1" class="ImgIndex">
                    <div class="caption">
                        <h3 id="AttractionsName2"></h3>
                        <p id="AttractionsSynopsis2"></p>
                        <p><a id="http2" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>查看详情</a> </p>
                    </div>
                </div>
            </div>

            <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6 hidden-lg hidden-md hidden-sm">
                <div class="thumbnail">
                    <img src="" alt="Thumbnail Image 1" class="ImgIndex">
                    <div class="caption">
                        <h3></h3>
                        <p></p>
                        <p><a href="#" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>查看详情</a></p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row text-center hidden-xs">
            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                <div class="thumbnail">
                    <img id="image3" src="" alt="Thumbnail Image 1" class="ImgIndex">
                    <div class="caption">
                        <h3 id="AttractionsName3"></h3>
                        <p id="AttractionsSynopsis3"></p>
                        <p><a id="http3" href="#" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>查看详情</a> </p>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                <div class="thumbnail">
                    <img id="image4" src="" alt="Thumbnail Image 1" class="ImgIndex">
                    <div class="caption">
                        <h3 id="AttractionsName4"></h3>
                        <p id="AttractionsSynopsis4"></p>
                        <p><a  id="http4" href="#" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>查看详情</a> </p>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                <div class="thumbnail">
                    <img id="image5" src="" alt="Thumbnail Image 1" class="ImgIndex">
                    <div class="caption">
                        <h3 id="AttractionsName5"></h3>
                        <p id="AttractionsSynopsis5"></p>
                        <p><a id="http5" href="#" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>查看详情</a> </p>
                    </div>
                </div>
            </div>
        </div>
        <nav class="text-center">
            <!-- Add class .pagination-lg for larger blocks or .pagination-sm for smaller blocks-->
            <ul class="pagination">
                <li> <a href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span> </a> </li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li class="disabled"><a href="#">5</a></li>
                <li> <a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span> </a> </li>
            </ul>
        </nav>
    </div>
    <hr/>
    <hr/>
        <!--#include virtual="../Nav/bottom.html" -->

    <script src="js/jquery-1.11.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="../Public/js/jquery-2.2.3.js"></script>
    <script src="../Public/js/jquery.easyui.min.js"></script> 
    <script src="js/Index.js"></script>
    <script src="../Nav/nav.js"></script>


</body>
</html>