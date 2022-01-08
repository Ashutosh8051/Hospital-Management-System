<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*"%>
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
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/Hospital","root","Ashutosh@8051");
		String name=request.getParameter("name");
		String mobile=request.getParameter("phone");
		String enquiry=request.getParameter("query");

			String sql="insert into Enquiry values('"+name+"','"+mobile+"','"+enquiry+"')";
			//String sql="insert into candidate(first_name,last_name,father_name,dob,state,city,party_name,address,email,contact_no,pin_code,username,gender,password,confirmpassword,election_region,securityQuestion,securityAnswer) values('Ashutosh','kumar','Panchanand Choudhary',25-20-2001,'Aa','hjsh','Bjp','ajaj','hjh',121,128,'jaj','sss','www','aaa','asa','ete','hsh')";
			PreparedStatement pst= con.prepareStatement(sql);
			int i=pst.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("index.jsp#enquiry");
			}
			else
			{
				response.sendRedirect("index.jsp#enquiry");
			}
		
	}
	catch(Exception e)
	{
		out.println(e);
		
		
	}
	%>
</body>
</html>