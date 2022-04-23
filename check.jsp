<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<% 
String email=request.getParameter("email");  

	if(email!=null) 
	{
        try
        {
        	Class.forName("com.mysql.jdbc.Driver");

			Connection con=DriverManager.getConnection("jdbc:mysql://192.168.57.5:3306/NT02484","yogesh.sapkal","pass@123");
 
            PreparedStatement pstmt=con.prepareStatement("select * from user where email=? "); 
            pstmt.setString(1,email);
            ResultSet rs=pstmt.executeQuery(); 
            
            if(rs.next())               
            {  
                %>
                <h6>Email Already Exists !</h6>
                <%
            }

            con.close(); //close connection
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
}
else
{ %>

<h3>Email is null</h3>	

<%}

%>
</body>
</html>