<%-- 
    Document   : AdminSpace
    Created on : 31 mars 2020, 22:26:26
    Author     : Opac
--%>

<%@page import="demo.com.Model.dao.DAOArticle"%>
<%@page import="java.util.List"%>
<%@page import="demo.com.Model.bo.Article"%>
<%@page import="demo.com.Model.bo.Client"%>
<%@page import="demo.com.Model.bo.Admin"%>
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
  <body class="bg-light">
    <div class="container">
  <div class="py-5 text-center">
      <br><br><br>
    <p class="lead">Admin Space</p>
    <h1>Welcome 
    <%
                session = request.getSession();
                Admin cl = (Admin) session.getAttribute("Admin");
                out.print(cl.getEmail()); 
            %></h1>
  </div>

  <div class="row">
    <div class="col-md-8 order-md-1">
                                  <div class="services-breadcrumb">
                                <div class="agile_inner_breadcrumb">
                                    <div class="container">
                                        <ul class="w3_short">
                                            <li>
                                                <a href="AdminSpace.jsp">Home</a>
                                                <i>|</i>
                                            </li>
                                            <li>
                                            <%
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
                                        + "<form action=\"./Controller/AdminDeleteArticle\" method=\"GET\">"
                                        + "<fieldset>"
                                        + "<input type=\"hidden\" name=\"id\" value=\"" + ar.getId() + "\" />"
                                        + "<input type=\"submit\" name=\"submit\" value=\"Delete this Article\" class=\"button\" />"
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
                                    <h3 class="tittle-w3l"><span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
                                    </h3>
                                    <!-- //tittle heading -->
                        </div>
                    </div>

    </div>
  </div>      
  <footer class="text-muted text-center text-small">
    <p class="mb-1">&copy; 2017-2019 Company Name</p>
    <ul class="list-inline">
      <li class="list-inline-item"><a href="#">Privacy</a></li>
      <li class="list-inline-item"><a href="#">Terms</a></li>
      <li class="list-inline-item"><a href="#">Support</a></li>
    </ul>
  </footer>
   <script src="./js/jquery-2.1.4.min.js"></script>
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