<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/homepagestyle.css">
    <script src="https://kit.fontawesome.com/0268b97b3e.js" crossorigin="anonymous"></script>
    <title>Max 24x7</title>
</head>
<body>
    <div class="container">
        <header>
            <!-- navigation links -->
            <nav class="d-flex items-center">
                <div class="logo_ham d-flex items-center">
                    <h3 class="m-l">Max 24x7</h3>
                </div>
                <div class="nav_links d-flex items-center">
                    <a href="index.jsp">Home</a>
                    <a href="#about">About</a>
                    <a href="#features">Features</a>
                    <a href="#services">Services</a>
                    <a href="#enquiry">Enquiry</a>
                    <a href="#contact">Contact</a>
                </div>
                <div class="emergency d-flex items-center">
                    <a href="emergency.jsp" class="m-r">Emergency</a>
                </div>
            </nav>
            <!-- navigation links -->

            <!-- home body  -->
            <div class="home_body">
                <img src="images/max_bg.jpg" alt="...">
                <div class="b_overlay"></div>
                <div class="home_container d-flex">
                    <div class="left_box">
                        <div class="white_box">
                            <div class="border1">
                                    <img src="images/doctor.png" alt="">
                            </div>
                            <div class="doctorsquote d-flex">
                                <i class="fas fa-quote-left"></i>
                                <p class="quote1">After you find out all the things that can go wrong,</p>
                                <p class="quote2">your life becomes less about living and more about waiting</p>
                                <i class="fas fa-quote-right"></i>
                            </div>
                        </div>
                    </div>
                    <div class="right_box">
                        <div class="home_text_container d-flex items-center">
                            <h3>Health Is Real Wealth</h3>
                            <div class="blood">
                                <img src="images/heart.gif" alt="...">
                            </div>
                            <h2>WE CARE FOR EVERY LIFE</h2>
                        </div>
                    </div>
                </div>
            </div>
            <!-- home body  -->
        </header>

        <!-- about section -->
        <section id="about" class="about d-flex">
            <div class="heading">
                <h1>About Us</h1>
            </div>
            <div class="aboutcontainer d-flex">
                <div class="aboutimg">
                    <div class="greenbg">
                        <img src="images/Team-of-Doctors.jpg" alt="">
                    </div>
                </div>
                <div class="abouttext d-flex items-center">
                    <p>MAX 24x7 Group has over two decades of experience in the healthcare sector,</p>
                    <p> and is known for providing quality healthcare and valuable experience to all domestic and international patients.</p>
                    <p>Our healthcare offerings are supported by a team of </p>
                    <p>compassionate and dedicated medical professionals who have rich knowledge and experience in their respective domains.</p>
                    <h2>Healthcare Landmark</h2>
                    <p>MAX 24x7 Hospital, a healthcare landmark, has been a household name to more than 50 million Indians.
                    </p>
                    <p>We currently have branches in Mumbai and Visakhapatnam.</p>
                </div>
            </div>
        </section>
        <!-- about section -->
        <!-- features section -->
        <section id="features" class="features d-flex">
            <div class="heading">
                <h1>Features</h1>
            </div>
            <div class="featurescontainer d-flex">
                <div class="div d-flex items-center">
                    <div class="iconbox d-flex">
                        <div class="ambulance">
                            <div class="icon">
                                <i class="fas fa-ambulance"></i>
                            </div>
                        </div>
                        <div class="icontext">
                            <h3>24x7 Ambulance Available</h3>
                        </div>
                    </div>
                </div>
                <div class="div d-flex items-center">
                    <div class="iconbox d-flex">
                        <div class="ambulance">
                            <div class="icon">
                                <i class="fas fa-lightbulb"></i>
                            </div>
                        </div>
                        <div class="icontext">
                            <h3>24x7 Emergency Service</h3>
                        </div>
                    </div>
                </div>
                <div class="div d-flex items-center">
                    <div class="iconbox d-flex">
                        <div class="ambulance">
                            <div class="icon">
                                <i class="fas fa-briefcase-medical"></i>
                            </div>
                        </div>
                        <div class="icontext">
                            <h3>ICU Trauma Care</h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- features section -->
        <!-- service -->
        <section id="services" class="services d-flex">
            <div class="heading">
                <h1>Services</h1>
            </div>
            <div class="servicescontainer d-flex">
                <div class="servicescontainer1 d-flex items-center">
                            <%
	try
{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/Hospital","root","Ashutosh@8051");
		
			String sql="select * from service";
			PreparedStatement pst= con.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next()){
				int num = rs.getInt(1);
			%>
                    <div class="service1"><a href="appointmentform.jsp?num=<%=num %>" class="servicelink">
                        <img src="images/<%= rs.getString(2) %>" alt="" class="serviceimg">
                        <div class="caption d-flex">
                            <p class="div-center"><%= rs.getString(3) %></p>
                        </div>
                    </a>
                    </div>
<%
			}
}
catch(Exception e)
{
	out.println(e);
}

