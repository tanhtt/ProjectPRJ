<%-- 
    Document   : auth
    Created on : Jul 14, 2023, 5:05:38 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
        <link rel="stylesheet" href="./assets/css/auth.css">
        <style>
            .red {
                position: absolute;
                font-size: 14px;
                color: red;
            }
        </style>
        <title>Document</title>
    </head>

    <body>
        <div class="hero">
            <div class="form-box">
                <div class="form-line">
                    <div class="button-box">
                        <div id="btn"></div>
                        <button type="button" class="toggle-btn" onclick="login()">Log In</button>
                        <button type="button" class="toggle-btn" onclick="register()">Register</button>
                    </div>
                    <div id="social-icons">
                        <img src="./img/facebook.png" alt="">
                        <img src="./img/gmail.png" alt="">
                    </div>
                    <form action="auth" id="login" class="form-control" method="post">
                        <input type="hidden" name="do-action" value="login"/>
                        <div class="input-container">
                            <input type="text" class="input-field" name="username" value="${usernameLogin}" required>
                            <span class="placeholder-input">Username</span>
                        </div>
                        <div class="input-container">
                            <input type="password" class="input-field" name="password" required>
                            <span class="placeholder-input">Password</span>
                        </div>
                        <span id="errorLogin" class="red" >${errorLogin}</span>
                        <input type="checkbox" class="check-box" name="rememberMe"><span class="policy">Remember me</span>
                        <button type="submit" class="submit-btn">Log in</button>
                    </form>
                    <form action="auth" id="register" class="form-control" method="post">
                        <input type="hidden" name="do-action" value="register"/>
                        <div class="input-container">
                            <input type="text" class="input-field" name="username" value="${usernameRegister}" required>
                            <span class="placeholder-input">Username</span>
                        </div>
                            <span id="error" class="red" style="bottom: 269px;" >${error}</span>
                        <div class="input-container">
                            <input type="password" class="input-field" name="password" id="passwordRegister" required>
                            <span class="placeholder-input">Password</span>
                        </div>
                        <div class="input-container">
                            <input type="password" class="input-field" name="repeatPassword" id="rePasswordRegister" onkeyup="checkPassword()" required>
                            <span class="placeholder-input">Re-Password</span>
                        </div>
                        <span id="msg" class="red"></span>
                        <input type="checkbox" class="check-box" id="checkAgreeTerm" onchange="handleCheckedAgree()"><span class="policy">I agree to the term &
                            conditions</span>
                        <button type="submit" id="submitRegister" class="submit-btn" style="visibility: hidden;">Register</button>
                    </form>
                </div>
            </div>
        </div>
        <script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");

            function register() {
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }
            function login() {
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function checkPassword() {
                var passwordRegister = document.getElementById("passwordRegister").value;
                var rePasswordRegister = document.getElementById("rePasswordRegister").value;
                if (passwordRegister != "") {
                    if (passwordRegister != rePasswordRegister) {
                        document.getElementById("msg").innerHTML = "Password don't match!";
                        return false;
                    } else {
                        document.getElementById("msg").innerHTML = "";
                        return true;
                    }
                }
            }

            function handleCheckedAgree() {
                var isCheckedAgree = document.getElementById("checkAgreeTerm");
                if (isCheckedAgree.checked == true && checkPassword() == true) {
                    document.getElementById("submitRegister").style.visibility = "visible";
                } else {
                    document.getElementById("submitRegister").style.visibility = "hidden";
                }
            }
        </script>
    </body>

</html>
