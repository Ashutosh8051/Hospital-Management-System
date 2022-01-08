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
		Long id =Long.parseLong(request.getParameter("t1"));
		String service=request.getParameter("t_name");
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String date=request.getParameter("date");
		String age=request.getParameter("age");
		String blood=request.getParameter("opt");
		String gender =request.getParameter("opt1");
		String address=request.getParameter("Address");
		if(id!=0 && (service!=null && service!="") && (name!=null && name!="") && (phone!=null && phone!="") && (date!=null && date!="") && (age!=null && age!="") && (blood!=null && blood!="") && (gender!=null && gender!="") && (address!=null && address!="")){
			//
			String sql = "update Services set Service='"+service+"', Name='"+name+"', Phone='"+phone+"', Date='"+date+"', Age='"+age+"', Blood='"+blood+"',Gender='"+gender+"', Address='"+address+"' where  Patient_no='"+id+"'";
			
			//String sql="update table Services(Service,Name,Phone,Date,Age,Blood,Gender,Address) set values = '"+service+"','"+name+"','"+phone+"','"+date+"','"+age+"','"+blood+"','"+gender+"','"+address+"' where  Patient_no='"++"'";
			PreparedStatement pst= con.prepareStatement(sql);
			int i=pst.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("service.jsp");
			}
		}
		
	}
	catch(Exception e)
	{
		//out.println(e);
		
		
	}
	%>
</body>
</html>