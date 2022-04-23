<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/style.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>
	<div class="navbar">
		<div class="wrapper">
			<div class="mainbar">
				<div class="navbar">
					<img src="images/logo.png" alt="logo" width="240px" height="100%">
					<div class="nav-btns">
						<a class="username"><% out.println(session.getAttribute("email")); %></a> 
						<a href="LogoutServlet" class="logout">LOGOUT</a>
					</div>
					<div class="clear:both"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>