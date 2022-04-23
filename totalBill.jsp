<%@page import="java.util.ArrayList"%>
<%@page import="bean.MenuBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/style.css" rel="stylesheet" type="text/css">
<title>Total Bill Page</title>
</head>
<body>
<%@include file="Header.jsp"%>
<% ArrayList al= (ArrayList)request.getAttribute("data");
		int total=0;
		for(int i = 0 ; i < al.size() ; i++)
		{
			MenuBean menuBean = (MenuBean)al.get(i);
			total=total+menuBean.getMprice()*menuBean.getQuantity();
		}
%>
<div align="center"><br>
	<h3>: Your Bill Details :</h3>
	<table border='1' width='100%'>
		<thead>
			<tr>
				<td> Item Name </td>
				<td> Item Details </td>
				<td> Price </td>
				<td> Quantity </td>
			</tr>
		</thead>
		<%
			for(int j=0;j< al.size() ; j++)
			{
				MenuBean menuBean = (MenuBean)al.get(j);
				out.print("<tbody>");
				out.print("<tr>");
				out.print("<td>"+menuBean.getMname()+"</td>");
				out.print("<td>"+menuBean.getMdetails()+"</td>");
				out.print("<td>"+menuBean.getMprice()+"</td>");
				out.print("<td>"+menuBean.getQuantity()+"</td>");
				out.print("</tr></tbody>");
			}
		%>	
	</table><br>
			<h2>Total Bill Amount is : <%= total %> Rs. Only/-</h2><br><br>
			
			<h1>Thank You ... Visit Again !!</h1><br><br>
</div>
<%@include file="Footer.jsp"%>
</body>
</html>