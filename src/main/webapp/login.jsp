<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
    <script src="https://kit.fontawesome.com/0268b97b3e.js" crossorigin="anonymous"></script>
    <title>Max 24x7 Admin-login</title>
</head>
<body>
    <div class="container">
        <header>
            <a href="index.jsp" class="cancel"><i class="fas fa-times div-center"></i></a>
            <div class="login">
                <div class="polyogon"></div>
                <div class="formcontainer">
                    <div class="formbox div-center">
                        <form action="adminloginction.jsp" method="post" class=" form d-flex items-center">
                            <div class="name">
                                <label for="email">Admin's email <span style="color: red;">*</span></label>
                                <input type="text" name="email" id="email" placeholder="Enter your email id" autocomplete="off" required>
                            </div>
                            <div class="pass">
                                <label for="pass">Phone Number <span style="color: red;">*</span></label>
                                <input type="password" name="pass" id="pass" placeholder="Enter password" autocomplete="off" required>
                            </div>
                            <div class="submit">
                                <button type="submit" class="div-center">Log in</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </header>
    </div>
</body>
</html>