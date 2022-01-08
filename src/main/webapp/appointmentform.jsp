<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/homepagestyle.css">
    <script src="https://kit.fontawesome.com/0268b97b3e.js" crossorigin="anonymous"></script>
    <title>Max 24x7 Book-Appointment</title>
</head>
<body>
    <div class="container">
        <div class="appointment">
            <div class="polyogon"></div>
            <a href="index.jsp" class="cancel"><i class="fas fa-times div-center"></i></a>
                <div class="appointmentform">
                    <div class="formbox div-center">
                        <form action="ServiceAction.jsp" method="post" class=" form d-flex items-center">
                        <%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/Hospital","root","Ashutosh@8051");
	int id = Integer.parseInt(request.getParameter("num"));
	String sql = "select * from service where id='"+id+"'";
		PreparedStatement pst= con.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		while(rs.next()){
			
%>
                           <div class="treatement">
                                <label for="t_name">Service <span style="color: red;">*</span></label>
                                <input type="text" name="t_name" id="t_name" autocomplete="off" value="<%=rs.getString(3) %>" readonly>
                                <p class="errormsg">Enter valid name</p>
                            </div>
                            <%
}
		
	
}
catch(Exception e)
{
	//out.println(e);
	
	
}


%>
                            <div class="name">
                                <label for="name">Name <span style="color: red;">*</span></label>
                                <input type="text" name="name" id="name" placeholder="Full Name" autocomplete="off" required>
                                <p class="errormsg">Enter valid name</p>
                            </div>
                            <div class="phone">
                                <label for="phone">Phone Number <span style="color: red;">*</span></label>
                                <input type="tel" name="phone" id="phone" placeholder="Phone Number/Mobile Number" autocomplete="off" required>
                                <p class="errormsg">Enter valid phone number</p>
                            </div>
                            <div class="phone">
                                <label for="phone">Date <span style="color: red;">*</span></label>
                                <input type="date" name="date" id="phone" placeholder="Phone Number/Mobile Number" autocomplete="off" required>
                                <p class="errormsg">Enter the Date</p>
                            </div>
                            <div class="age">
                                <label for="age">Age <span style="color: red;">*</span></label>
                                <input type="tel" name="age" id="age" placeholder="Enetr your age" autocomplete="off" required>
                                <p class="errormsg">Age entered is not correct</p>
                            </div>
                            <div class="dropdown">
                                <label for="opt">Blood Group <span style="color: red;">*</span></label>
                                <select name="opt" id="opt" required>
                                    <option value="" selected hidden>--Select--</option>
                                    <option value="A+">A+</option>
                                    <option value="B+">B+</option>
                                    <option value="O+">O+</option>
                                    <option value="AB+">Ab+</option>
                                    <option value="A-">A-</option>
                                    <option value="B-">B-</option>
                                    <option value="O-">O-</option>
                                    <option value="AB-">AB-</option>
                                </select>
                            </div>
                            <div class="dropdown">
                                <label for="opt">Gender <span style="color: red;">*</span></label>
                                <select name="opt1" id="opt" required>
                                    <option value="" selected hidden>--Select--</option>
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                    <option value="others">Others</option>
                                </select>
                            </div>
                            <div class="Address">
                                <label for="Address">Address <span style="color: red;">*</span></label>
                                <input type="text" name="Address" id="Address" placeholder="Enter your Address" autocomplete="off" required>
                            </div>
                            <div class="submit">
                                <button type="submit" class="div-center" onclick="appointment()">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
    </div>
</body>
</html>