%> 
                </div>
            </div>
        </section>
        <!-- service -->

        <!-- enquiry section -->
        <section id="enquiry" class="enquiry">
            <div class="polyogon"></div>
            <div class="heading">
                <h1>Enquiry</h1>
            </div>
            <div class="formcontainer">
                <div class="formbox div-center">
                    <form action="enquiryaction.jsp" method="post" class=" form d-flex items-center">
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
                        <div class="query">
                            <label for="query">Your Query <span style="color: red;">*</span></label>
                            <input type="text" name="query" id="query" placeholder="Enter your query" autocomplete="off" required>
                        </div>
                        <div class="submit">
                            <button type="submit" class="div-center" onclick="enquiry()">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <!-- enquiry section  -->
        <!-- contact section  -->
        <footer class="d-flex" id="contact">
            <div class="contact d-flex">
                <div class="socialmedia d-flex items-center">
                    <div class="fb d-flex">
                        <a href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook-square"></i></a> <a href="https://www.facebook.com/" target="_blank">Facebook</a>
                    </div>
                    <div class="insta d-flex">
                        <a href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram-square"></i></a> <a href="https://www.instagram.com/" target="_blank">Instagram</a>
                    </div>
                    <div class="tweet d-flex">
                        <a href="https://twitter.com/" target="_blank"><i class="fab fa-twitter-square"></i></a> <a href="https://twitter.com/" target="_blank">Twitter</a>
                    </div>
                    <div class="tweet d-flex">
                        <a href="https://www.youtube.com/" target="_blank"><i class="fab fa-youtube-square"></i></a> <a href="https://www.youtube.com/" target="_blank">You Tube</a>
                    </div>
                    <div class="admin d-flex">
                        <a href="login.jsp"><i class="fas fa-user-lock"></i></a> <a href="login.jsp">Admin</a>
                    </div>
                </div>
                <div class="quicklinks d-flex items-center">
                    <a href="index.jsp">Home</a>
                    <a href="#about">About</a>
                    <a href="#features">Features</a>
                    <a href="#services">Services</a>
                    <a href="#enquiry">Enquiry</a>
                    <a href="mailto: contact@gmail.com">contact@max24x7</a>
                </div>
                <div class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m26!1m12!1m3!1d28741.77845304988!2d87.4638886344027!3d25.779734302212642!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m11!3e6!4m3!3m2!1d25.7711403!2d87.4703019!4m5!1s0x39eff9a8d852acd9%3A0xe7f04c23ff65c7e8!2smax7!3m2!1d25.7883304!2d87.4924946!5e0!3m2!1sen!2sin!4v1639503285290!5m2!1sen!2sin" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                </div>
            </div>
            <div class="credits d-flex items-center">
                <p>All rights reserved &copy; @Max7 | 2021</p>
            </div>
        </footer>
        <!-- contact section  -->
    </div>
    <script src="js/app.js"></script>
</body>
</html>