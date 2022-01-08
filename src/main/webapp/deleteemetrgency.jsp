<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		

	<%
	
		try
		{	
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Hospital","root","Ashutosh@8051");   
			int id=Integer.parseInt(request.getParameter("t1"));
       		 String sql = "delete from voter where voter_id = '"+id+"'";
        	 PreparedStatement pst = con.prepareStatement(sql);
        	 int i= pst.executeUpdate();
	         	if(i>0)
				{
	            	response.sendRedirect("deletedsucessfully.jsp");
				}
   
			else
			{
				response.sendRedirect("searchnotfound.jsp");
			}
		}
		catch(Exception e)
		{
			//e.printStackTrace();
		//out.println(e);
		}
		
		
	%>
</body>
</html>