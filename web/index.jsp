<%@page import="java.util.List"%>
<%@page import="demo.com.Model.bo.Article"%>
<%@page import="demo.com.Model.dao.DAOArticle"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>

<head>
    <title>AnebdourShop</title>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!--//tags -->
    <link href="./css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="./css/font-awesome.css" rel="stylesheet">
    <!--pop-up-box-->
    <link href="./css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
    <!--//pop-up-box-->
    <!-- price range -->
    <link rel="stylesheet" type="text/css" href="/css/jquery-ui1.css">
    <!-- fonts -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
    <div class="header-most-top">
        <p>Grocery Offer Zone Top Deals & Discounts</p>
    </div>
    <!-- //top-header -->
    <!-- header-bot-->
    <div class="header-bot">
        <div class="header-bot_inner_wthreeinfo_header_mid">
            <!-- header-bot-->
            <div class="col-md-4 logo_agile">
                <h1>
                    <a href="index.jsp">
                        <span>A</span>nebdour
                        <span>Shop</span>
                    </a>
                </h1>
            </div>
            <!-- header-bot -->
            <div class="col-md-8 header">
                <!-- header lists -->
                <ul>
                    <li>
                        <a href="#" data-toggle="modal" data-target="#adminC">
                            <span class="fa fa-unlock-alt" aria-hidden="true"></span> Admin </a>
                    </li>
                    <li>
                        <a href="#" data-toggle="modal" data-target="#myModal1">
                            <span class="fa fa-truck" aria-hidden="true"></span>Track Order</a>
                    </li>
                    <li>
                        <span class="fa fa-phone" aria-hidden="true"></span> 001 234 5678
                    </li>
                    <li>
                        <a href="#" data-toggle="modal" data-target="#myModal1">
                            <span class="fa fa-unlock-alt" aria-hidden="true"></span> Sign In </a>
                    </li>
                    <li>
                        <a href="#" data-toggle="modal" data-target="#myModal2">
                            <span class="fa fa-pencil-square-o" aria-hidden="true"></span> Sign Up </a>
                    </li>
                </ul>
                <!-- //header lists -->
                <!-- search -->
                <div class="agileits_search">
                    <form action="#" method="post">
                        <input name="Search" type="search" placeholder="How can we help you today?" required="">
                        <button type="submit" class="btn btn-default" aria-label="Left Align">
			<span class="fa fa-search" aria-hidden="true"> </span>
			</button>
                    </form>
                </div>
                <!-- //search -->
                <!-- cart details -->
                <div class="top_nav_right">
                    <div class="wthreecartaits wthreecartaits2 cart cart box_1">
                            <a href="#" data-toggle="modal" data-target="#myModal1">
                            <button class="w3view-cart" value="">
				<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
                            </button>
                            </a>
                    </div>
                </div>
                <!-- //cart details -->
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- shop locator (popup) -->
    <!-- Button trigger modal(shop-locator) -->
    <div class="modal fade" id="adminC" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body modal-body-sub_agile">
                    <div class="main-mailposi">
                        <span class="fa fa-envelope-o" aria-hidden="true"></span>
                    </div>
                    <div class="modal_body_left modal_body_left1">
                        <h3 class="agileinfo_sign">Admin Space</h3>
                        <p>
                            Only admins are allowed 
                        </p>
                        <form method="post" action="./Controller/Admin">
                            <div class="styled-input agile-styled-input-top">
                                <input type="text" placeholder="Email" name="loginAdmin" required="">
                            </div>
                            <div class="styled-input">
                                <input type="password" placeholder="Password" name="pwdAdmin" required="">
                            </div>
                            <input type="submit" value="Go">
                        </form>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- //Modal content-->
        </div>
    </div>
    
    <!-- //shop locator (popup) -->
    <!-- signin Model -->
    <!-- Modal1 -->
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body modal-body-sub_agile">
                    <div class="main-mailposi">
                        <span class="fa fa-envelope-o" aria-hidden="true"></span>
                    </div>
                    <div class="modal_body_left modal_body_left1">
                        <h3 class="agileinfo_sign">Sign In </h3>
                        <p>
                            Sign In now, Let's start your Anebdour Shopping. Don't have an account?
                            <a href="#" data-toggle="modal" data-target="#myModal2">
								Sign Up Now</a>
                        </p>
                        <form method="post" action="./Controller/Auth">
                            <div class="styled-input agile-styled-input-top">
                                <input type="text" placeholder="Email" name="login" required="">
                            </div>
                            <div class="styled-input">
                                <input type="password" placeholder="Password" name="pwd" required="">
                            </div>
                            <input type="submit" value="Sign In">
                        </form>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- //Modal content-->
        </div>
    </div>
    <!-- //Modal1 -->
    <!-- //signin Model -->
    <!-- signup Model -->
    <!-- Modal2 -->
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body modal-body-sub_agile">
                    <div class="main-mailposi">
                        <span class="fa fa-envelope-o" aria-hidden="true"></span>
                    </div>
                    <div class="modal_body_left modal_body_left1">
                        <h3 class="agileinfo_sign">Sign Up</h3>
                        <p>
                            Come join the Anebdour Shop! Let's set up your Account.
                        </p>
                        <form action="./Controller/SignIn" method="post">
                            <div class="styled-input agile-styled-input-top">
                                <input type="text" placeholder="Name" name="name" required="">
                            </div>
                            <div class="styled-input agile-styled-input-top">
                                <input type="text" placeholder="CIN" name="cin" required="">
                            </div>
                            <div class="styled-input agile-styled-input-top">
                                <input type="text" placeholder="Phone number" name="phone" required="">
                            </div>
                            <div class="styled-input agile-styled-input-top">
                                <input type="text" placeholder="Adresse" name="adresse" required="">
                            </div>

                            <div class="styled-input">
                                <input type="email" placeholder="E-mail" name="email" required="">
                            </div>
                            <div class="styled-input">
                                <input type="password" placeholder="Password" name="password" id="password1" required="">
                            </div>
                            <div class="styled-input">
                                <input type="password" placeholder="Confirm Password" name="passwordConfirm" id="password2" required="">
                            </div>
                            <input type="submit" value="Sign Up">
                        </form>
                        <p>
                            <a href="#">By clicking register, I agree to your terms</a>
                        </p>
                    </div>
                </div>
            </div>
            <!-- //Modal content-->
        </div>
    </div>
    <!-- //Modal2 -->
    <!-- //signup Model -->
    <!-- //header-bot -->
    <!-- navigation -->
    <div class="ban-top">
        <div class="container">
            <div class="top_nav_left">
                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
                        </div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav menu__list">
                                <li class="active">
                                    <a class="nav-stylehead" href="index.jsp">Home
										<span class="sr-only">(current)</span>
									</a>
                                </li>
                                <li class="">
                                    <a class="nav-stylehead" href="about.html">About Us</a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle nav-stylehead" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Kitchen
										<span class="caret"></span>
									</a>
                                    <ul class="dropdown-menu multi-column columns-3">
                                        <div class="agile_inner_drop_nav_info">
                                            <div class="col-sm-4 multi-gd-img">
                                                <img src="images/nav.png" alt="">
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </ul>
                                </li>
                                <li class="">
                                    <a class="nav-stylehead" href="contact.html">Contact</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1" class=""></li>
            <li data-target="#myCarousel" data-slide-to="2" class=""></li>
            <li data-target="#myCarousel" data-slide-to="3" class=""></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <div class="container">
                    <div class="carousel-caption">
                        <h3>Big
                            <span>Save</span>
                        </h3>
                        <p>Get flat
                            <span>10%</span> Cashback</p>
                        <a class="button2" href="#" data-toggle="modal" data-target="#myModal1">Shop Now </a>
                    </div>
                </div>
            </div>
            <div class="item item2">
                <div class="container">
                    <div class="carousel-caption">
                        <h3>Healthy
                            <span>Saving</span>
                        </h3>
                        <p>Get Upto
                            <span>30%</span> Off</p>
                        <a class="button2" href="#" data-toggle="modal" data-target="#myModal1">Shop Now </a>
                    </div>
                </div>
            </div>
            <div class="item item3">
                <div class="container">
                    <div class="carousel-caption">
                        <h3>Big
                            <span>Deal</span>
                        </h3>
                        <p>Get Best Offer Upto
                            <span>20%</span>
                        </p>
                        <a class="button2" href="#" data-toggle="modal" data-target="#myModal1">Shop Now </a>
                    </div>
                </div>
            </div>
            <div class="item item4">
                <div class="container">
                    <div class="carousel-caption">
                        <h3>Today
                            <span>Discount</span>
                        </h3>
                        <p>Get Now
                            <span>40%</span> Discount</p>
                        <a class="button2" href="#" data-toggle="modal" data-target="#myModal1">Shop Now </a>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- //banner -->

    <!-- top Products -->
    <div class="ads-grid">
        <div class="container">
            <!-- tittle heading -->
            <h3 class="tittle-w3l">Our Top Products
                <span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
            </h3>
            <!-- //tittle heading -->
            <!-- product left -->
            <div class="side-bar col-md-3">
                <div class="search-hotel">
                    <h3 class="agileits-sear-head">Search Here</h3>
                    <form action="#" method="post">
                        <input type="search" placeholder="Product name." name="search" required="">
                        <input type="submit" value=" ">
                    </form>
                </div>
                <div class="left-side">
                    <h3 class="agileits-sear-head">Food Preference</h3>
                    <ul>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">Vegetarian</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">Non-Vegetarian</span>
                        </li>
                    </ul>
                </div>
                <!-- //food preference -->
                <!-- discounts -->
                <div class="left-side">
                    <h3 class="agileits-sear-head">Discount</h3>
                    <ul>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">5% or More</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">10% or More</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">20% or More</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">30% or More</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">50% or More</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">60% or More</span>
                        </li>
                    </ul>
                </div>
                <!-- //discounts -->
                <!-- reviews -->
                <div class="customer-rev left-side">
                    <h3 class="agileits-sear-head">Customer Review</h3>
                    <ul>
                        <li>
                            <a href="#">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span>5.0</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                <span>4.0</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                <span>3.5</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                <span>3.0</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                <span>2.5</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="deal-leftmk left-side">
                    <h3 class="agileits-sear-head">Special Deals</h3>
                    <div class="special-sec1">
                        <div class="col-xs-4 img-deals">
                            <img src="images/d2.jpg" height="100" width="90" alt="">
                        </div>
                        <div class="col-xs-8 img-deal1">
                            <h3>Lay's Potato Chips</h3>
                            <a href="#" data-toggle="modal" data-target="#myModal1">$18.00</a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="special-sec1">
                        <div class="col-xs-4 img-deals">
                            <img src="images/d1.jpg" height="100" width="90" alt="">
                        </div>
                        <div class="col-xs-8 img-deal1">
                            <h3>Bingo Mad Angles</h3>
                            <a href="#" data-toggle="modal" data-target="#myModal1">$9.00</a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="special-sec1">
                        <div class="col-xs-4 img-deals">
                            <img src="images/d4.jpg" height="100" width="90" alt="">
                        </div>
                        <div class="col-xs-8 img-deal1">
                            <h3>Tata Salt</h3>
                            <a href="#" data-toggle="modal" data-target="#myModal1">$15.00</a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="special-sec1">
                        <div class="col-xs-4 img-deals">
                            <img src="images/d3.jpg" height="100" width="90" alt="">
                        </div>
                        <div class="col-xs-8 img-deal1">
                            <h3>Cadbury Dairy Milk</h3>
                            <a href="#" data-toggle="modal" data-target="#myModal1">$149.00</a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!-- //deals -->
            </div>
            <!-- //product left -->
            <!-- product right -->
            <div class="agileinfo-ads-display col-md-9">
                <div class="wrapper">
                    <!-- first section (nuts) -->
                    <div class="product-sec1">
                        <h3 class="heading-tittle">Watchs</h3>
                        <%
                        DAOArticle dao = new DAOArticle();
                        List<Article> li = dao.retreiveTreeElement("watch");
                        for(Article c : li){
                        out.println("<div class=\"col-md-4 product-men\">"
                                + "<div class=\"men-pro-item simpleCart_shelfItem\">"
                                + "<div class=\"men-thumb-item\">"
                                + "<img src=\"" + c.getImg() +  "\" height=\"150\" width=\"150\" alt=\"\">" // IMG
                                + "<div class=\"men-cart-pro\">"
                                + "<div class=\"inner-men-cart-pro\">"
                                + "<a href=\"#\" data-toggle=\"modal\" data-target=\"#myModal1\" class=\"link-product-add-cart\">Quick View</a>"
                                + "</div>"
                                + "</div>"
                                + "<span class=\"product-new-top\">New</span>"
                                + "</div>"
                                + "<div class=\"item-info-product \">"
                                + "<h4>"
                                + c.getName() + " "  
                                + "<a href=\"#\" data-toggle=\"modal\" data-target=\"#myModal1\">" + c.getDescription() + "</a>"
                                + "</h4>"
                                + "<div class=\"info-product-price\">"
                                + "<span class=\"item_price\">$" + c.getPrice() + "</span>"
                                + "<del>%" + c.getSold() + "</del>"
                                + "</div>"
                                + "</div>"
                                + "</div>"
                                + "</div>"
                            );
                        }
                        %>
                            
                        <div class="clearfix"></div>
                    </div>
                    <!-- //first section (nuts) -->
                    <!-- second section (nuts special) -->
                    <div class="product-sec1 product-sec2">
                        <div class="col-xs-7 effect-bg">
                            <h3 class="">Pure Energy</h3>
                            <h6>Enjoy our all high class Products</h6>
                            <p>Get Extra 10% Off</p>
                        </div>
                        <h3 class="w3l-nut-middle">It's good to be bad</h3>
                        <div class="col-xs-5 bg-right-nut">
                            <img src="./images/nut1.jpg" height="400" width="300" alt="">
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <!-- //second section (nuts special) -->
                    <!-- third section (oils) -->
                    <div class="product-sec1">
                        <h3 class="heading-tittle">Shoose</h3>
                        <%
                        List<Article> lii = dao.retreiveTreeElement("shoes");
                        for(Article c : lii){
                        out.println("<div class=\"col-md-4 product-men\">"
                                + "<div class=\"men-pro-item simpleCart_shelfItem\">"
                                + "<div class=\"men-thumb-item\">"
                                + "<img src=\"" + c.getImg() +  "\" height=\"150\" width=\"150\" alt=\"\">" // IMG
                                + "<div class=\"men-cart-pro\">"
                                + "<div class=\"inner-men-cart-pro\">"
                                + "<a href=\"#\" data-toggle=\"modal\" data-target=\"#myModal1\" class=\"link-product-add-cart\">Quick View</a>"
                                + "</div>"
                                + "</div>"
                                + "<span class=\"product-new-top\">New</span>"
                                + "</div>"
                                + "<div class=\"item-info-product \">"
                                + "<h4>"
                                + c.getName() + " "        
                                + "<a href=\"#\" data-toggle=\"modal\" data-target=\"#myModal1\">" + c.getDescription() + "</a>"
                                + "</h4>"
                                + "<div class=\"info-product-price\">"
                                + "<span class=\"item_price\">$" + c.getPrice() + "</span>"
                                + "<del>%" + c.getSold() + "</del>"
                                + "</div>"
                                + "</div>"
                                + "</div>"
                                + "</div>"
                            );
                        }
                        %>
                            
                        <div class="clearfix"></div>
                    </div>
                    <!-- //third section (oils) -->
                    
                </div>
            </div>
            <!-- //product right -->
        </div>
    </div>
    <!-- //top products -->
    <!-- special offers -->
    <div class="featured-section" id="projects">
        <div class="container">
            <!-- tittle heading -->
            <h3 class="tittle-w3l">Special Offers
                <span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
            </h3>
            <!-- //tittle heading -->
            <div class="content-bottom-in">
                <ul id="flexiselDemo1">
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <a href="#" data-toggle="modal" data-target="#myModal1">
                                    <img src="./images/s1.jpg" alt="">
                                </a>
                            </div>
                            <div class="product-name-w3l">
                                <h4>
                                    <a href="#" data-toggle="modal" data-target="#myModal1">Addidas</a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>$220.00</h6>
                                    <p>Save $40.00</p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <a href="#" data-toggle="modal" data-target="#myModal1">
                                    <img src="./images/s4.jpg" alt="">
                                </a>
                            </div>
                            <div class="product-name-w3l">
                                <h4>
                                    <a href="#" data-toggle="modal" data-target="#myModal1">Kissan 50</a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>$99.00</h6>
                                    <p>Save $20.00</p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <a href="#" data-toggle="modal" data-target="#myModal1">
                                    <img src="./images/s2.jpg" alt="">
                                </a>
                            </div>
                            <div class="product-name-w3l">
                                <h4>
                                    <a href="#" data-toggle="modal" data-target="#myModal1">Madhur Pure 1g</a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>$69.00</h6>
                                    <p>Save $20.00</p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <a href="#" data-toggle="modal" data-target="#myModal1">
                                    <img src="./images/s8.jpg" alt="">
                                </a>
                            </div>
                            <div class="product-name-w3l">
                                <h4>
                                    <a href="#" data-toggle="modal" data-target="#myModal1">Swatch Undro 221</a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>$160.00</h6>
                                    <p>Save $60.00</p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <a href="#" data-toggle="modal" data-target="#myModal1">
                                    <img src="./images/s6.jpg" alt="">
                                </a>
                            </div>
                            <div class="product-name-w3l">
                                <h4>
                                    <a href="#" data-toggle="modal" data-target="#myModal1">Omega, 8486G</a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>$121.60</h6>
                                    <p>Save $30.00</p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <a href="#" data-toggle="modal" data-target="#myModal1">
                                    <img src="./images/s5.jpg" alt="">
                                </a>
                            </div>
                            <div class="product-name-w3l">
                                <h4>
                                    <a href="#" data-toggle="modal" data-target="#myModal1">Sprite</a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>$180.00</h6>
                                    <p>Save $30.00</p>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //special offers -->
    <!-- newsletter -->
    <div class="footer-top">
        <div class="container-fluid">
            <div class="col-xs-8 agile-leftmk">
                <h2>Get your Groceries delivered from local stores</h2>
                <p>Free Delivery on your first order!</p>
                <form action="#" method="post">
                    <input type="email" placeholder="E-mail" name="email" required="">
                    <input type="submit" value="Subscribe">
                </form>
                <div class="newsform-w3l">
                    <span class="fa fa-envelope-o" aria-hidden="true"></span>
                </div>
            </div>
            <div class="col-xs-4 w3l-rightmk">
                <img src="./images/tab3.png" alt=" ">
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- //newsletter -->
    <!-- footer -->
    <footer>
        <div class="container">
            <!-- footer first section -->
            <p class="footer-main">
                <span>"Grocery Shoppy"</span> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.Sed ut perspiciatis unde omnis iste natus error sit
                voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
            <!-- //footer first section -->
            <!-- footer second section -->
            <div class="w3l-grids-footer">
                <div class="col-xs-4 offer-footer">
                    <div class="col-xs-4 icon-fot">
                        <span class="fa fa-map-marker" aria-hidden="true"></span>
                    </div>
                    <div class="col-xs-8 text-form-footer">
                        <h3>Track Your Order</h3>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="col-xs-4 offer-footer">
                    <div class="col-xs-4 icon-fot">
                        <span class="fa fa-refresh" aria-hidden="true"></span>
                    </div>
                    <div class="col-xs-8 text-form-footer">
                        <h3>Free & Easy Returns</h3>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="col-xs-4 offer-footer">
                    <div class="col-xs-4 icon-fot">
                        <span class="fa fa-times" aria-hidden="true"></span>
                    </div>
                    <div class="col-xs-8 text-form-footer">
                        <h3>Online cancellation </h3>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
            <!-- //footer second section -->
            <!-- footer third section -->
            <div class="footer-info w3-agileits-info">
                <!-- footer categories -->
                <div class="col-sm-5 address-right">
                    <div class="col-xs-6 footer-grids">
                        <h3>Categories</h3>
                        <ul>
                            <li>
                                <a href="#" data-toggle="modal" data-target="#myModal1">Grocery</a>
                            </li>
                            <li>
                                <a href="#" data-toggle="modal" data-target="#myModal1">Fruits</a>
                            </li>
                            <li>
                                <a href="#" data-toggle="modal" data-target="#myModal1">Soft Drinks</a>
                            </li>
                            <li>
                                <a href="#" data-toggle="modal" data-target="#myModal1">Dishwashers</a>
                            </li>
                            <li>
                                <a href="#" data-toggle="modal" data-target="#myModal1">Biscuits & Cookies</a>
                            </li>
                            <li>
                                <a href="#" data-toggle="modal" data-target="#myModal1">Baby Diapers</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-xs-6 footer-grids agile-secomk">
                        <ul>
                            <li>
                                <a href="#" data-toggle="modal" data-target="#myModal1">Snacks & Beverages</a>
                            </li>
                            <li>
                                <a href="#" data-toggle="modal" data-target="#myModal1">Bread & Bakery</a>
                            </li>
                            <li>
                                <a href="#" data-toggle="modal" data-target="#myModal1">Sweets</a>
                            </li>
                            <li>
                                <a href="#" data-toggle="modal" data-target="#myModal1">Chocolates & Biscuits</a>
                            </li>
                            <li>
                                <a href="#" data-toggle="modal" data-target="#myModal1">Personal Care</a>
                            </li>
                            <li>
                                <a href="#" data-toggle="modal" data-target="#myModal1">Dried Fruits & Nuts</a>
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!-- //footer categories -->
                <!-- quick links -->
                <div class="col-sm-5 address-right">
                    <div class="col-xs-6 footer-grids">
                        <h3>Quick Links</h3>
                        <ul>
                            <li>
                                <a href="about.html">About Us</a>
                            </li>
                            <li>
                                <a href="contact.html">Contact Us</a>
                            </li>
                            <li>
                                <a href="terms.html">Terms of use</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-xs-6 footer-grids">
                        <h3>Get in Touch</h3>
                        <ul>
                            <li>
                                <i class="fa fa-map-marker"></i> 123 Sebastian, USA.</li>
                            <li>
                                <i class="fa fa-mobile"></i> 333 222 3333 </li>
                            <li>
                                <i class="fa fa-phone"></i> +222 11 4444 </li>
                            <li>
                                <i class="fa fa-envelope-o"></i>
                                <a href="mailto:m.khalil.anebdour@gmail.com"> m.khalil.anebdour@gmail.com</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- //quick links -->
                <!-- social icons -->
                <div class="col-sm-2 footer-grids  w3l-socialmk">
                    <h3>Follow Us on</h3>
                    <div class="social">
                        <ul>
                            <li>
                                <a class="icon fb" href="#">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a class="icon tw" href="#">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a class="icon gp" href="#">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="agileits_app-devices">
                        <h5>Download the App</h5>
                        <a href="#">
                            <img src="./images/1.png" alt="">
                        </a>
                        <a href="#">
                            <img src="./images/2.png" alt="">
                        </a>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <!-- //social icons -->
                <div class="clearfix"></div>
            </div>
            <!-- //footer third section -->
            <!-- footer fourth section (text) -->
            <div class="agile-sometext">
                <div class="sub-some">
                    <h5>Online Grocery Shopping</h5>
                    <p>Order online. All your favourite products from the low price online supermarket for grocery home delivery in Delhi, Gurgaon, Bengaluru, Mumbai and other cities in India. Lowest prices guaranteed on Patanjali, Aashirvaad, Pampers, Maggi,
                        Saffola, Huggies, Fortune, Nestle, Amul, MamyPoko Pants, Surf Excel, Ariel, Vim, Haldiram's and others.</p>
                </div>
                <div class="sub-some">
                    <h5>Shop online with the best deals & offers</h5>
                    <p>Now Get Upto 40% Off On Everyday Essential Products Shown On The Offer Page. The range includes Grocery, Personal Care, Baby Care, Pet Supplies, Healthcare and Other Daily Need Products. Discount May Vary From Product To Product.</p>
                </div>
                <!-- brands -->
                <div class="sub-some">
                    <h5>Popular Brands</h5>
                    <ul>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Aashirvaad</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Amul</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Bingo</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Boost</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Durex</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1"> Maggi</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Glucon-D</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Horlicks</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Head & Shoulders</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Dove</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Dettol</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Dabur</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Colgate</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Coca-Cola</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Closeup</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1"> Cinthol</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Cadbury</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Bru</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Bournvita</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Tang</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Pears</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Oreo</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1"> Taj Mahal</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Sprite</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Thums Up</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Fair & Lovely</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Lakme</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Tata</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Sunfeast</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Sunsilk</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Patanjali</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">MTR</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">Kissan</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1"> Lipton</a>
                        </li>
                    </ul>
                </div>
                <!-- //brands -->
                <!-- payment -->
                <div class="sub-some child-momu">
                    <h5>Payment Method</h5>
                    <ul>
                        <li>
                            <img src="./images/pay2.png" alt="">
                        </li>
                        <li>
                            <img src="./images/pay5.png" alt="">
                        </li>
                        <li>
                            <img src="./images/pay1.png" alt="">
                        </li>
                        <li>
                            <img src="./images/pay4.png" alt="">
                        </li>
                        <li>
                            <img src="./images/pay6.png" alt="">
                        </li>
                        <li>
                            <img src="./images/pay3.png" alt="">
                        </li>
                        <li>
                            <img src="./images/pay7.png" alt="">
                        </li>
                        <li>
                            <img src="./images/pay8.png" alt="">
                        </li>
                        <li>
                            <img src="./images/pay9.png" alt="">
                        </li>
                    </ul>
                </div>
                <!-- //payment -->
            </div>
            <!-- //footer fourth section (text) -->
        </div>
    </footer>
    <!-- //footer -->
    <!-- copyright -->
    <div class="copy-right">
        <div class="container">
            <p>Â© 2020 Anebdour Shop. All rights reserved | Design by
                <a href="https://www.linkedin.com/in/mohamed-khalil-anebdour-630026140/"> Mohamed Khalil ANEBDOUR.</a>
            </p>
        </div>
    </div>
    <!-- //copyright -->

    <!-- js-files -->
    <!-- jquery -->
    <script src="./js/jquery-2.1.4.min.js"></script>
    <!-- //jquery -->

    <!-- popup modal (for signin & signup)-->
    <script src="./js/jquery.magnific-popup.js"></script>
    <script>
        $(document).ready(function() {
            $('.popup-with-zoom-anim').magnificPopup({
                type: 'inline',
                fixedContentPos: false,
                fixedBgPos: true,
                overflowY: 'auto',
                closeBtnInside: true,
                preloader: false,
                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-zoom-in'
            });

        });
    </script>
    <!-- Large modal -->
    <!-- <script>
		$('#').modal('show');
	</script> -->
    <!-- //popup modal (for signin & signup)-->

    <!-- cart-js -->
    <script src="./js/minicart.js"></script>
    <script>
        paypalm.minicartk.render(); //use only unique class names other than paypalm.minicartk.Also Replace same class name in css and minicart.min.js

        paypalm.minicartk.cart.on('checkout', function(evt) {
            var items = this.items(),
                len = items.length,
                total = 0,
                i;

            // Count the number of each item in the cart
            for (i = 0; i < len; i++) {
                total += items[i].get('quantity');
            }

            if (total < 3) {
                alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
                evt.preventDefault();
            }
        });
    </script>
    <!-- //cart-js -->

    <!-- price range (top products) -->
    <script src="./js/jquery-ui.js"></script>
    <script>
        //<![CDATA[
        $(window).load(function() {
            $("#slider-range").slider({
                range: true,
                min: 0,
                max: 9000,
                values: [50, 6000],
                slide: function(event, ui) {
                    $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
                }
            });
            $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

        }); //]]>
    </script>
    <!-- //price range (top products) -->

    <!-- flexisel (for special offers) -->
    <script src="./js/jquery.flexisel.js"></script>
    <script>
        $(window).load(function() {
            $("#flexiselDemo1").flexisel({
                visibleItems: 3,
                animationSpeed: 1000,
                autoPlay: true,
                autoPlaySpeed: 3000,
                pauseOnHover: true,
                enableResponsiveBreakpoints: true,
                responsiveBreakpoints: {
                    portrait: {
                        changePoint: 480,
                        visibleItems: 1
                    },
                    landscape: {
                        changePoint: 640,
                        visibleItems: 2
                    },
                    tablet: {
                        changePoint: 768,
                        visibleItems: 2
                    }
                }
            });

        });
    </script>
    <!-- //flexisel (for special offers) -->

    <!-- password-script -->
    <script>
        window.onload = function() {
            document.getElementById("password1").onchange = validatePassword;
            document.getElementById("password2").onchange = validatePassword;
        }

        function validatePassword() {
            var pass2 = document.getElementById("password2").value;
            var pass1 = document.getElementById("password1").value;
            if (pass1 != pass2)
                document.getElementById("password2").setCustomValidity("Passwords Don't Match");
            else
                document.getElementById("password2").setCustomValidity('');
            //empty string means no validation error
        }
    </script>
    <!-- //password-script -->

    <!-- smoothscroll -->
    <script src="./js/SmoothScroll.min.js"></script>
    <!-- //smoothscroll -->

    <!-- start-smooth-scrolling -->
    <script src="./js/move-top.js"></script>
    <script src="./js/easing.js"></script>
    <script>
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event) {
                event.preventDefault();

                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->

    <!-- smooth-scrolling-of-move-up -->
    <script>
        $(document).ready(function() {
            /*
            var defaults = {
            	containerID: 'toTop', // fading element id
            	containerHoverID: 'toTopHover', // fading element hover id
            	scrollSpeed: 1200,
            	easingType: 'linear'
            };
            */
            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <!-- //smooth-scrolling-of-move-up -->

    <!-- for bootstrap working -->
    <script src="./js/bootstrap.js"></script>
    <!-- //for bootstrap working -->
    <!-- /./js-files -->


</body>

</html>