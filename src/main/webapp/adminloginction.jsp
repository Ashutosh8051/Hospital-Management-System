  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%		
		String email=request.getParameter("email");
		String password=request.getParameter("pass");

		if("admin@gmail.com".equals(email) && "MAX24x7".equals(password))
		{	
			response.sendRedirect("admin.jsp");
		}
%>
</body>
</html>