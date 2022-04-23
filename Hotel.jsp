<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/style.css" rel="stylesheet" type="text/css">
<title>Hotel Page</title>
</head>
<body>
	<div class="main">
		<%@include file="Header.jsp"%>
		<br>
		<h3 class="widget-title">Hotels Near You..!!!!</h3>
		<div class="box">
			<div class="pimg">
				<img src="images/f2.webp" height="185px" width="185px">
			</div>
			<div class="main-price">
				<div>
					<br>
					<h1>Krishna Veg</h1>
					<br>
					<h3>Pure Veg Restaurant</h3>
					<br>
				</div>
			</div>
			<div class="button">
				<a href="Menu.jsp">
					<button>Show Menu</button>
				</a>
			</div>
			<div style="clear: both"></div>
		</div>
		<div class="fdiv">
			<%@include file="Footer.jsp"%>
		</div>
	</div>
</body>
</html>