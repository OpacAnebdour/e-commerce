<%-- 
    Document   : Panier
    Created on : 22 mars 2020, 13:36:06
    Author     : Opac
--%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.Collection"%>
<%@page import="demo.com.Model.bo.Article"%>
<%@page import="demo.com.Model.bo.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
	<title>AnebdourShop</title>
	<meta charset="UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<script>
		addEventListener("load", function () {
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
					<a href="index.html">
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
					<li>Checkout</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
	<!-- checkout page -->
    <div class="privacy">
        <div class="container">
            <h3 class="tittle-w3l">Checkout<span class="heading-style"><i></i><i></i><i></i></span></h3>
	         <div class="checkout-right">
                    <h4>Your shopping cart contains:
                        <span>X Products</span>
                    </h4>
                    <div class="table-responsive">
			<table class="timetable_sub">
                            <thead>
				<tr>
                                    <th>SL No.</th>
                                    <th>Product</th>
                                    <th>Quality</th>
                                    <th>Product Name</th>
                                    <th>Price</th>
                                    <th>Remove</th>
				</tr>
                            </thead>
                            <tbody>
                                <%
                                   Client cl = null;
                                   Collection<Article> items = null;
                                   session = request.getSession();
                                   cl = (Client) session.getAttribute("King");
                                   items = cl.getPanier().getItems();
                                   System.out.println(">> Session Client" + cl);
                                   System.out.println(">> Session Client panier " + items.size());
                                   System.out.println(">> Session Client items " + cl.getPanier().getItems().size());
                                %>
                                <%
                                    int index = 0;
                                    Vector quantity = new Vector();
                                    for(Article c : items){
                                        index++;
                                    out.println("<tr class=\"rem1\">"
                                        + "<td class=\"invert\">" + index + "</td>"
                                        + "<td class=\"invert-image\">"
                                        + "<a href=\"single2.html\">"
                                        + "<img src=\"./images/a7.jpg\" alt=\" \" class=\"img-responsive\">"
                                        + "</a>"
                                        + "</td>"
                                        + "<td class=\"invert\">"
                                        + "<div class=\"quantity\">"
                                        + "<div class=\"quantity-select\">"
                                        + "<div class=\"entry value-minus\">&nbsp;</div>"
                                        + "<div class=\"entry value\">"
                                        + "<span>"
                                        + c.getQuantity()
                                        + "</span>"
                                        + "</div>"
                                        + "<div class=\"entry value-plus active\">&nbsp;</div>"
                                        + "</div>"
                                        + "</div>"
                                        + "</td>"
                                        + "<td class=\"invert\">"
                                        + c.getName() // name here
                                        + "</td>"
                                        + "<td class=\"invert\">"
                                        + c.getPrice()
                                        + " $ </td>"
                                        + "<td class=\"invert\">"
                                        + "<div class=\"rem\">"
                                        + "<div class=\"close1\"></div>"
                                        + "</div>"
                                        + "</td>"
                                        + "</tr>"
                                        + ""
                                        + ""
                                        + "");
                                    quantity.add(c.getId());
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                </div>
		
                <div class="checkout-left">
                    <div class="address_form_agile">
			<h4>Add a new Details</h4>
			<form action="./Controller/Done" method="post" class="creditly-card-form agileinfo_form">
                            <div class="creditly-wrapper wthree, w3_agileits_wrapper">
				<div class="information-wrapper">
                                    <button class="submit check_out">Make a Payment</button>
				</div>
                            </div>
			</form>
			<div class="checkout-right-basket">
                            <a href="payment.html">Delivery to Client Address
				<span class="fa fa-hand-o-right" aria-hidden="true"></span>
                            </a>
			</div>
                    </div>
                    <div class="clearfix"></div>
			</div>
		</div>
	</div>

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
		</div>
		</div>
	</footer>
	<div class="copy-right">
		<div class="container">
			<p>© 2020 Covid Shoppy. All rights reserved | Design by
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
		$(document).ready(function () {
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
		paypalm.minicartk
			.render(); //use only unique class names other than paypal1.minicart1.Also Replace same class name in css and minicart.min.js

		paypalm.minicartk.cart.on('checkout', function (evt) {
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

	<!--quantity-->
	<script>
		$('.value-plus').on('click', function () {
			var divUpd = $(this).parent().find('.value'),
				newVal = parseInt(divUpd.text(), 10) + 1;
			divUpd.text(newVal);
		});

		$('.value-minus').on('click', function () {
			var divUpd = $(this).parent().find('.value'),
				newVal = parseInt(divUpd.text(), 10) - 1;
			if (newVal >= 1) divUpd.text(newVal);
		});
	</script>
	<!--quantity-->
	<script>
		$(document).ready(function (c) {
			$('.close1').on('click', function (c) {
				$('.rem1').fadeOut('slow', function (c) {
					$('.rem1').remove();
				});
			});
		});
	</script>
	<script>
		$(document).ready(function (c) {
			$('.close2').on('click', function (c) {
				$('.rem2').fadeOut('slow', function (c) {
					$('.rem2').remove();
				});
			});
		});
	</script>
	<script>
		$(document).ready(function (c) {
			$('.close3').on('click', function (c) {
				$('.rem3').fadeOut('slow', function (c) {
					$('.rem3').remove();
				});
			});
		});
	</script>
	<!--//quantity-->

	<!-- password-script -->
	<script>
		window.onload = function () {
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
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
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
		$(document).ready(function () {
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
	<!-- //js-files -->

</body>

</html>