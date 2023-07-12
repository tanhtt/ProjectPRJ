<%-- 
    Document   : shop
    Created on : Jul 12, 2023, 10:00:57 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/responsive.css">
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
    <link rel="stylesheet" href="./assets/css/shop.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="./assets/css/style.css">
    <title>Ecommerce</title>
</head>

<body>
    <section id="header">
        <a href="#"><img src="./img/140-1401926_r-anime-logo-high-resolution-anime-girl-logo.png" class="logo"
                alt=""></a>

        <div>
            <ul id="navbar">
                <li><a href="index.jsp">Home</a></li>
                <li><a class="active" href="shop.jsp">Shop</a></li>
                 <li>
                    <div class="navbar__user">
                        <img src="./img/user/userimg.png" alt="" class="navbar__user-img">
                        <span class="navbar__user-name">Username</span>
                        <div class="navbar__user-menu">
                            <ul class="navbar__user-menu-list">
                                <li class="navbar__user-menu-item">
                                    <a href="account.jsp" class="navbar__user-menu-link">Account</a>
                                </li>
                                <li class="navbar__user-menu-item">
                                    <a href="" class="navbar__user-menu-link">Order</a>
                                </li>
                                <li class="navbar__user-menu-item">
                                    <a href="" class="navbar__user-menu-link">Logout</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </li> 
                
                <!--Login button-->
