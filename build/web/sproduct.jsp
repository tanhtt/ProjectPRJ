<%-- 
    Document   : sproduct
    Created on : Jul 12, 2023, 10:06:43 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="bookBean" class="database.BookDAOBean" scope="request" />
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/responsive.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./assets/css/style.css">
    <title>Ecommerce</title>
</head>

<body>
    <section id="header">
        <a href="#"><img src="./img/140-1401926_r-anime-logo-high-resolution-anime-girl-logo.png" class="logo"
                alt=""></a>

        <div>
            <ul id="navbar">
                <li><a class="active" href="index.jsp">Home</a></li>
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
    
    <c:set var="bookDetail" value='${requestScope.data}' />

    <section id="prodetails" class="section-p1">
        <div class="single-pro-img">
            <img src="${bookDetail.img}" width="100%" id="MainImg" alt="">

<!--            <div class="small-img-group">
                <div class="small-img-col">
                    <img src="${bookDetail.img}" width="100%" class="small-img" alt="">
                </div>
                <div class="small-img-col">
                    <img src="./img/products/f3.jpg" width="100%" class="small-img" alt="">
                </div>
                <div class="small-img-col">
                    <img src="./img/products/f2.jpg" width="100%" class="small-img" alt="">
                </div>
                <div class="small-img-col">
                    <img src="./img/products/f4.jpg" width="100%" class="small-img" alt="">
                </div>
            </div>-->
        </div>
        <div class="single-pro-details">
            <h6>Home / ${bookDetail.getCategory().getCategoryName()}</h6>
            <h4>${bookDetail.name}</h4>
            <h2>${bookDetail.price} vnđ</h2>
            
            <input type="number" value="1" min="0">
            <c:if test = "${user == null}">
                <button class="normal cart-btn-title" >Add To Cart</button>
            </c:if>
            <c:if test = "${user != null}">
                  <button class="normal" onclick="window.location.href='addToCart?id=${bookDetail.id}'">Add To Cart</button>
            </c:if>
            
            <h4>Book Details</h4>
            <span>${bookDetail.description}</span>

        </div>
    </section>

    <section id="product1" class="section-p1">
        <h2>Featured Products</h2>
        <p>Summer Collection</p>
        <div class="pro-container">
            <c:forEach items="${bookBean.selectAll()}" var="book" begin="2" end="5">
                    <div class="pro" onclick="window.location.href = 'product?id=${book.id}';">
                        <div class="pro-contain-img">
                            <img  class="pro-img" src="${book.img}" alt="">
                        </div>
                        <div class="des">
                            <span>${book.getCategory().getCategoryName()}</span>
                            <h5>${book.name}</h5>
                            <span>by <span class="product1__author">${book.author}</span></span>
                            <div class="star">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <h4>${book.price} vnđ</h4>
                        </div>
                        <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                    </div>
                </c:forEach>
        </div>
    </section>

    <section id="newsletter" class="section-p1 section-m1">
        <div class="newstext">
            <h4>Sign Up For Newsletters</h4>
            <p>Get E-mail updates about our latest shop and <span>special offers.</span></p>
        </div>
        <div class="form">
            <input type="text" placeholder="Your email address">
            <button class="normal">Sign Up</button>
        </div>
    </section>

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
        var MainImg = document.getElementById("MainImg");
        var smallImgs = document.getElementsByClassName("small-img");

        smallImgs[0].onclick = function () {
            MainImg.src = smallImgs[0].src;
        }
        smallImgs[1].onclick = function () {
            MainImg.src = smallImgs[1].src;
        }
        smallImgs[2].onclick = function () {
            MainImg.src = smallImgs[2].src;
        }
        smallImgs[3].onclick = function () {
            MainImg.src = smallImgs[3].src;
        }
    </script>

    <script src=".assets/js/mycode.js"></script>
</body>

</html>
