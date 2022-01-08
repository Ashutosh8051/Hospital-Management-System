<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<%
	try
{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/Hospital","root","Ashutosh@8051");
		
			String sql="select * from enquiry";
			PreparedStatement pst= con.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			%>
		
			
			 <table class="table-container">
                        <thead>
                            <tr>
                            
                                <th>Name</th>
                                <th>Phone</th>
                                <th>Query</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                       
			<%
			while(rs.next())
			{
				%>
				 <table class="table-container">
	                        <thead>
				
	                        <tbody>
                            <tr>
               					
                           			 <td><%= rs.getString(1)%></td>
                                     <td><%= rs.getString(2)%></td>
                                      <td><%= rs.getString(3)%></td>
                                  		 <td><a href="#">Delete</a></td>
                                
                                <td><a href="" class="delete"><i class="fas fa-trash-alt"></i></a></td>
                            </tr>
	                        
                        </tbody>
                    </table>
                	<%  
			}
			
}
catch(Exception e)
{
	out.println(e);
}

%> 



</body>
</html>