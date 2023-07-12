<%-- 
    Document   : index
    Created on : Jul 12, 2023, 9:43:02 AM
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
    <link rel="stylesheet" href="./assets/css/modal.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="./assets/css/style.css">
    <title>Book Shop</title>
</head>

<body>
    <section id="header">
        <a href="#"><img src="./img/140-1401926_r-anime-logo-high-resolution-anime-girl-logo.png" class="logo"
                alt=""></a>

        <div>
            <ul id="navbar">
                <li><a class="active" href="index.jsp">Home</a></li>
                <li><a href="shop.jsp">Shop</a></li>
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

    <section id="hero">
        <!-- <h4>Trade-in-offer</h4>
        <h2>Super value deals</h2>
        <h1>On all products</h1>
        <p>Save more with coupons & up to 70% off!</p>
        <button>Shop Now</button> -->

        <div class="slider">
            <div class="slides">
                <!-- radio button start  -->
                <input type="radio" name="radio-btn" id="radio1">
                <input type="radio" name="radio-btn" id="radio2">
                <input type="radio" name="radio-btn" id="radio3">
                <input type="radio" name="radio-btn" id="radio4">
                <!-- radio button end  -->
                <!-- slide img start  -->
                <div class="slide first">
                    <img src="./img/slider/1.jpg" alt="">
                </div>
                <div class="slide">
                    <img src="./img/slider/2.jpg" alt="">
                </div>
                <div class="slide">
                    <img src="./img/slider/3.jpg" alt="">
                </div>
                <div class="slide">
                    <img src="./img/slider/4.jpg" alt="">
                </div>
                <!-- slide img end -->
                <!-- automatic start -->
                <div class="navigation-auto">
                    <div class="auto-btn1"></div>
                    <div class="auto-btn2"></div>
                    <div class="auto-btn3"></div>
                    <div class="auto-btn4"></div>
                </div>
                <!-- automatic end -->
            </div>
            <!-- manual navigation start  -->
            <div class="navigation-manual">
                <label for="radio1" class="manual-btn"></label>
                <label for="radio2" class="manual-btn"></label>
                <label for="radio3" class="manual-btn"></label>
                <label for="radio4" class="manual-btn"></label>
            </div>
        </div>
    </section>

    <section id="feature" class="section-p1">
        <div class="fe-box">
            <img src="img/features/f1.png" alt="">
            <h6>Free Shipping</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f2.png" alt="">
            <h6>Online Order</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f3.png" alt="">
            <h6>Save Money</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f4.png" alt="">
            <h6>Promotions</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f5.png" alt="">
            <h6>Happe Sell</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f6.png" alt="">
            <h6>F24/7 Support</h6>
        </div>
    </section>

    <section id="product1" class="section-p1">
        <h2>Featured Products</h2>
        <p>Summer Cpllection New Morden Design</p>
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
        </div>
    </section>

    <section id="banner" class="section-m1">
        <h4>Repair Services</h4>
        <h2>Up to <span>70% off</span> - All T-shirts & Accessories</h2>
        <button class="normal">Explore More</button>
    </section>

    <section id="product1" class="section-p1">
        <h2>New Arrivals</h2>
        <p>Summer Cpllection New Morden Design</p>
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
        </div>
    </section>

    <section id="sm-banner" class="section-p1">
        <div class="banner-box">
            <h4>crazy deals</h4>
            <h2>buy 1 get 1 free</h2>
            <span>The best classic dress is on sale at cara</span>
            <button class="white">Learn More</button>
        </div>
        <div class="banner-box banner-box2">
            <h4>spring/summer</h4>
            <h2>upcoming season</h2>
            <span>The best classic dress is on sale at cara</span>
            <button class="white">Collection</button>
        </div>

    </section>

    <section id="banner3">
        <div class="banner-box">
            <h2>SEASONAL SALE</h2>
            <h3>Winter Collection -50% OFF</h3>
        </div>
        <div class="banner-box banner-box2">
            <h2>SEASONAL SALE</h2>
            <h3>Winter Collection -50% OFF</h3>
        </div>
        <div class="banner-box banner-box3">
            <h2>SEASONAL SALE</h2>
            <h3>Winter Collection -50% OFF</h3>
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

    <!-- <div class="modal js-modal open">
        <div class="modal-overlay"></div>
        <div class="modal-container js-modal-container">
            <div class="modal__best-seller">
                <div class="modal__best-seller-close js-close">
                    <i class="fa-solid fa-xmark"></i>
                </div>
                <header class="modal__best-seller-header">
                    <h3>hihi</h3>
                </header>
                <div class="modal__best-seller-body">
                    <div class="img-product-advertise">
                        <img src="./img/140-1401926_r-anime-logo-high-resolution-anime-girl-logo.png" alt="">
                    </div>
                    <div class="product-advertise">
                        <h3>Best Seller</h3>
                        <h4>Jujutsu Kaise</h4>
                        <h5>Author: <span>Tan</span></h5>
                        <p>Trẻ hoá thương hiệu ở ACB có phải chỉ là chuyện "một ngày một đêm"?</p>
                        <button class="normal"><a href="">shop now</a></button>
                    </div>

                </div>
            </div>
        </div>
    </div> -->

    <script src="./assets/js/mycode.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>
