<%-- 
    Document   : account
    Created on : Jul 12, 2023, 10:30:34 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="bookBean" class="database.BookDAOBean" scope="request" />
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
    <link rel="stylesheet" href="./assets/css/admin.css">
    <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
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
            <a class="nav-link" href="edit-password.jsp">Security</a>
            <a class="nav-link active" href="#">Admin</a>
        </nav>
        <hr class="mt-0 mb-4">
    </div>
    <div class="admin__container" style="margin-bottom: 50px;">
        <input type="checkbox" name="" id="admin__menu-navigate">
        <label for="admin__menu-navigate">
            <i class="fa-solid fa-bars" id="admin__menu-show"></i>
            <i class="fa-solid fa-xmark" id="admin__menu-hide"></i>
        </label>
        <div class="admin__slidebar">
            <header>My App</header>
            <ul class="admin__menu-list">
                <li class="admin__menu-item"><a class="admin__menu-item-link" href="admin.jsp"><i
                            class="fa-solid fa-people-roof"></i>User List</a>
                </li>
                <li class="admin__menu-item"><a class="admin__menu-item-link admin__menu-item--active" href="#"><i
                            class="fa-solid fa-sitemap"></i>Products</a></li>
                <li class="admin__menu-item"><a class="admin__menu-item-link" href="#"><i
                            class="fa-solid fa-cart-shopping"></i>Order</a></li>
                <li class="admin__menu-item"><a class="admin__menu-item-link" href="#"><i
                            class="fa-regular fa-credit-card"></i>Payment</a>
                </li>
                <li class="admin__menu-item"><a class="admin__menu-item-link" href="#"><i
                            class="fa-solid fa-chart-simple"></i></i></i>Probability</a></li>
            </ul>
        </div>
        <section class="admin__content">
            <div class="admin__edit-user">
                <div class="admin__edit-user-header">
                    <h2 class="admin__edit-user-heading">Products List</h2>
                </div>
                <div class="admin__edit-user-container">
                    <div class="container">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th scope="col">Product Name</th>
                                    <th scope="col">Category</th>
                                    <th scope="col">Author</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="p" items="${bookBean.selectAll()}">
                                    <tr class="table-success">
                                            <td>${p.name}</td>
                                            <td>${p.getCategory().getCategoryName()}</td>
                                            <td>${p.author}</td>
                                            <td>${p.price} vnđ</td>                                           
                                            <td><a href="delete-book?id=${p.id}" class="btn btn-danger btn-sm">Delete</a></td>
                                        </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <button class="btn btn-success">New</button>
                    </div>

                </div>
            </div>
        </section>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>
