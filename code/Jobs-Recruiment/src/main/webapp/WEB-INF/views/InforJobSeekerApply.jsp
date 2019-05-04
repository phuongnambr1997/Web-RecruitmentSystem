<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Information Job Seeker</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Roboto+Mono:300,400,500">
<link rel="stylesheet"
	href="<c:url value="/resources/fonts/icomoon/style.css"/>">

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
	href="<c:url value="/resources/css/job_info.css"/>">

<link rel="stylesheet"
	href="<c:url value="/resources/fonts/flaticon/font/flaticon.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/css/fl-bigmug-line.css"/>">

<link rel="stylesheet" href="<c:url value="/resources/css/aos.css"/>">

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
							<a href="/ShowViewRecruiter/${passCodeUser}" class="text-black h2 mb-0">Job<strong>Search</strong></a>
						</h1>
					</div>

					<div class="col-10 col-xl-10 d-none d-xl-block">
						<nav class="site-navigation text-right" role="navigation">

							<ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
								<li><a href="/ShowViewRecruiter/${passCodeUser}">Home</a></li>
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
								<li><a href="/Home" id='signUp'> Sign Out</a></li>
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
			style="background-image: url('/resources/images/hero_bg_2.jpg');">
			<div class="container text-center">
				<h2 class="mb-0">JobSeeker Information</h2>
			</div>
		</div>

		<body>
			<div class="container">
				<div class="table-wrapper">
					<div class="table-title">
						<div class="row">
							<div class="col-sm-6">
								<h2>
									JobSeeker <b>Information</b>
								</h2>
							</div>
						</div>
					</div>
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>ID</th>
								<th>Email</th>
								<th>CV</th>
								<th></th>
							</tr>
						</thead>
						<c:forEach var="listJobSeekerHisNew"
							items="${listJobSeekerHisNew}">
							<tbody>
								<tr>
									<td>${listJobSeekerHisNew.id}</td>
									<td>${listJobSeekerHisNew.email}</td>
									<td><a href="/download/${listJobSeekerHisNew.email}/${listJobSeekerHisNew.postId}" target="_blank">Download</a></td>
									<td><a href="/sendNofiToJobSeeker/${passCodeUser}_${listJobSeekerHisNew.id}" class="btn btn-info" role="button">Done</a>
									</td>
								</tr>
							</tbody>
						</c:forEach>
					</table>
					<div class="clearfix">
						<div id="page-id" class="site-block-27">
							<tag:paginate max="10" offset="${offsetNew}" count="${countNew}"
								uri="${tab}" next="&raquo;" previous="&laquo;" />
						</div>
					</div>

				</div>
			</div>

			<div class="container">
				<div class="table-wrapper">
					<div class="table-title">
						<div class="row">
							<div class="col-sm-6">
								<h2>History</h2>
							</div>
						</div>
					</div>
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>ID</th>
								<th>Email</th>
								<th>CV</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="listJobSeekerHisOld"
							items="${listJobSeekerHisOld}">
							<tr>
								<td>${listJobSeekerHisOld.id}</td>
								<td>${listJobSeekerHisOld.email}</td>
								<td><a href="" target="_blank">Download</a></td>
								<td>${listJobSeekerHisOld.status}</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="clearfix">
						<div id="page-id" class="site-block-27">
							<tag:paginate max="10" offset="${offsetOld}" count="${countOld}"
								uri="${tab}" next="&raquo;" previous="&laquo;" />
						</div>
					</div>
				</div>
			</div>


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
								<li><span class="d-block text-white">Address</span> Ton Duc
									Thang University Nguyen Huu Tho Street, Ho Chi Minh City</li>
								<li><span class="d-block text-white">Telephone</span>
									+84386459031</li>
								<li><span class="d-block text-white">Email</span>
									phuongnambr1997@gmail.com</li>
							</ul>

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