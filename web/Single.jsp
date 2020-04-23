<%-- 
    Document   : Single
    Created on : 25 mars 2020, 20:43:56
    Author     : Opac
--%>

    <%@page import="java.util.List"%>
        <%@page import="demo.com.Model.bo.Article"%>
            <%@page import="demo.com.Model.dao.DAOArticle"%>
                <%@page import="demo.com.Model.bo.Client"%>
                    <%@page contentType="text/html" pageEncoding="UTF-8"%>
                        <!DOCTYPE html>
                        <html>

                        <head>
                            <title>Grocery Shoppy an Ecommerce Category Bootstrap Responsive Web Template | Single :: w3layouts</title>
                            <!--/tags -->
                            <meta name="viewport" content="width=device-width, initial-scale=1">
                            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                            <meta name="keywords" content="Grocery Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
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
                            <link rel="stylesheet" type="text/css" href="./css/jquery-ui1.css">
                            <!-- flexslider -->
                            <link rel="stylesheet" href="./css/flexslider.css" type="text/css" media="screen" />
                            <!-- fonts -->
                            <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
                        </head>

                        <body>
                            <!-- top-header -->
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
                                            <a href="ClientPage.jsp">
                                                <span>A</span>nebdour
                                                <span>S</span>hop
                                                <img src="./images/logo2.png" alt=" ">
                                            </a>
                                        </h1>
                                    </div>
                                    <!-- header-bot -->
                                    <div class="col-md-8 header">
                                        <!-- header lists -->
                                        <ul>
                                            <li>
                                                <a class="play-icon popup-with-zoom-anim" href="#small-dialog1">
                                                    <span class="fa fa-map-marker" aria-hidden="true"></span> Shop Locator</a>
                                            </li>
                                            <li>
                                                <a href="#" data-toggle="modal" data-target="#myModal1">
                                                    <span class="fa fa-truck" aria-hidden="true"></span>Track Order</a>
                                            </li>
                                            <li>
                                                <span class="fa fa-phone" aria-hidden="true"></span> 001 234 5678
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
                                                <form action="#" method="post" class="last">
                                                    <input type="hidden" name="cmd" value="_cart">
                                                    <input type="hidden" name="display" value="1">
                                                    <button class="w3view-cart" type="submit" name="submit" value="">
								<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
							</button>
                                                </form>
                                            </div>
                                        </div>
                                        <!-- //cart details -->
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
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
                                                        <li>
                                                            <a class="nav-stylehead" href="ClientPage.jsp">Home
										<span class="sr-only">(current)</span>
									</a>
                                                        </li>
                                                        <li class="">
                                                            <a class="nav-stylehead" href="about.html">About Us</a>
                                                        </li>
                                                        <li>
                                                            <a class="" href="contact.html">Contact</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                            <!-- //navigation -->
                            <!-- banner-2 -->
                            <div class="page-head_agile_info_w3l">

                            </div>
                            <!-- //banner-2 -->
                            <!-- page -->
                            <div class="services-breadcrumb">
                                <div class="agile_inner_breadcrumb">
                                    <div class="container">
                                        <ul class="w3_short">
                                            <li>
                                                <a href="ClientPage.jsp">Home</a>
                                                <i>|</i>
                                            </li>
                                            <li>
                                            <%
                                            String name = "";            
                                            DAOArticle dao = new DAOArticle();
                                            String id = request.getParameter("id");
                                            Article ar = dao.retreiveById(Integer.valueOf(id));
                                            %>
                                                        <%= ar.getName() %>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- //page -->
                            <!-- Single Page -->
                            <div class="banner-bootom-w3-agileits">
                                <div class="container">
                                    <!-- tittle heading -->
                                    <h3 class="tittle-w3l">
                                        <%= ar.getName() %>
                                            <span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
                                    </h3>
                                    <!-- //tittle heading -->
                                    <div class="col-md-5 single-right-left ">
                                        <div class="grid images_3_of_2">
                                            <div class="flexslider">
                                                <ul class="slides">
                                                    <li data-thumb="images/si.jpg">
                                                        <div class="thumb-image">
                                   <%
                                       out.println("<img src=\"" + ar.getImg() +  "\" height=\"150\" width=\"150\" data-imagezoom=\"true\" class=\"img-responsive\" alt=\"\">");
                                    %>                        
                                                    </li>
                                                </ul>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <%
                                        name = ar.getCategory();
                            out.println("<div class=\"col-md-7 single-right-left simpleCart_shelfItem\">"
                                    + "<h3> " + ar.getName() + " </h3>"
                                    + "<p>"
                                    + "<span class=\"item_price\">" + ar.getPrice() + "</span>"
                                    + "<del>$" + ar.getSold() + "</del>" // SOLDE
                                    + "<label>Free delivery</label>"
                                    + "</p>"
                                    + "<div class=\"single-infoagile\">"
                                    + ""
                                    + ""
                                    + "");
                        %>
                                        <ul>
                                            <li>
                                                Cash on Delivery Eligible.
                                            </li>
                                            <li>
                                                Shipping Speed to Delivery.
                                            </li>
                                            <li>
                                                Sold and fulfilled by Supple Tek (3.6 out of 5 | 8 ratings).
                                            </li>
                                            <li>
                                                1 offer from
                                                <span class="item_price">$950.00</span>
                                            </li>
                                        </ul>
                                </div>
                                <div class="product-single-w3l">
                                    <p>
                                        <i class="fa fa-hand-o-right" aria-hidden="true"></i>This is a
                                        <label><%= ar.getCategory() %></label> product.</p>
                                    <ul>
                                        <li>
                                            <%= ar.getDescription() %>
                                        </li>
                                    </ul>
                                    <p>
                                        <i class="fa fa-refresh" aria-hidden="true"></i>All
                                        <%= ar.getCategory() %> products are
                                            <label>non-returnable.</label>
                                    </p>
                                </div>
                                <%
                                out.println("<div class=\"occasion-cart\">"
                                        + "<div class=\"snipcart-details top_brand_home_details item_add single-item hvr-outline-out\">"
                                        + "<form action=\"./Controller/AddPanier\" method=\"post\">"
                                        + "<fieldset>"
                                        + "<input type=\"hidden\" name=\"id\" value=\"" + ar.getId() + "\" />"
                                        + "<input type=\"submit\" name=\"submit\" value=\"Add to cart\" class=\"button\" />"
                                        + "</fieldset>"
                                        + "</form>");
                                %>            
                                    </div>
                                </div>

                            </div>
                            <div class="clearfix"> </div>
                            </div>
                            </div>
                            <!-- //Single Page -->
                            <!-- special offers -->
                            <div class="featured-section" id="projects">
                                <div class="container">
                                    <!-- tittle heading -->
                                    <h3 class="tittle-w3l">Add More
                                        <span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
                                    </h3>
                                    <!-- //tittle heading -->
                            <div class="content-bottom-in">
                                <ul id="flexiselDemo1">
                                <%
                                    
                                List<Article> li = dao.retreiveByCategory(name);
                                for(Article c : li){
                                out.println("<li>"
                                + "<div class=\"w3l-specilamk\">"
                                + "<div class=\"speioffer-agile\">"
                                + "<a href=\"Single.jsp?id=" + c.getId() + "\">"
                                + "<img src=\"" + c.getImg() +  "\" height=\"150\" width=\"150\" alt=\"\">"
                                + "</a>"
                                + "</div>"
                                + "<div class=\"product-name-w3l\">"
                                + "<h4>"
                                + "<a href=\"Single.jsp?id=" + c.getId() + "\">" + c.getName() + "</a>"
                                + "</h4>"
                                + "<div class=\"w3l-pricehkj\">"
                                + "<h6>$" + c.getPrice() + "</h6>"
                                + "<p>%" + c.getSold() + "</p>"
                                + "</div>"
                                + "<div class=\"snipcart-details top_brand_home_details item_add single-item hvr-outline-out\">"
                                + "<form action=\"./Controller/AddPanier\" method=\"post\">"
                                + "<fieldset>"
                                + "<input type=\"hidden\" name=\"id\" value=\"" + c.getId() + "\" />"
                                + "<input type=\"submit\" name=\"submit\" value=\"Add to cart\" class=\"button\" />"
                                + "</fieldset>"
                                + "</form>"
                                + "</div>"
                                + "</div>"
                                + "</div>"
                                + "</li>");
                                }
                                %>                                        
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
                                        <span>"Grocery Shoppy"</span> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.Sed ut perspiciatis unde omnis
                                        iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
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
                                                        <a href="product.html">Grocery</a>
                                                    </li>
                                                    <li>
                                                        <a href="product.html">Fruits</a>
                                                    </li>
                                                    <li>
                                                        <a href="product.html">Soft Drinks</a>
                                                    </li>
                                                    <li>
                                                        <a href="product2.html">Dishwashers</a>
                                                    </li>
                                                    <li>
                                                        <a href="product.html">Biscuits & Cookies</a>
                                                    </li>
                                                    <li>
                                                        <a href="product2.html">Baby Diapers</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-xs-6 footer-grids agile-secomk">
                                                <ul>
                                                    <li>
                                                        <a href="product.html">Snacks & Beverages</a>
                                                    </li>
                                                    <li>
                                                        <a href="product.html">Bread & Bakery</a>
                                                    </li>
                                                    <li>
                                                        <a href="product.html">Sweets</a>
                                                    </li>
                                                    <li>
                                                        <a href="product.html">Chocolates & Biscuits</a>
                                                    </li>
                                                    <li>
                                                        <a href="product2.html">Personal Care</a>
                                                    </li>
                                                    <li>
                                                        <a href="product.html">Dried Fruits & Nuts</a>
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
                                                        <a href="help.html">Help</a>
                                                    </li>
                                                    <li>
                                                        <a href="faqs.html">Faqs</a>
                                                    </li>
                                                    <li>
                                                        <a href="terms.html">Terms of use</a>
                                                    </li>
                                                    <li>
                                                        <a href="privacy.html">Privacy Policy</a>
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
                                                        <a href="mailto:example@mail.com"> mail@example.com</a>
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
                                            <p>Order online. All your favourite products from the low price online supermarket for grocery home delivery in Delhi, Gurgaon, Bengaluru, Mumbai and other cities in India. Lowest prices guaranteed on Patanjali,
                                                Aashirvaad, Pampers, Maggi, Saffola, Huggies, Fortune, Nestle, Amul, MamyPoko Pants, Surf Excel, Ariel, Vim, Haldiram's and others.</p>
                                        </div>
                                        <div class="sub-some">
                                            <h5>Shop online with the best deals & offers</h5>
                                            <p>Now Get Upto 40% Off On Everyday Essential Products Shown On The Offer Page. The range includes Grocery, Personal Care, Baby Care, Pet Supplies, Healthcare and Other Daily Need Products. Discount May Vary From
                                                Product To Product.</p>
                                        </div>
                                        <!-- brands -->
                                        <div class="sub-some">
                                            <h5>Popular Brands</h5>
                                            <ul>
                                                <li>
                                                    <a href="product.html">Aashirvaad</a>
                                                </li>
                                                <li>
                                                    <a href="product.html">Amul</a>
                                                </li>
                                                <li>
                                                    <a href="product.html">Bingo</a>
                                                </li>
                                                <li>
                                                    <a href="product.html">Boost</a>
                                                </li>
                                                <li>
                                                    <a href="product.html">Durex</a>
                                                </li>
                                                <li>
                                                    <a href="product.html"> Maggi</a>
                                                </li>
                                                <li>
                                                    <a href="product.html">Glucon-D</a>
                                                </li>
                                                <li>
                                                    <a href="product.html">Horlicks</a>
                                                </li>
                                                <li>
                                                    <a href="product2.html">Head & Shoulders</a>
                                                </li>
                                                <li>
                                                    <a href="product2.html">Dove</a>
                                                </li>
                                                <li>
                                                    <a href="product2.html">Dettol</a>
                                                </li>
                                                <li>
                                                    <a href="product2.html">Dabur</a>
                                                </li>
                                                <li>
                                                    <a href="product2.html">Colgate</a>
                                                </li>
                                                <li>
                                                    <a href="product.html">Coca-Cola</a>
                                                </li>
                                                <li>
                                                    <a href="product2.html">Closeup</a>
                                                </li>
                                                <li>
                                                    <a href="product2.html"> Cinthol</a>
                                                </li>
                                                <li>
                                                    <a href="product.html">Cadbury</a>
                                                </li>
                                                <li>
                                                    <a href="product.html">Bru</a>
                                                </li>
                                                <li>
                                                    <a href="product.html">Bournvita</a>
                                                </li>
                                                <li>
                                                    <a href="product.html">Tang</a>
                                                </li>
                                                <li>
                                                    <a href="product.html">Pears</a>
                                                </li>
                                                <li>
                                                    <a href="product.html">Oreo</a>
                                                </li>
                                                <li>
                                                    <a href="product.html"> Taj Mahal</a>
                                                </li>
                                                <li>
                                                    <a href="product.html">Sprite</a>
                                                </li>
                                                <li>
                                                    <a href="product.html">Thums Up</a>
                                                </li>
                                                <li>
                                                    <a href="product2.html">Fair & Lovely</a>
                                                </li>
                                                <li>
                                                    <a href="product2.html">Lakme</a>
                                                </li>
                                                <li>
                                                    <a href="product.html">Tata</a>
                                                </li>
                                                <li>
                                                    <a href="product2.html">Sunfeast</a>
                                                </li>
                                                <li>
                                                    <a href="product2.html">Sunsilk</a>
                                                </li>
                                                <li>
                                                    <a href="product.html">Patanjali</a>
                                                </li>
                                                <li>
                                                    <a href="product.html">MTR</a>
                                                </li>
                                                <li>
                                                    <a href="product.html">Kissan</a>
                                                </li>
                                                <li>
                                                    <a href="product2.html"> Lipton</a>
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
                                    <p>© 2017 Grocery Shoppy. All rights reserved | Design by
                                        <a href="http://w3layouts.com"> W3layouts.</a>
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
                                paypalm.minicartk.render(); //use only unique class names other than paypal1.minicart1.Also Replace same class name in css and minicart.min.js

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

                            <!-- imagezoom -->
                            <script src="./js/imagezoom.js"></script>
                            <!-- //imagezoom -->

                            <!-- FlexSlider -->
                            <script src="./js/jquery.flexslider.js"></script>
                            <script>
                                // Can also be used with $(document).ready()
                                $(window).load(function() {
                                    $('.flexslider').flexslider({
                                        animation: "slide",
                                        controlNav: "thumbnails"
                                    });
                                });
                            </script>
                            <!-- //FlexSlider-->

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

                            <!-- for bootstrap working -->
                            <script src="./js/bootstrap.js"></script>
                            <!-- //for bootstrap working -->
                            <!-- //js-files -->

                        </body>

                        </html>