<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#contaniner{
	position:relative;
	width:100%;
	z-index:7;
}
div{
	display:block;
}
#contents{
	clear:both;
	padding-bottom:50px;
	position:relative;
	width:980px;
	margin:0 auto;
}
div[class^="sect-"]{
	clear:both;
	zoom:1;
}
div[class^="sect-"]:after{
	content:'';
	clear:both;
	display: block;
}
dl:after, ul:after, ol:after{
	content:'';
	clear:both;
	display: block;
}
.sect-common{
	height:450px;
	margin-top:25px;
	overflow:hidden;
	width:980px;
}
.favorite-wrap {
	position:absolute;
	left:24.3%;
	width:980px;
	height:455px;
	padding:60px 53px 0;
	background:url("image/theater_bg.gif")no-repeat 0 0;
	background-size:cover;
}
.favorite-wrap .sect-city{
	height:42px;
	margin-top:18px;
	border-top:2px solid #727171;
	border-bottom:2px solid #727171;
}
.sect-city {
	height:44px;
	border-top:3px solid #241D1E;
	line-height:44px;
}
.favorite-wrap .sect-city > ul{
	position:relative;
}
.favorite-wrap .sect-city > ul > li.on .area {
	display:block;
}
.favorite-wrap .sect-city > ul .area {
	position: absolute;
	top:50px;
	left:10px;
	width:854px;
}
.favorite-wrap .sect-city > ul > li * li {
	margin:6px 25px 0 0;
}
.sect-city li {
	float:left;
	margin:0 8px;
}
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
	font-family: 'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    font-size: 100%;
    padding:0;
    border:0;
    vertical-align:baseline;
    word-break:break-all;
}
li{
	display:list-item;
	text-align:-webkit-match-parent;
}
.favorite-wrap .sect-city > ul > li * li.on > a {
	background:none;
}
.favorite-wrap .sect-city ul > li.on > a, .favorite-wrap .sect-city ul > li a:hover, .favorite-wrap .sect-city ul > li a:focus {
	color:#ffffff !important;
}
.favorite-wrap .sect-city ul > li > a {
	color:#ffffff !important;
}
.favorite-wrap .sect-city ul > li * li > a {
	color:#ffffff !important;
	position:relative;
	padding:0;
	font-size:12px;
	line-height:31px;
	text-align:left;
}
.sect-city li > a {
	display:block;
	font-weight:500;
}
a:-webkit-any-link{
	cursor:pointer;
}
ul{
	list-style:none;
}
.sect-city{
	height:44px;
	border-top:3px solid #241D1E;
	position:relative;
}
.sect-city .list{
	overflow:hidden;
}
.sect-city .list li{
	float:left;
	margin-right:14px;
}
.sect-city .list li.is_on .btn{
	font-weight:bold; color:green;
}
.sect-city .list .btn{
	font-size:13px;
}
.sect-city .area .
.sect-theater .theater-tit{
	text-align:left;
}
.sect-theater h4 {
	position:relative;
	left:470px;
	padding-top:-10px;
	padding-bottom:-20px;
}
h4{
	font-weight:500;
	display:block;
	margin-block-start:1.33em;
	margin-block-end:1.33em;
	margin-inline-start:0px;
	margin-inline-end:0px;
}
.sect-theater h4 > span {
	color:#000000;
	font-size:29px;
	font-weight:500;
	vertical-align:top;
}
.wrap-theaterinfo{
	position:relative;
}
.wrap-theaterinfo .box-image{
	padding-top:-20px;
	padding-bottom:40px;
	width:980px;
	height:420px;
}
.thumb-image{
	display:block;
	position:relative;
	left:56%;
}
.wrap-theaterinfo .box-image .thumb-image > img{
	width:980px;
	height:420px;
}
img{
	vertical-align:middle;
	overflow-clip-margin:content-box;
	overflow:clip;
}
.wrap-theaterinfo .box-contents{
	position: absolute;
	left:24.28%;
	bottom:0;
	width:980px;
	padding:20px 30px;
	background-color: rgba( 0, 0, 0, 0.8 );
}
.wrap-theaterinfo .theater-info{
	position:relative;
	float: left;
	width:608px;
}
.wrap-theaterinfo .theater-info .title {
	padding-top:10px;
	text-align:left;
	width:400px;
	color:#fdfcf0;
	font-size:13px;
	text-overflow:initial;
	white-space:initial;
}
.title{
	display:block;
	overflow:hidden;
}
strong{
	text-align:left;
	font-weight:500;
}
.wrap-theaterinfo .theater-info .title > a{
	display:inline-block;
	margin-left:10px;
	color:#b1b1ab;
	font-size:11px;
}
a{
	text-decoration:none;
}
a:-webkit-any-link{
	cursor:pointer;
}
.wrap-theaterinfo .theater-info .txt-info{
	float:left;
	width:409px;
	height:70px;
	padding-top:14px;
	color:#fdfcf0;
	line-height:1.6;
}
.txt-info{
	display:block;
	font-size:12px;
}
.wrap-theaterinfo .theater-info .txt-info > em {
	display:block;
	width:100%;
	white-space:nowrap;
	text-overflow:ellipsis;
	overflow:hidden;
}
em{
	text-align:left;
	font-style:normal;
}
dl:after, ul:after, ol:after {
    content: '';
    clear: both;
    display: block;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$("li").click(function(){
	if($(this).hasClass("on")){
		$(this).children().css("display","none");
		$(this).removeClass();
	}else{
		$(this).addClass("on");
		$(this).children().css("display"."block");
	}
});
</script>
</head>
<body style="height:100%;">
<div id="cgvwap">
<div id="contaniner">
<div id="content">
	<div class="sect-common">
		<div class="favorite-wrap">
			<div class="sect-city">
				<ul>
					<li class="on">
						<a href="#">서울</a>
						<div class="area">
						<ul>
						<li class="on">
						<a title="CGV강남" href="http://localhost:8787/ysys/theaterin#"class="btn">CGV강남</a></li>
						<li><a title="CGV강변" href="http://localhost:8787/ysys/theaterin2#"class="btn">CGV강변</a></li>
						<li><a title="CGV건대입구" href="http://localhost:8787/ysys/theaterin3#"class="btn">CGV건대입구</a></li>
						<li><a title="CGV구로" href="http://localhost:8787/ysys/theaterin4#"class="btn">CGV구로</a></li>
						<li><a title="CGV대학로" href="http://localhost:8787/ysys/theaterin5#"class="btn">CGV대학로</a></li>
						</ul>
						</div>
					</li>
					<li class="">
						<a href="#">경기</a>
						<div class="area">
						<ul>
						<li><a title="CGV경기광주" href="http://localhost:8787/ysys/theaterin6#"class="btn">CGV경기광주</a></li>
						<li><a title="CGV고양행신" href="http://localhost:8787/ysys/theaterin7#"class="btn">CGV고양행신</a></li>
						<li><a title="CGV광교" href="http://localhost:8787/ysys/theaterin8#"class="btn">CGV광교</a></li>
						<li><a title="CGV광교상현" href="http://localhost:8787/ysys/theaterin9#"class="btn">CGV광교상현</a></li>
						<li><a title="CGV광명역" href="http://localhost:8787/ysys/theaterin10#"class="btn">광명역</a></li>
						</ul>
						</div>
					</li>
					<li class="">
						<a href="#">인천</a>
						<div class="area">
						<ul>
						<li><a title="CGV계양" href="http://localhost:8787/ysys/theaterin11#"class="btn">CGV계양</a></li>
						<li><a title="CGV남주안" href="http://localhost:8787/ysys/theaterin12#"class="btn">CGV남주안</a></li>
						<li><a title="CGV부평" href="http://localhost:8787/ysys/theaterin13#"class="btn">CGV부평</a></li>
						<li><a title="CGV송도타임스페이스" href="http://localhost:8787/ysys/theaterin14#"class="btn">CGV송도타임스페이스</a></li>
						<li><a title="CGV연수역" href="http://localhost:8787/ysys/theaterin15#"class="btn">CGV연수역</a></li>
						</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="wrap-theater">
		<h3><img src="image/h3_theater.gif" alt="THEATER"></h3>
		<div class="sect-theater">
			<h4 class="theater-tit"><span>CGV강남</span></h4>
			<div class="wrap-theaterinfo">
				<div class="box-image">
					<div id="theater_img_container" class="thumb-image" align="center">
					<img src="image/CGVgangnam.jpg" alt="CGV강남 극장" >
					</div>
				</div>
				<div class="box-contents">
					<div class="theater-info">
						<strong class="title">
							"서울특별시 강남구 역삼동 814-6 스타플렉스"
							<br>
							"서울특별시 강남구 강남대로 438 (역삼동)"
							<a href="http://localhost:8787/ysys/map#">위치/주차 안내</a>
						</strong>
						<span class="txt-info">
							<em>1544-1122</em>
							<em>6관 / 874석</em>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>


</body>
</html>
