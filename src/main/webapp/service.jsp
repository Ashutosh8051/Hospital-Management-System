<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/admin.css">
    <script src="https://kit.fontawesome.com/0268b97b3e.js" crossorigin="anonymous"></script>
    <title>Max 24x7 Admin/Appointment</title>
</head>
<body>
    <div class="container">
        <div class="bg">
            <img src="images/Service.jpg" alt="">
            <div class="b_overlay"></div>
            <div class="tablecontainer">
                <div class="table div-center">
                    <table class="table-container">

            <%
	try
{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/Hospital","root","Ashutosh@8051");
		
			String sql="select * from services";
			PreparedStatement pst= con.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			%>
		
			
			               <thead>
                            <tr>
                                <th>Patient Id</th>                            
                                <th>Services</th>
                                 <th>Name</th>
                                <th>Phone</th>
                                  <th>Date</th>
                                <th>Age</th>
                                <th>Blood Group</th>
                                <th>Gender</th>
                                <th>Address</th>
                                <th>Edit</th>
                                <th>Delete</th>
                                <div class="table div-center">
                       
			<%
			while(rs.next())
			{
				int num = rs.getInt(1);
				%>
	                        <tbody>
                            <tr>
                     			 	  <td><%= rs.getString(1)%></td>
                                     <td><%= rs.getString(2)%></td>
                                      <td><%= rs.getString(3)%></td>
                                       <td><%= rs.getString(4)%></td>
                                        <td><%= rs.getString(5)%></td>
                                         <td><%= rs.getString(6)%></td>
                                          <td><%= rs.getString(7)%></td>
                                           <td><%= rs.getString(8)%></td>
                                           <td><%= rs.getString(9)%></td>
                                     	<td><a href="serviceedit.jsp?num=<%=num %>" class="edit"><i class="fas fa-pen-square"></i></a></td>     
                              		<td><a href="servicedelete.jsp?num=<%=num %>" class="delete"><i class="fas fa-trash-alt"></i></a></td>
                       
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