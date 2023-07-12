<%-- 
    Document   : account
    Created on : Jul 12, 2023, 10:30:34 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <li><a href="shop.jsp">Shop</a></li>
                 <li>
                    <div class="navbar__user">
                        <img src="./img/user/userimg.png" alt="" class="navbar__user-img">
                        <span class="navbar__user-name">Username</span>
                        <div class="navbar__user-menu">
                            <ul class="navbar__user-menu-list">
                                <li class="navbar__user-menu-item">
                                    <a href="#" class="navbar__user-menu-link">Account</a>
                                </li>
                                <li class="navbar__user-menu-item">
                                    <a href="#" class="navbar__user-menu-link">Order</a>
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
    
    
    <div class="container-xl px-4 mt-4">
        <!-- Account page navigation-->
        <nav class="nav nav-borders">
            <a class="nav-link active ms-0" href="#">Profile</a>
            <a class="nav-link" href="edit-password.jsp">Security</a>
            <a class="nav-link" href="admin.jsp">Admin</a>
        </nav>
        <hr class="mt-0 mb-4">
        <div class="row">
            <div class="col-xl-4">
                <!-- Profile picture card-->
                <div class="card mb-4 mb-xl-0">
                    <div class="card-header">Profile Picture</div>
                    <div class="card-body text-center">
                        <!-- Profile picture image-->
                        <img class="img-account-profile rounded-circle mb-2" src="./img/userimg.jpg" alt="">
                        <!-- Profile picture help block-->
                        <div class="small font-italic text-muted mb-4">JPG or PNG no larger than 5 MB</div>
                        <!-- Profile picture upload button-->
                        <button class="btn btn-primary" type="button">Upload new image</button>
                    </div>
                </div>
            </div>
            <div class="col-xl-8">
                <!-- Account details card-->
                <div class="card mb-4">
                    <div class="card-header">Account Details</div>
                    <div class="card-body">
                        <form>
                            <!-- Form Group (username)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="inputFullname">Fullname</label>
                                <input class="form-control" id="inputFullname" type="text"
                                    placeholder="Enter your fullname" value="Fullname" name="fullname">
                            </div>
                            <!-- Form Row-->
                            <div class="row gx-3 mb-3">
                                <!-- Form Group (first name)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputUsername">Username</label>
                                    <input class="form-control" id="inputUsername" type="text"
                                        placeholder="Enter your username" value="Username" name="username">
                                </div>
                                <!-- Form Group (last name)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputGender">Gender</label>
                                    <!-- <input class="form-control" id="inputLastName" type="text"
                                        placeholder="Enter your last name" value="Luna"> -->
                                    <select class="form-control" id="inputGender" name="gender">
                                        <option disabled>Gender</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                        <option value="Wibuu">Wibuu</option>
                                        <option value="Other">Other</option>
                                    </select>
                                </div>
                            </div>
                            <!-- Form Row        -->
                            <div class=" row gx-3 mb-3">
                                <!-- Form Group (organization name)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputLocation">Location</label>
                                    <input class="form-control" id="inputLocation" type="text"
                                        placeholder="Enter your location" value="" name="location">
                                </div>
                                <!-- Form Group (location)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputDelivery">Delivery address</label>
                                    <input class="form-control" id="inputDelivery" type="text"
                                        placeholder="Enter your delivery address" value="San Francisco, CA"
                                        name="deliveryAddress">
                                </div>
                            </div>
                            <!-- Form Group (email address)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="inputEmailAddress">Email address</label>
                                <input class="form-control" id="inputEmailAddress" type="email"
                                    placeholder="Enter your email address" value="name@example.com" name="email">
                            </div>
                            <!-- Form Row-->
                            <div class="row gx-3 mb-3">
                                <!-- Form Group (phone number)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputPhone">Phone number</label>
                                    <input class="form-control" id="inputPhone" type="tel"
                                        placeholder="Enter your phone number" value="555-123-4567">
                                </div>
                                <!-- Form Group (birthday)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputBirthday">Birthday</label>
                                    <input class="form-control" id="inputBirthday" type="date" name="birthday"
                                        placeholder="Enter your birthday" value="06/10/1988">
                                </div>
                            </div>
                            <!-- Save changes button-->
                            <button class="btn btn-primary" type="button">Save changes</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>
