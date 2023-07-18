<%-- 
    Document   : account
    Created on : Jul 12, 2023, 10:30:34 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/responsive.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/account.css">
    <title>Document</title>
</head>

<body>
    <section id="header">
        <a href="#"><img src="./img/140-1401926_r-anime-logo-high-resolution-anime-girl-logo.png" class="logo"
                alt=""></a>

        <div>
            <ul id="navbar">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="shop">Shop</a></li>
                 <!--User menu-->
                    <c:if test = "${user != null}">
                        <li>
                            <div class="navbar__user">
                                <img src="./img/user/userimg.png" alt="" class="navbar__user-img">
                                <span class="navbar__user-name">${user.username}</span>
                                <div class="navbar__user-menu">
                                    <ul class="navbar__user-menu-list">
                                        <li class="navbar__user-menu-item">
                                            <a href="account.jsp" class="navbar__user-menu-link">Account</a>
                                        </li>
                                        <li class="navbar__user-menu-item">
                                            <a href="" class="navbar__user-menu-link">Order</a>
                                        </li>
                                        <li class="navbar__user-menu-item">
                                            <a href="auth?do-action=logout" class="navbar__user-menu-link">Logout</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li> 
                    </c:if>
                
                <!--Login button-->
                    <c:if test = "${user == null}">
                        <li>
                            <div style="padding: 0;" class="navbar__user">
                                <a style="width: 100%; padding: 7px;" href="auth.jsp" class="navbar__user-name">Login</a>
                            </div>
                        </li>
                    </c:if>
                
                <!--Cart no need-->
                <!-- <li id="lg-bag">
                    <div class="navbar__cart">
                        <a style="text-decoration: none;" class="navbar__cart-link" href="#">
                            <i class="navbar__cart-icon fa-solid fa-cart-shopping"></i>
                        </a>
                        <span class="navbar__cart-notice">2</span> -->
                <!-- navbar__cart-list--no-cart add when no product  -->
                <!-- <div class="navbar__cart-list">
                            <img src="./img/cart/no-product-found.png" alt="" class="navbar__cart-list--no-cart-img">
                            <h4 class="navbar__cart-heading">Products In Cart</h4>
                            <ul class="navbar__cart-list-item">
                                <li class="navbar__cart-item">
                                    <img src="../img/products/f1.jpg" alt="" class="navbar__cart-item-img">
                                    <div class="navbar__cart-item-info">
                                        <div class="navbar__cart-item-head">
                                            <h5 class="navbar__cart-item-name">Jujutsu Kaisen</h5>
                                            <div class="navbar__cart-item-price-wrap">
                                                <span class="navbar__cart-item-price">$45</span>
                                                <span class="navbar__cart-item-multiply">x</span>
                                                <span class="navbar__cart-item-qnt">2</span>
                                            </div>
                                        </div>
                                        <div class="navbar__cart-item-body">
                                            <div class="header__cart-item-description">
                                                Category: Manga
                                            </div>
                                            <span class="header__cart-item-remove">Remove</span>
                                        </div>
                                    </div>
                                </li>
                                <li class="navbar__cart-item">
                                    <img src="../img/products/f2.jpg" alt="" class="navbar__cart-item-img">
                                    <div class="navbar__cart-item-info">
                                        <div class="navbar__cart-item-head">
                                            <h5 class="navbar__cart-item-name">Jujutsu Kaisen</h5>
                                            <div class="navbar__cart-item-price-wrap">
                                                <span class="navbar__cart-item-price">$50</span>
                                                <span class="navbar__cart-item-multiply">x</span>
                                                <span class="navbar__cart-item-qnt">1</span>
                                            </div>
                                        </div>
                                        <div class="navbar__cart-item-body">
                                            <div class="header__cart-item-description">
                                                Category: Manga
                                            </div>
                                            <span class="header__cart-item-remove">Remove</span>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <a href="cart.html" class="navbar__cart-btn normal">View All</a>
                        </div>
                    </div>
                </li> -->


                 <!--Cart-->
                    <c:if test = "${user != null}">
                        <li id="lg-bag"><a href="cart.jsp"><i class="fa-solid fa-bag-shopping"></i></a></li> 
                            </c:if> 


                <a href="#" id="close"><i class="fa fa-times"></i></a>
            </ul>
        </div>
        <div id="mobile">
            <a href="cart.html"><i class="fa-solid fa-bag-shopping"></i></a>
            <i id="bar" class="fas fa-outdent"></i>
        </div>
    </section>
    
    
    <div class="container-xl px-4 mt-4">
        <!-- Account page navigation-->
        <nav class="nav nav-borders">
            <a class="nav-link ms-0" href="account.jsp">Profile</a>
            <a class="nav-link active" href="#">Security</a>
            <a class="nav-link" href="admin.jsp">Admin</a>
        </nav>
        <hr class="mt-0 mb-4">
        <div class="row">
            <div class="col-lg-8">
                <!-- Change password card-->
                <div class="card mb-4">
                    <div class="card-header">Change Password</div> <span style="color: red;
                                                                         position: absolute;
                                                                         top: 15px;
                                                                         left: 190px;"><strong>
                            ${requestScope.error}
                        </strong></span>
                    <span style="color: green;
                          position: absolute;
                          top: 15px;
                          left: 190px;"><strong>
                            ${requestScope.success}
                        </strong></span>
                    <div class="card-body">
                        <form action="edit-password" method="post">
                            <!-- Form Group (current password)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="currentPassword">Current Password</label>
                                <input class="form-control" id="currentPassword" type="password"
                                    placeholder="Enter current password" name="currentPassword">
                            </div>
                            <!-- Form Group (new password)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="newPassword">New Password</label>
                                <input class="form-control" id="newPassword" type="password"
                                    placeholder="Enter new password" name="password">
                            </div>
                            <!-- Form Group (confirm password)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="confirmPassword">Confirm Password</label>
                                <input class="form-control" id="confirmPassword" type="password"
                                    placeholder="Confirm new password" name="rePassword" onkeyup="checkPassMatch()">
                            </div>
                            <span id="msg" style="color: red;"></span>
                            <button class="btn btn-primary" id="changePassBtn" type="submit">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
                        <footer class="section-p1">
            <div class="col">
                <img class="logo" src="./img/140-1401926_r-anime-logo-high-resolution-anime-girl-logo.png" alt="">
                <h4>Contact</h4>
                <p><strong>Address: </strong>562 Wellington Road, Street 32, San Francisco</p>
                <p><strong>Phone: </strong>0395786062</p>
                <p><strong>Hours: </strong>10:00 - 18:00, Mon - Sat</p>

                <div class="follow">
                    <h4>Follow Us</h4>
                    <div class="icon">
                        <i class="fab fa-facebook-f"></i>
                        <i class="fab fa-twitter"></i>
                        <i class="fab fa-instagram"></i>
                        <i class="fab fa-pinterest-p"></i>
                        <i class="fab fa-youtube"></i>
                    </div>
                </div>
            </div>

            <div class="col">
                <h4>About</h4>
                <a href="#">About Us</a>
                <a href="#">Delivery Information</a>
                <a href="#">Privacy Pocicy</a>
                <a href="#">Terms & Conditions</a>
                <a href="#">Contact Us</a>
            </div>

            <div class="col">
                <h4>My Account</h4>
                <a href="#">Sign In</a>
                <a href="#">View Cart</a>
                <a href="#">My Wishlist</a>
                <a href="#">Track My Order</a>
                <a href="#">Help</a>
            </div>

            <div class="col install">
                <h4>Install App</h4>
                <p>From App Store or Google Play</p>
                <div class="row">
                    <img src="./img/pay/app.jpg" alt="">
                    <img src="./img/pay/play.jpg" alt="">
                </div>
                <p>Secured Payment Gateways</p>
                <img src="./img/pay/pay.png" alt="">
            </div>

            <div class="copy-right">
                <p>2021, Tech2 etc - HTML CSS Ecommerce Template</p>
            </div>
        </footer>
    <script>
        function checkPassMatch() {
            var password = document.getElementById("newPassword").value;
            var rePassword = document.getElementById("confirmPassword").value;
            if (password != "") {
                if (password != rePassword) {
                    document.getElementById("msg").innerHTML = "Password don't match!";
                    return false;
                } else {
                    document.getElementById("msg").innerHTML = "";
                    return true;
                }
            }
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>
