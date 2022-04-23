<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/style.css" rel="stylesheet" type="text/css">
<title>Menu Page</title>
</head>
<body>

<%@page import="bean.MenuBean" %>
<%@page import="dao.MenuDao" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@include file="Header.jsp"%>

<h3 class="widget-title">Menu for you..!!!!</h3>
<br>
<form action="CalServlet" method="post" style="margin-bottom: 50px";>

	<%!
	MenuDao dao = new MenuDao();
	String sql = "select * from menu where isActive='Y';";
	
	public String removeSpaces(String s1) 
	{
		String s2 = s1.replaceAll(" ", "_");
		return s2;
	}%>
		<%List list = dao.getAllProducts(sql);%>
		
		<div align="center">
			<table border='1' width='100%'>
				<thead>
					<tr>
						<td>Item Name</td>
						<td>Details</td>
						<td>Price</td>
						<td>Add to cart</td>
						<td>No of Items</td>
					</tr>
				</thead>
		<%
		for(int i=0;i<list.size();i++)	 
			{
				MenuBean s=(MenuBean) list.get(i);
				out.print("<tbody>");
				out.print("<tr>");
				out.print("<td>" + s.getMname() + "</td>");
				out.print("<td>" + s.getMdetails() + "</td>");
				out.print("<td>" + s.getMprice() + "</td>");
				

				String sName = removeSpaces(s.getMname());

				out.print("<td><input type='checkbox' name='selectedProducts' value=" + sName + "></td>");
				out.print("<td><input type='number' name="+sName+" size=1.5 value='0' min='0' max='5'></td>");

				out.print("</tr>");
				out.print("</tbody>");
			}
		%>
		</table>
	</div>
	<br>
	<input type="submit" value="Add To Cart" class="loginbutton">
	<br> 
	<input type="reset" value="Reset" class="loginbutton">
</form>
<%@include file="Footer.jsp"%>
</body>
</html>