<!--                <li>
                    <div style="padding: 0;" class="navbar__user">
                        <a style="width: 100%; padding: 7px;" href="auth.jsp" class="navbar__user-name">Login</a>
                    </div>
                </li>-->
                
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


                 <li id="lg-bag"><a href="cart.jsp"><i class="fa-solid fa-bag-shopping"></i></a></li> 


                <a href="#" id="close"><i class="fa fa-times"></i></a>
            </ul>
        </div>
        <div id="mobile">
            <a href="cart.html"><i class="fa-solid fa-bag-shopping"></i></a>
            <i id="bar" class="fas fa-outdent"></i>
        </div>
    </section>

    <section id="page-header">
        <h2>#readmore</h2>
        <p>Save more with coupons & up to 70% off!</p>
    </section>

    <section class="shop__body">
        <section class="shop__filter">
            <div class="shop__filter-header">
                <h3>
                    <i class="fa-solid fa-filter"></i>
                    Search Filter
                </h3>
            </div>
            <div class="shop__filter-group">
                <div class="shop__filter-group-header">
                    By category
                </div>
                <div class="shop__filter-group-body">
                    <div class="shop__filter-item">
                        <label for="manga" class="shop__filter-control">
                            <input type="checkbox" class="shop__filter-input-checkbox" name="" id="manga" value="manga">
                            <span>Manga</span>
                        </label>
                    </div>
                    <div class="shop__filter-item">
                        <label for="manga" class="shop__filter-control">
                            <input type="checkbox" class="shop__filter-input-checkbox" name="" id="manga" value="manga">
                            <span>Manga</span>
                        </label>
                    </div>
                    <div class="shop__filter-item">
                        <label for="manga" class="shop__filter-control">
                            <input type="checkbox" class="shop__filter-input-checkbox" name="" id="manga" value="manga">
                            <span>Manga</span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="shop__filter-group">
                <div class="shop__filter-group-header">
                    By price
                </div>
                <div class="shop__filter-group-body">
                    <div class="shop__filter-price">
                        <input type="text" name="" id="" placeholder="MIN" class="shop__filter-price-input">
                        <input type="text" name="" id="" placeholder="MAX" class="shop__filter-price-input">
                    </div>
                    <a href="" class="shop__filter-price-btn normal">APPLY</a>
                </div>
            </div>
        </section>
        <section id="product1" class="section-p1">
            <div class="product-filters">
                <div class="searchBox">
                    <input class="searchInput" type="text" name="" placeholder="Search">
                    <button class="searchButton" href="#">
                        <i class="material-icons">
                            search
                        </i>
                    </button>
                </div>
            </div>
            <div class="pro-container">
                <div class="pro" onclick="window.location.href='sproduct.jsp';">
                    <div class="pro-contain-img">
                        <img src="./img/products/n1.jpg" alt="">
                    </div>
                    <div class="des">
                        <span>manga</span>
                        <h5>Jujutsu Kaise</h5>
                        <span>by <span class="product1__author">Tan</span></span>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>$78</h4>
                    </div>
                    <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct.jsp';">
                    <div class="pro-contain-img">
                        <img src="./img/products/n1.jpg" alt="">
                    </div>
                    <div class="des">
                        <span>manga</span>
                        <h5>Jujutsu Kaise</h5>
                        <span>by <span class="product1__author">Tan</span></span>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>$78</h4>
                    </div>
                    <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct.jsp';">
                    <div class="pro-contain-img">
                        <img src="./img/products/n1.jpg" alt="">
                    </div>
                    <div class="des">
                        <span>manga</span>
                        <h5>Jujutsu Kaise</h5>
                        <span>by <span class="product1__author">Tan</span></span>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>$78</h4>
                    </div>
                    <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct.jsp';">
                    <div class="pro-contain-img">
                        <img src="./img/products/n1.jpg" alt="">
                    </div>
                    <div class="des">
                        <span>manga</span>
                        <h5>Jujutsu Kaise</h5>
                        <span>by <span class="product1__author">Tan</span></span>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>$78</h4>
                    </div>
                    <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct.jsp';">
                    <div class="pro-contain-img">
                        <img src="./img/products/n1.jpg" alt="">
                    </div>
                    <div class="des">
                        <span>manga</span>
                        <h5>Jujutsu Kaise</h5>
                        <span>by <span class="product1__author">Tan</span></span>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>$78</h4>
                    </div>
                    <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct.jsp';">
                    <div class="pro-contain-img">
                        <img src="./img/products/n1.jpg" alt="">
                    </div>
                    <div class="des">
                        <span>manga</span>
                        <h5>Jujutsu Kaise</h5>
                        <span>by <span class="product1__author">Tan</span></span>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>$78</h4>
                    </div>
                    <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct.jsp';">
                    <div class="pro-contain-img">
                        <img src="./img/products/n1.jpg" alt="">
                    </div>
                    <div class="des">
                        <span>manga</span>
                        <h5>Jujutsu Kaise</h5>
                        <span>by <span class="product1__author">Tan</span></span>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>$78</h4>
                    </div>
                    <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct.jsp';">
                    <div class="pro-contain-img">
                        <img src="./img/products/n1.jpg" alt="">
                    </div>
                    <div class="des">
                        <span>manga</span>
                        <h5>Jujutsu Kaise</h5>
                        <span>by <span class="product1__author">Tan</span></span>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>$78</h4>
                    </div>
                    <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct.jsp';">
                    <div class="pro-contain-img">
                        <img src="./img/products/n1.jpg" alt="">
                    </div>
                    <div class="des">
                        <span>manga</span>
                        <h5>Jujutsu Kaise</h5>
                        <span>by <span class="product1__author">Tan</span></span>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>$78</h4>
                    </div>
                    <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct.jsp';">
                    <div class="pro-contain-img">
                        <img src="./img/products/n1.jpg" alt="">
                    </div>
                    <div class="des">
                        <span>manga</span>
                        <h5>Jujutsu Kaise</h5>
                        <span>by <span class="product1__author">Tan</span></span>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>$78</h4>
                    </div>
                    <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct.jsp';">
                    <div class="pro-contain-img">
                        <img src="./img/products/n1.jpg" alt="">
                    </div>
                    <div class="des">
                        <span>manga</span>
                        <h5>Jujutsu Kaise</h5>
                        <span>by <span class="product1__author">Tan</span></span>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>$78</h4>
                    </div>
                    <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct.jsp';">
                    <div class="pro-contain-img">
                        <img src="./img/products/n1.jpg" alt="">
                    </div>
                    <div class="des">
                        <span>manga</span>
                        <h5>Jujutsu Kaise</h5>
                        <span>by <span class="product1__author">Tan</span></span>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>$78</h4>
                    </div>
                    <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct.jsp';">
                    <div class="pro-contain-img">
                        <img src="./img/products/n1.jpg" alt="">
                    </div>
                    <div class="des">
                        <span>manga</span>
                        <h5>Jujutsu Kaise</h5>
                        <span>by <span class="product1__author">Tan</span></span>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>$78</h4>
                    </div>
                    <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct.jsp';">
                    <div class="pro-contain-img">
                        <img src="./img/products/n1.jpg" alt="">
                    </div>
                    <div class="des">
                        <span>manga</span>
                        <h5>Jujutsu Kaise</h5>
                        <span>by <span class="product1__author">Tan</span></span>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>$78</h4>
                    </div>
                    <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct.jsp';">
                    <div class="pro-contain-img">
                        <img src="./img/products/n1.jpg" alt="">
                    </div>
                    <div class="des">
                        <span>manga</span>
                        <h5>Jujutsu Kaise</h5>
                        <span>by <span class="product1__author">Tan</span></span>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>$78</h4>
                    </div>
                    <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct.jsp';">
                    <div class="pro-contain-img">
                        <img src="./img/products/n1.jpg" alt="">
                    </div>
                    <div class="des">
                        <span>manga</span>
                        <h5>Jujutsu Kaise</h5>
                        <span>by <span class="product1__author">Tan</span></span>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>$78</h4>
                    </div>
                    <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                </div>
            </div>
        </section>
    </section>

    <section id="pagination" class="section-p1">
        <a href="#">1</a>
        <a href="#">2</a>
        <a href="#"><i class="fa fa-long-arrow-alt-right"></i></a>
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

    <script src="./assets/js/mycode.js"></script>
</body>

</html>
