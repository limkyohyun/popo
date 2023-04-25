<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
#container {
	border: 1px slid #bcbcbc;
}
#header {
	text-align: center;
	width: 100%;
	height: 300px;
}
#nav {
	width: 100%;
	height: 300px;
}
#body {
	text-align: center;
	width: 100%;
	padding-top:0px;
	padding-bottom: 200px;
}
#footer {
       position: relative;
	bottom:0px;
	width: 100%;
	text-align: center;
	font-size: 20px;
	line-height: 30px;
	height: 500px;
	background-color: #F8F8F8;
	color:black;
}
th,td{
	text-align: center;
}
</style>
<meta charset="UTF-8">
<title><t:insertAttribute name="title"/></title>
</head>
<body>
	<div id="container">
		<div id="top">
			<t:insertAttribute name="top"/>
		</div>
		<div id="body">
			<t:insertAttribute name="body"/>
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		</div>
		<div id="footer">
		&emsp;
		&emsp;
		&emsp;
		&emsp;
		&emsp;
		&emsp;
			<t:insertAttribute name="footer"/>
		</div>
	</div>
</body>
</html>