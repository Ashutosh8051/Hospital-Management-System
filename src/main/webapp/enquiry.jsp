<!DOCTYPE html>
<html lang="en">
  <%@page import="java.sql.*" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/admin.css">
    <script src="https://kit.fontawesome.com/0268b97b3e.js" crossorigin="anonymous"></script>
    <title>Max 24x7 Admin/Enquiry</title>
</head>
<body>
    <div class="container">
        <div class="bg">
            <img src="images/enquiry.jpg" alt="">
            <div class="b_overlay"></div>
            <div class="tablecontainer">
                <div class="table div-center">
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
				long num = rs.getLong(2);
				%>
	                        <tbody>
                            <tr>
                     			 	  <td><%= rs.getString(1)%></td>
                                     <td><%= num%></td>
                                      <td><%= rs.getString(3)%></td>
                              		<td><a href="enquirydelete.jsp?num=<%=num %>" class="delete"><i class="fas fa-trash-alt"></i></a></td>
                       
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
                    <a href="admin.jsp" class="page1 m-l m-r1">Emergency</a>
                    <a href="service.jsp" class="page2">Service</a>
                </div>
                <div class="logout d-flex items-center">
                    <a href="index.jsp" class="btn-light m-r">Logout</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>