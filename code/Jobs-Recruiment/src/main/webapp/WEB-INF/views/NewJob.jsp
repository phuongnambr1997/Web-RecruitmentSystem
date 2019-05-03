<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Jobstart &mdash; Colorlib Website Template</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="fonts/icomoon/style.css">

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
						<a href="index.html" class="text-black h2 mb-0">Job<strong>Search</strong></a>
					</h1>
				</div>

				<div class="col-10 col-xl-10 d-none d-xl-block">
					<nav class="site-navigation text-right" role="navigation">

					<ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
						<li><a href="index.html">Home</a></li>
						<li><a href="blog.html">Blog</a></li>
						<li><a href="about.html">About</a></li>
						<li class="active"><a href="contact.html">Contact</a></li>
						<li><a href="new-post.html"><span
								class="rounded bg-primary py-2 px-3 text-white"><span
									class="h5 mr-2">+</span> Post a Job</span></a></li>
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
				<h2 class="mb-0">Post a Job</h2>
				<p class="mb-0 unit-6">
					<a href="index.html">Home</a> <span class="sep">></span> <span>Post
						a Job</span>
				</p>
			</div>
		</div>




		<div class="site-section bg-light">
			<div class="container">
				<div class="col-md-12 col-lg-12 mb-5">

					<form:form action="/SaveJob/${passCodeUser}" class="p-5 bg-white" method="POST"
						enctype="multipart/form-data" modelAttribute="fileUploadModel">
						<h2>It’s our pleasure to support you recruiting your next
							awesome teammate.</h2>
						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0 style="text-align:center;>
								<div style="width: 75%; margin: auto;">
									<form:input path="userName" type="hidden" id="userName"
										class="form-control" value="${userName}" />
								</div>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0 style="text-align:center;>
								<div style="width: 75%; margin: auto;">
									<label class="font-weight-bold" for="fullname">Company
										Name</label>
									<form:input path="companyName" type="text" id="fullname"
										class="form-control" required="required"
										placeholder="eg. Vingroup" />
								</div>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0 style="text-align:center;>
								<div style="width: 75%; margin: auto;">
									<label class="font-weight-bold" for="location">Career</label>
									<form:select path="career" name="career" id="career"
										class="form-control">
										<form:option value="Accounting">Accounting</form:option>
														<form:option value="Administration & Office Support">Administration
															& Office Support</form:option>
														<form:option value="Agriculture, Animals & Conservation">Agriculture,
															Animals & Conservation</form:option>
														<form:option value="Architecture & Design">Architecture
															& Design</form:option>
														<form:option value="Banking & Financial Services">Banking
															& Financial Services</form:option>
														<form:option value="Communications, Advertising, Arts & Media">Communications,
															Advertising, Arts & Media</form:option>
														<form:option value="Community Services">Community
															Services</form:option>
														<form:option value="Construction">Construction</form:option>
														<form:option value="Customer Service & Call Centre">Customer
															Service & Call Centre</form:option>
														<form:option value="Defence & Protective Services">Defence
															& Protective Services</form:option>
														<form:option value="Education & Training">Education &
															Training</form:option>
														<form:option value="Engineering">Engineering</form:option>
														<form:option value="Executive & General Management">Executive
															& General Management</form:option>
														<form:option value="Health & Medical">Health & Medical</form:option>
														<form:option value="Hospitality & Tourism">Hospitality
															& Tourism</form:option>
														<form:option value="Human Resources & Recruitment">Human
															Resources & Recruitment</form:option>
														<form:option value="IT">Information - Technology</form:option>
														<form:option value="Insurance & Superannuation">Insurance
															& Superannuation</form:option>
														<form:option value="Legal">Legal</form:option>
														<form:option value="Manufacturing">Manufacturing</form:option>
														<form:option value="Mining & Energy">Mining & Energy</form:option>
														<form:option value="Real Estate & Property">Real
															Estate & Property</form:option>
														<form:option value="Retail">Retail</form:option>
														<form:option value="Sales">Sales</form:option>
														<form:option value="Science">Science</form:option>
														<form:option value="Sport & Recreation">Sport &
															Recreation</form:option>
														<form:option value="Trades & Services">Trades &
															Services</form:option>
														<form:option value="Transport & Logistics">Transport &
															Logistics</form:option>

									</form:select>
								</div>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0 style="text-align:center;>
								<div style="width: 75%; margin: auto;">
									<label class="font-weight-bold" for="jobname">Job Name</label>
									<form:input path="jobName" type="text" id="jobname"
										class="form-control" required="required"
										placeholder="eg. Web Developer" />
								</div>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0 style="text-align:center;>
								<div style="width: 75%; margin: auto;">
									<label class="font-weight-bold" for="location">Location</label>
									<form:select path="location" name="location" id="location"
										class="form-control">
										<form:option value="Hồ Chí Minh">Hồ Chí Minh</form:option>
										<form:option value="Hà Nội">Hà Nội</form:option>
										<form:option value="Đà Nẵng">Đà Nẵng</form:option>
										<form:option value="Huế">Huế</form:option>
										<form:option value="Cần Thơ">Cần Thơ</form:option>
									</form:select>
								</div>
							</div>
						</div>


						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0 style="text-align:center;>
								<div style="width: 75%; margin: auto;">
									<label class="font-weight-bold" for="skill">Skill</label>
									<form:input path="skill" type="text" id="skill"
										class="form-control" required="required"
										placeholder="eg. HTML, CSS" />
								</div>
							</div>
						</div>


						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0 style="text-align:center;>
								<div style="width: 75%; margin: auto;">
									<label class="font-weight-bold" for="status">Employment
										Status</label>
									<form:select path="emplStatus" name="status" id="status"
										class="form-control">
										<form:option value="Full Time">Full Time</form:option>
										<form:option value="Part Time">Part Time</form:option>
									</form:select>
								</div>
							</div>
						</div>


						<%-- <div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0 style="text-align:center;>
								<div style="width: 75%; margin: auto;">
									<label class="font-weight-bold" for="level">Job Level</label>

									<form:input path="" type="text" id="level" class="form-control" required="required" placeholder="eg. Manager" />
								</div>
							</div>
						</div> --%>


						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0 style="text-align:center;>
								<div style="width: 75%; margin: auto;">
									<label class="font-weight-bold" for="email">Experience
										Level</label>
									<form:select path="expLevel" name="year_exp" id="year_exp"
										class="form-control">
										<form:option value="0 - 6 months">0 - 6 months</form:option>
										<form:option value="6 - 1 years">6 - 1 years</form:option>
										<form:option value="1 - 2 years">1 - 2 years</form:option>
										<form:option value="2 - 3 years">2 - 3 years</form:option>
										<form:option value="Over 3 years">Over 3 years</form:option>

									</form:select>
								</div>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0 style="text-align:center;>
								<div style="width: 75%; margin: auto;">
									<label class="font-weight-bold" for="language">Preferred
										Language</label>
									<form:input path="refLang" type="text" id="language"
										class="form-control" required="required"
										placeholder="eg. English" />
								</div>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0 style="text-align:center;>
								<div style="width: 75%; margin: auto;">
									<label class="font-weight-bold" for="size">Company Size</label>

									<form:input path="companySize" type="text" id="size"
										class="form-control" required="required"
										placeholder="eg. 200000 staffs" />
								</div>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0 style="text-align:center;>
								<div style="width: 75%; margin: auto;">
									<label class="font-weight-bold" for="cont">Contact</label>
									<form:input path="inforContact" type="text" id="cont"
										class="form-control" required="required"
										placeholder="eg. Mr Linh" />
								</div>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0 style="text-align:center;>
								<div style="width: 75%; margin: auto;">
									<label class="font-weight-bold" for="cont">Address</label>
									<form:input path="address" type="text" id="cont"
										class="form-control" required="required"
										placeholder="eg. 6 Nguyen Thi Thap,Quan 7,TPHCM" />
								</div>
							</div>
						</div>


						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0 style="text-align:center;>
								<div style="width: 75%; margin: auto;">
									<label class="font-weight-bold" for="salary">Offer</label>
									<form:textarea path="offer" name="" class="form-control"
										id="offer" cols="15" rows="5" placeholder="eg. 1000$"
										required="required" />
								</div>
							</div>
						</div>


						<div class="row form-group">
							<div class="col-md-12">
								<h3>Job Description</h3>
							</div>
							<div class="col-md-12 mb-3 mb-md-0">
								<form:textarea path="jobDes" name="" class="form-control" id=""
									cols="30" rows="7" required="required" />
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<h3>Job Requirements</h3>
							</div>
							<div class="col-md-12 mb-3 mb-md-0">
								<form:textarea path="jobRe" name="" class="form-control" id=""
									cols="30" rows="7" required="required" />
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0 style="text-align:center;>
								<div style="width: 75%; margin: auto;">
									<label class="font-weight-bold" for="jobname">Upload
										Avatar</label> <input type="file" name="file">
								</div>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12">
								<input type="submit" value="Post"
									class="btn btn-primary  py-2 px-5">
							</div>
						</div>
				</div>
				</form:form>
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
					<li><span class="d-block text-white">Address</span> New York -
						2398 10 Hadson Carl Street</li>
					<li><span class="d-block text-white">Telephone</span> +1 232
						305 3930</li>
					<li><span class="d-block text-white">Email</span>
						info@yourdomain.com</li>
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