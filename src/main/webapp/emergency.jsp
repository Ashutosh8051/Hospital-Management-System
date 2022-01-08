<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/homepagestyle.css">
    <script src="https://kit.fontawesome.com/0268b97b3e.js" crossorigin="anonymous"></script>
    <title>Max 24x7 Emergency</title>
</head>
<body>
    <div class="container">
        <header>
            <!-- navigation links -->
            <nav class="d-flex items-center">
                <div class="logo_ham d-flex items-center">
                    <h3 class="m-l">Max 24x7</h3>
                    <a href="#" class="hamburger">
                        <div></div>
                        <div></div>
                        <div></div>
                    </a>
                </div>
                <div class="nav_links d-flex items-center">
                    <a href="index.jsp">Home</a>
                    <a href="index.jsp#about">About</a>
                    <a href="index.jsp#features">Features</a>
                    <a href="index.jsp#services">Services</a>
                    <a href="index.jsp#enquiry">Enquiry</a>
                    <a href="emergency.jsp#contact">Contact</a>
                </div>
                <div class="emergency d-flex items-center">
                    <a href="emergency.jsp" class="m-r">Emergency</a>
                </div>
            </nav>
            <!-- navigation links -->
            <div class="emergencycontainer">
                <div class="polyogon"></div>
                <div class="formcontainer">
                    <div class="formbox div-center">
                        <form action="emergencyaction.jsp" method="post" class=" form d-flex items-center">
                             <div class="dropdown">
                                <label for="opt">Emergency <span style="color: red;">*</span></label>
                                <select name="opt" id="opt" required>
                                    <option value="" selected hidden>--Select--</option>
                                    <optgroup label="Need Blood">
                                        <option value="A+">A+</option>
                                        <option value="B+">B+</option>
                                        <option value="O+">O+</option>
                                        <option value="AB+">Ab+</option>
                                        <option value="A-">A-</option>
                                        <option value="B-">B-</option>
                                        <option value="O-">O-</option>
                                        <option value="AB-">AB-</option>
                                    </optgroup>
                                    <option value="icu">ICU</option>
                                    <option value="ventilator">Ventilator</option>
                                    <option value="surgery">Surgery</option>
                                    <option value="neurology">Neurology</option>
                                    <option value="neurosurgery">Neurosurgery</option>
                                    <option value="nephrology">Nephrology</option>
                                    <option value="cardiology">Cardiology</option>
                                    <option value="gynecology&obstetrics">Gynecology & Obstetrics</option>
                                    <option value="oncology">Oncology</option>
                                    <option value="physiotherapy">Physiotherapy</option>
                                    <option value="dialysis">Dialysis</option>
                                </select>
                                
                            </div>
                            <div class="name">
                                <label for="name">Your Name <span style="color: red;">*</span></label>
                                <input type="text" name="name" id="name" placeholder="Enter your name" autocomplete="off" required>
                            </div>
                            <div class="phone">
                                <label for="phone">Phone Number <span style="color: red;">*</span></label>
                                <input type="tel" name="phone" id="phone" placeholder="Phone Number/Mobile Number" autocomplete="off" required>
                            </div>
                            <div class="submit">
                                <button type="submit" class="div-center" onclick="emergency()">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </header>
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
                </div>
                <div class="quicklinks d-flex items-center">
                    <a href="index.jsp">Home</a>
                    <a href="index.jsp#about">About</a>
                    <a href="index.jsp#features">Features</a>
                    <a href="index.jsp#services">Services</a>
                    <a href="index.jsp#enquiry">Enquiry</a>
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
    </div>
    <script src="js/app.js"></script>
</body>
</html>