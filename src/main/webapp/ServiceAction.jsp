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
		String service=request.getParameter("t_name");
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String date=request.getParameter("date");
		String age=request.getParameter("age");
		String blood=request.getParameter("opt");
		String gender =request.getParameter("opt1");
		String address=request.getParameter("Address");
			String sql="insert into Services(Service,Name,Phone,Date,Age,Blood,Gender,Address) values ('"+service+"','"+name+"','"+phone+"','"+date+"','"+age+"','"+blood+"','"+gender+"','"+address+"')";
			//String sql="insert into candidate(first_name,last_name,father_name,dob,state,city,party_name,address,email,contact_no,pin_code,username,gender,password,confirmpassword,election_region,securityQuestion,securityAnswer) values('Ashutosh','kumar','Panchanand Choudhary',25-20-2001,'Aa','hjsh','Bjp','ajaj','hjh',121,128,'jaj','sss','www','aaa','asa','ete','hsh')";
			PreparedStatement pst= con.prepareStatement(sql);
			int i=pst.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("appointmentform.jsp");
			}
			
		
	}
	catch(Exception e)
	{
		//out.println(e);
		
		
	}
	%>
</body>
</html>