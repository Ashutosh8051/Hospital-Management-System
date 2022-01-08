<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/admin.css">
    <script src="https://kit.fontawesome.com/0268b97b3e.js" crossorigin="anonymous"></script>
    <title>Max 24x7 Admin/Emergency</title>
</head>
<body>
    <div class="container">
        <div class="bg">
            <img src="images/Emergency.jpg" alt="">
            <div class="b_overlay"></div>
            <div class="tablecontainer">
                <div class="table div-center">
                    <table class="table-container">
                                <div class="table div-center">
            <%
	try
{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/Hospital","root","Ashutosh@8051");
		
			String sql="select * from emergency";
			PreparedStatement pst= con.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			%>
		
			
			 <table class="table-container">
                        <thead>
                            <tr>
                            	<th>Emergency Number</th>
                                <th>Emergency</th>
                                <th>Name</th>
                                <th>Mobile</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                       
			<%
			while(rs.next())
			{
				long num = rs.getLong(1);
				%>
	                        <tbody>
                            <tr>
                     			 	  <td><%= rs.getString(1)%></td>
                                     <td><%= rs.getString(2)%></td>
                                      <td><%= rs.getString(3)%></td>
                                      <td><%= rs.getString(4)%></td>
                              		<td><a href="emergencydelete.jsp?num=<%=num %>" class="delete"><i class="fas fa-trash-alt"></i></a></td>
                       
                         	<%  
			}
       	 %>
            </tr> 
        </tbody>
    </table>
    <%
			
}
catch(Exception e)
{
	out.println(e);
}

%> 
                    
                </div>
            </div>
            <div class="navigations d-flex">
                <div class="pages d-flex items-center">
                    <a href="service.jsp" class="page1 m-l m-r1">Service</a>
                    <a href="enquiry.jsp" class="page2">Enquiry</a>
                </div>
                <div class="logout d-flex items-center">
                    <a href="index.jsp" class="btn-light m-r">Logout</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>