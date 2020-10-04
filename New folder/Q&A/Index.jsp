<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="Colorlib">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
<title>Q&A </title>
<link href="https://fonts.googleapis.com/css?family=Poppins:100,300,500" rel="stylesheet">
		<!--
		CSS
		============================================= -->
		<link rel="stylesheet" href="css/linearicons.css">
		<link rel="stylesheet" href="css/owl.carousel.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link rel="stylesheet" href="css/nice-select.css">
		<link rel="stylesheet" href="css/magnific-popup.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/main.css">

<!--<style type="text/css">

.style4 {font-size: 18px}
body {
	background-color: #FFFF99;
}

a:link {
    color: red;
}

/* visited link */
a:visited {
    color: green;
}

/* mouse over link */
a:hover {
    color: hotpink;
}

/* selected link */
a:active {
    color: blue;
}
</style> -->
</head>

<body>
<div class="oz-body-wrap">
		<!-- Start Header Area -->
		<header class="default-header">
			<div class="container-fluid">
				<div class="header-wrap">
					<div class="header-top d-flex justify-content-between align-items-center">
						<div class="logo">
							<img src="img/logo.png" alt=""></a>
						</div>
						<div class="main-menubar d-flex align-items-center">
							<nav class="hide">
								<a href="Login.jsp">Login</a>
							</nav>
							<div class="menu-bar"><span class="lnr lnr-menu"></span></div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- End Header Area -->
		<!-- Start Banner Area -->
		<section class="banner-area relative">
			<div class="container">
				<div class="row fullscreen align-items-center justify-content-center">
					<div class="banner-left col-lg-6">
						<img class="d-flex mx-auto img-fluid" src="img/header-img.png" alt="">
					</div>
					<div class="col-lg-6">
						<div class="story-content">
							<h6 class="text-uppercase">Quench Your Thirst Of Knowledge</h6>
							<h2>Behind Every <span class="sp-1">Success</span><br>
							There is a <span class="sp-2">Question</span><br></h2>
							<a href="Index.jsp?login" class="genric-btn primary circle arrow">Get Started<span class="lnr lnr-arrow-right"></span></a>
							<%
	  		if(request.getParameter("Srch")==null && request.getParameter("login")!=null)
			{
			%>
	 		 <td width="933" height="339" valign="middle"><div align="center"><%@ include file="Login1.jsp"%></div></td>
			<%
			}
	 	%>
		<%
	  		if(request.getParameter("Srch")==null &&request.getParameter("reg")!=null)
			{
			%>
	 		 <td width="933" height="339" valign="middle"><div align="center"><%@ include file="GeneralRegistration.jsp"%></div></td>
			<%
			}
	 	%>

		
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Banner Area -->
		<!-- Start Video Area -->
		<section class="video-area pt-40 pb-40">
			<div class="overlay overlay-bg"></div>
			<div class="container">
				<div class="video-content">
					<a href="https://www.youtube.com/watch?v=u9hauSrihYQ" class="play-btn"><img src="img/play-btn.png" alt=""></a>
					<div class="video-desc">
						<h3 class="h2 text-white text-uppercase">Why Do We Ask Questions</h3>
						<h4 class="text-white">Youtube video will appear in popover</h4>
					</div>
				</div>
			</div>
		</section>
		<!-- End Video Area -->
		<!-- Start about Area -->
		<section class="about-area pt-100 pb-100">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-6">
						<div class="story-content">
							<h2>Brief Information <br>
							About <span>Q&A</span></h2>
							<p class="mt-30">Innovators understand client needs by asking questions. It is the simplest and most effective way of learning. People who think that they know it all no longer ask questions – why should they? Brilliant thinkers never stop asking questions because they know that this is the best way to gain deeper insights. <br> <br>
							That is where Q&A comes in. Have a doubt ask it out in the community of users who are as curious as you are. Remember questions do not have a category.
							</p>
							<a href="#" class="genric-btn primary-border circle arrow">To The Top<span class="lnr lnr-arrow-right"></span></a>
						</div>
					</div>
					<div class="col-lg-6">
						<img class="img-fluid d-flex mx-auto" src="img/about.png" alt="">
					</div>
				</div>
			</div>
		</section>
		<!-- End Team Force Area -->
		<!-- Start Feature Area -->
		<section class="feature-area pt-100 pb-100  relative">
			<div class="overlay overlay-bg"></div>
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-sm-6 d-flex align-items-stretch">
						<div class="single-feature">
							<div class="icon">
								<span class="lnr lnr-laptop-phone"></span>
							</div>
							<div class="desc">
								<h2 class="text-uppercase">How do I give the best answer to an interview question I don't know?</h2>
								<p>
									When it comes to the technical/coding questions: Give it your best shot. Don't immediately give up even if you know you won't be able to find an answer. Being a quitter won't make you an attractive.
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6 d-flex align-items-stretch">
						<div class="single-feature">
							<div class="icon">
								<span class="lnr lnr-graduation-hat"></span>
							</div>
							<div class="desc">
								<h2 class="text-uppercase">What is the Baby Monitor <br>Learning Technology</h2>
								<p>
									While most people enjoy casino gambling, sports betting, lottery and bingo playing for the fun and excitement.
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6 d-flex align-items-stretch">
						<div class="single-feature">
							<div class="icon">
								<span class="lnr lnr-phone"></span>
							</div>
							<div class="desc">
								<h2 class="text-uppercase">How Does An Lcd
								<br>Screen Work?</h2>
								<p>
									It is a good idea to think of your PC as an office. It stores files, programs, pictures. This can be compared to an actual
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6 d-flex align-items-stretch">
						<div class="single-feature">
							<div class="icon">
								<span class="lnr lnr-laptop"></span>
							</div>
							<div class="desc">
								<h2 class="text-uppercase">What does The Skin On Lcd <br>Monitors do?</h2>
								<p>
									Computers have become ubiquitous in almost every facet of our lives. At work, desk jockeys spend hours in front of their
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6 d-flex align-items-stretch">
						<div class="single-feature">
							<div class="icon">
								<span class="lnr lnr-heart"></span>
							</div>
							<div class="desc">
								<h2 class="text-uppercase">What is the Computer Usage of an average Teen?</h2>
								<p>
									About 64% of all on-line teens say that do things online that they wouldn’t want their parents to know about.   11% of all
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6 d-flex align-items-stretch">
						<div class="single-feature">
							<div class="icon">
								<span class="lnr lnr-screen"></span>
							</div>
							<div class="desc">
								<h2 class="text-uppercase">What are the 5 Reasons To Purchase<br> Desktop Computers?</h2>
								<p>
									So you have your new digital camera and clicking away to glory anything and everything in sight. Now you want to print
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Start Feature Area -->
		<!-- Start faq Area -->
		<section class="faq-area pt-100 pb-100">
			<div class="container">
				<div class="row">
					<div class="counter-left col-lg-3 col-md-3">
						<div class="single-facts">
							<h2 class="counter">5962</h2>
							<p>Questions Asked</p>
						</div>
						<div class="single-facts">
							<h2 class="counter">2394</h2>
							<p>Questions Answered</p>
						</div>
						<div class="single-facts">
							<h2 class="counter">1439</h2>
							<p>Users Registered</p>
						</div>
						<div class="single-facts">
							<h2 class="counter">933</h2>
							<p>Users Online</p>
						</div>
					</div>
					<div class="faq-content col-lg-9 col-md-9">
						<div class="single-faq">
							<h2 class="text-uppercase">
								How do I ask a question on the Q&A portal?
							</h2>
							<p>
								You just have to log in using your email. On your dashboard you will be see an option make a post. Select it and you will be able to ask your question.
							</p>
						</div>
						<div class="single-faq">
							<h2 class="text-uppercase">
								Do the questions get posted as soon as I ask them?
							</h2>
							<p>
								No, this is not the case. When you ask a question, it first goes to the moderator, where it is checked for it's relevance, repetitiveness and appropraiteness. If it passes in all those measures it will be posted.
							</p>
						</div>
						<div class="single-faq">
							<h2 class="text-uppercase">
								Can i use answer the questions asked on the portal?
							</h2>
							<p>
								As a matter of fact YES, you can answer questions asked on the portal all you have to do is get yourself registered on the site for free. 
							</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Start faq Area -->
		
		<!-- Strat Footer Area -->
		<footer class="section-gap">
			<div class="container">
				<div class="row pt-60">
					

					<div class="col-lg-3 col-sm-6">
						<div class="single-footer-widget">
							<h6 class="text-uppercase mb-20">Quick About Us</h6>
							<p>
								Q&A was started by a team of three and now it has become a large community.
							</p>
							<p>
								+91 99 88 77 6543 <br>
								</p>
							<div class="footer-social d-flex align-items-center">
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-dribbble"></i></a>
								<a href="#"><i class="fa fa-behance"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="footer-bottom d-flex justify-content-between align-items-center flex-wrap">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					<p class="footer-text m-0">Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by Colorlib</a></p>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</div>
			</div>
		</footer>
		<!-- End Footer Area -->
	</div>

		<script src="js/vendor/jquery-2.2.4.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
		<script src="js/vendor/bootstrap.min.js"></script>
		<script src="js/jquery.ajaxchimp.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/jquery.nice-select.min.js"></script>
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/jquery.counterup.min.js"></script>
		<script src="js/waypoints.min.js"></script>
		<script src="js/main.js"></script>


</body>
</html>
