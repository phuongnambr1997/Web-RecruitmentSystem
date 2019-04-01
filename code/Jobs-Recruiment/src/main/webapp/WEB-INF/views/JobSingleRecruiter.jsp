<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Jobstart &mdash; Colorlib Website Template</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Roboto+Mono:300,400,500">
<link rel="stylesheet"
	href="<c:url value="/resources/fonts/icomoon/style_detail.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/fonts/icomoon/style_.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/css/magnific-popup.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/css/jquery-ui.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/css/owl.carousel.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/css/owl.theme.default.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap-datepicker.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/css/animate.css"/>">


<link rel="stylesheet"
	href="<c:url value="/resources/fonts/flaticon/font/flaticon.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/css/fl-bigmug-line.css"/>">

<link rel="stylesheet" href="<c:url value="/resources/css/aos.css"/>">

<link rel="stylesheet"
	href="<c:url value="/resources/css/style_detail.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
</head>
<body>

	<div class="site-wrap">

		<div class="site-mobile-menu">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close mt-3">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>
		<!-- .site-mobile-menu -->


		<header class="site-navbar py-1" role="banner">

			<div class="container">
				<div class="row align-items-center">

					<div class="col-6 col-xl-2">
						<h1 class="mb-0">
							<a href="index.html" class="text-black h2 mb-0">Job<strong>start</strong></a>
						</h1>
					</div>

					<div class="col-10 col-xl-10 d-none d-xl-block">
						<nav class="site-navigation text-right" role="navigation">

							<ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
								<li><a href="index.html">Home</a></li>
								<li class="has-children"><a href="category.html">Category</a>
									<ul class="dropdown">
										<li><a href="#">Full Time</a></li>
										<li><a href="#">Part Time</a></li>
										<li><a href="#">Freelance</a></li>
										<li><a href="#">Internship</a></li>
										<li><a href="#">Termporary</a></li>
									</ul></li>
								<li><a href="blog.html">Blog</a></li>
								<li><a href="about.html">About</a></li>
								<li><a href="contact.html">Contact</a></li>
								<!-- <li><a href="new-post.html"><span
										class="rounded bg-primary py-2 px-3 text-white"><span
											class="h5 mr-2">+</span> Post a Job</span></a></li> -->
							</ul>
						</nav>
					</div>

					<div class="col-6 col-xl-2 text-right d-block">

						<div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3"
							style="position: relative; top: 3px;">
							<a href="#" class="site-menu-toggle js-menu-toggle text-black"><span
								class="icon-menu h3"></span></a>
						</div>

					</div>

				</div>
			</div>

		</header>

		<div class="unit-5 overlay"
			style="background-image: url('images/hero_bg_2.jpg');">
			<div class="container text-center">

				<p class="mb-0 unit-6">
					<a href="index.html">Home</a> <span class="sep">></span> <span>Job
						Item</span>
				</p>
			</div>
		</div>

		<!-- Job Single Content Starts -->
		<section class="job-single-content section-padding">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<div class="main-content">
							<div class="single-content1">
								<div class="single-job mb-4 d-lg-flex justify-content-between">
									<img class="img-responsive"  alt=""
										src="<c:url value="/resources/uploaded-images/${jobPost.image}"></c:url>">

									<div class="job-text">
										<h4>${jobPost.jobName}</h4>
										<ul class="mt-4">
											<!--                                       <li class="mb-3"><h5><span class="fl-bigmug-line-portfolio23"></span> </h5></li>
 -->
											<li class="mb-3"><span class="fl-bigmug-line-big104"></span>
												${jobPost.companyName}
												</h5></li>
											<li><h5>
													<span class="fl-bigmug-line-nine16"></span> Expires in 25
													days
												</h5></li>
										</ul>
									</div>
									<!-- <div class="job-btn align-self-center">
										<a href="#" class="forth-btn">Save</a>
									</div> -->
								</div>
							</div>
							<div class="single-content2 py-4">
								<h4>WHAT WE CAN OFFER</h4>
								<p>
									<span class="fl-bigmug-line-play83"></span> ${jobPost.offer}
								</p>
							</div>
							<div class="single-content3 py-4">
								<h4>JOB DESCRIPTION</h4>
								<textarea class="form-control" id="" cols="30" rows="15"> ${jobPost.jobDes}</textarea>
							</div>
							<div class="single-content4 py-4">
								<h4>JOB REQUIREMENTS</h4>
								<textarea class="form-control" id="" cols="30" rows="15">${jobPost.jobRe}</textarea>
							</div>
							<div class="single-content6 py-4">
								<h4>employment status</h4>
								<span>${jobPost.emplStatus}</span>
							</div>

						</div>
					</div>
					<div class="col-lg-4">
						<div class="sidebar">
							<div class="single-item py-4">
								<div class="single-content2 mb-4">
									<h5>
										<span class="fl-bigmug-line-clipboard68"></span> POSTED DATE
									</h5>
									<span>${jobPost.date}</span>
								</div>
								<div class="single-content3 mb-4">
									<h5>
										<span class="fl-bigmug-line-notification5"></span> JOB LEVEL
									</h5>
									<span>${jobPost.expLevel}</span>
								</div>
								<div class="single-content4 mb-4">
									<h5>
										<span class="fl-bigmug-line-wrench66"></span> SKILL
									</h5>
									<span>${jobPost.skill}</span>
								</div>
								<div class="single-content5 mb-4">
									<h5>
										<span class="fl-bigmug-line-chat51"></span> PREFERRED LANGUAGE
									</h5>
									<span>${jobPost.refLang}</span>
								</div>
							</div>
							<br>
							<div class="single-item py-4">
								<div class="single-content2 mb-4">
									<h5>
										<span class="fl-bigmug-line-clipboard68"></span> LOCATION
									</h5>
									<span>${jobPost.location}</span>
								</div>
								<div class="single-content3 mb-4">
									<h5>
										<span class="fl-bigmug-line-notification5"></span> COMPANY
										SIZE
									</h5>
									<span>${jobPost.companySize}</span>
								</div>
								<div class="single-content4 mb-4">
									<h5>
										<span class="fl-bigmug-line-wrench66"></span> CONTACT PERSON
									</h5>
									<span>${jobPost.inforContact}</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Job Single Content End -->


		<footer class="site-footer">
			<div class="container">


				<div class="row">
					<div class="col-lg-9">
						<div class="row">
							<div class="col-6 col-md-3 col-lg-3 mb-5 mb-lg-0">
								<h3 class="footer-heading mb-4">For Candidates</h3>
								<ul class="list-unstyled">
									<li><a href="#">Register</a></li>
									<li><a href="#">Find Jobs</a></li>
									<li><a href="#">News</a></li>
									<li><a href="#">Search Jobs</a></li>
									<li><a href="#">Contact</a></li>
									<li><a href="#">Careers</a></li>
								</ul>
							</div>
							<div class="col-6 col-md-3 col-lg-3 mb-5 mb-lg-0">
								<h3 class="footer-heading mb-4">For Employers</h3>
								<ul class="list-unstyled">
									<li><a href="#">Employer Account</a></li>
									<li><a href="#">Clients</a></li>
									<li><a href="#">News</a></li>
									<li><a href="#">Find Candidates</a></li>
									<li><a href="#">Terms &amp; Policies</a></li>
									<li><a href="#">Careers</a></li>
								</ul>
							</div>
							<div class="col-6 col-md-3 col-lg-3 mb-5 mb-lg-0">
								<h3 class="footer-heading mb-4">Archives</h3>
								<ul class="list-unstyled">
									<li><a href="#">January 2018</a></li>
									<li><a href="#">February 2018</a></li>
									<li><a href="#">March 2018</a></li>
									<li><a href="#">April 2018</a></li>
									<li><a href="#">May 2018</a></li>
									<li><a href="#">June 2918</a></li>
								</ul>
							</div>
							<div class="col-6 col-md-3 col-lg-3 mb-5 mb-lg-0">
								<h3 class="footer-heading mb-4">Company</h3>
								<ul class="list-unstyled">
									<li><a href="#">About</a></li>
									<li><a href="#">Team</a></li>
									<li><a href="#">Terms &amp; Policies</a></li>
									<li><a href="#">Contact Us</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<h3 class="footer-heading mb-4">Contact Info</h3>
						<ul class="list-unstyled">
							<li><span class="d-block text-white">Address</span> New York
								- 2398 10 Hadson Carl Street</li>
							<li><span class="d-block text-white">Telephone</span> +1 232
								305 3930</li>
							<li><span class="d-block text-white">Email</span>
								info@yourdomain.com</li>
						</ul>

					</div>
				</div>
				<div class="row pt-5 mt-5 text-center">
					<div class="col-md-12">
						<p>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script data-cfasync="false"
								src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
							<script>
								document.write(new Date().getFullYear());
							</script>
							All Rights Reserved | This template is made with <i
								class="icon-heart text-danger" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>

				</div>
			</div>
		</footer>
	</div>

	<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
	<script
		src="<c:url value="/resources/js/jquery-migrate-3.0.1.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery-ui.js"/>"></script>
	<script src="<c:url value="/resources/js/popper.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.stellar.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.countdown.min.js"/>"></script>
	<script
		src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>
	<script
		src="<c:url value="/resources/js/bootstrap-datepicker.min.js"/>"></script>
	<script src="<c:url value="/resources/js/aos.js"/>"></script>


	<script src="<c:url value="/resources/js/main.js"/>"></script>
</body>
</html>