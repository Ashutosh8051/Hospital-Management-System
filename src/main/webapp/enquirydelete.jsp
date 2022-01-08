<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/Hospital","root","Ashutosh@8051");
	long id = Long.parseLong(request.getParameter("num"));
	String sql = "delete from enquiry where Mobile='"+id+"'";
		PreparedStatement pst= con.prepareStatement(sql);
		int i=pst.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("enquiry.jsp");
		}
		
	
}
catch(Exception e)
{
	out.println(e);
	
	
}


%>
</body>
</html>