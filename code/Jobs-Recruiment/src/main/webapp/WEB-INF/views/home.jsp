<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Job Search</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
							<a href="#" class="text-black h2 mb-0">Job<strong>Search</strong></a>
						</h1>
					</div>

					<div class="col-10 col-xl-10 d-none d-xl-block">
						<nav class="site-navigation text-right" role="navigation">

							<ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
								<li class="active"><a href="#">Home</a></li>
								<li class="has-children"><a href="category.html">Category</a>
									<ul class="dropdown">
										<li><a href="#">Full Time</a></li>
										<li><a href="#">Part Time</a></li>
										<li><a href="#">Freelance</a></li>
										<li><a href="#">Internship</a></li>
									</ul></li>
								<li><a href="blog.html">Blog</a></li>
								<li><a href="about.html">About</a></li>
								<li><a href="contact.html">Contact</a></li>
								<li><a href="/NewJob"><span
										class="rounded bg-primary py-2 px-3 text-white"><span
											class="h5 mr-2">+</span> Post a Job</span></a></li>
								<li><a href="/Login">Login</a></li>
								<li><a href="/SignUp"> Sign Up</a></li>
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

		<div class="site-blocks-cover"
			style="background-image: url(/resources/images/hero_1.jpg);"
			data-aos="fade" data-stellar-background-ratio="0.5">
			<div class="container">
				<div class="row row-custom align-items-center">
					<div class="col-md-10">
						<h1 class="mb-2 text-black w-75">
							<span class="font-weight-bold">Find </span>Your Job on Website
						</h1>
						<div class="job-search">
							<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
								<li class="nav-item"><a class="nav-link active py-3"
									id="pills-job-tab" data-toggle="pill" href="#pills-job"
									role="tab" aria-controls="pills-job" aria-selected="true">Find
										A Job</a></li>
							</ul>
							<div class="tab-content bg-white p-4 rounded"
								id="pills-tabContent">
								<div class="tab-pane fade show active" id="pills-job"
									role="tabpanel" aria-labelledby="pills-job-tab">
									<form action="#" method="post">
										<div class="row">
											<div class="col-md-6 col-lg-3 mb-3 mb-lg-0">
												<input type="text" class="form-control"
													placeholder="eg. Web Developer">
											</div>
											<div class="col-md-6 col-lg-3 mb-3 mb-lg-0">
												<div class="select-wrap">
													<span class="icon-keyboard_arrow_down arrow-down"></span> <select
														name="" id="" class="form-control">
														<option value="1">All Jobs</option>
														<option value="2">Electronic</option>
														<option value="3">Information Technology</option>
														<option value="4">Accountant</option>
														<option value="5">Office Job</option>
													</select>
												</div>
											</div>
											<div class="col-md-6 col-lg-3 mb-3 mb-lg-0">
												<div class="select-wrap">
													<span class="icon-keyboard_arrow_down arrow-down"></span> <select
														name="" id="" class="form-control">
														<option value="1">All Locations</option>
														<option value="2">Ho Chi Minh</option>
														<option value="3">Da Nang</option>
														<option value="4">Ha Noi</option>
														<option value="5">Vung Tau</option>
													</select>
												</div>
											</div>
											<div class="col-md-6 col-lg-3 mb-3 mb-lg-0">
												<input type="submit" class="btn btn-primary btn-block"
													value="Search">
											</div>
										</div>
									</form>
								</div>
								<div class="tab-pane fade" id="pills-candidate" role="tabpanel"
									aria-labelledby="pills-candidate-tab">
									<form action="#" method="post">
										<div class="row">
											<div class="col-md-6 col-lg-3 mb-3 mb-lg-0">
												<input type="text" class="form-control"
													placeholder="eg. Carl Smith">
											</div>
											<div class="col-md-6 col-lg-3 mb-3 mb-lg-0">
												<div class="select-wrap">
													<span class="icon-keyboard_arrow_down arrow-down"></span> <select
														name="" id="" class="form-control">
														<option value="">Category</option>
														<option value="fulltime">Full Time</option>
														<option value="fulltime">Part Time</option>
														<option value="freelance">Freelance</option>
														<option value="internship">Internship</option>
													</select>
												</div>
											</div>
											<div class="col-md-6 col-lg-3 mb-3 mb-lg-0">
												<input type="text"
													class="form-control form-control-block search-input"
													id="autocomplete" placeholder="Location"
													onFocus="geolocate()">
											</div>
											<div class="col-md-6 col-lg-3 mb-3 mb-lg-0">
												<input type="submit" class="btn btn-primary btn-block"
													value="Search">
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section bg-light">
			<div class="container">
				<div class="row justify-content-start text-left mb-5">
					<div class="col-md-9" data-aos="fade">
						<h2 class="font-weight-bold text-black">Recent Jobs</h2>
					</div>
					<div class="col-md-3" data-aos="fade" data-aos-delay="200">
						<a href="#" class="btn btn-primary py-3 btn-block"><span
							class="h5">+</span> Post a Job</a>
					</div>
				</div>
					<c:forEach var="listJobpost" items="${listJobpost}">
							<div class="row" data-aos="fade">
								<div class="col-md-12">

									<div
										class="job-post-item bg-white p-4 d-block d-md-flex align-items-center">

										<div class="mb-4 mb-md-0 mr-5">
											<div class="job-post-item-header d-flex align-items-center">
												<img class="img-responsive" alt="" src="<c:url value="/resources/uploaded-images/${listJobpost.image}"></c:url>">
												<h2 class="mr-3 text-black h4" style="margin-left: 1em">${listJobpost.jobName}</h2>

											</div>
											<div class="job-post-item-body d-block d-md-flex">
												<div class="mr-3">
													<span class="fl-bigmug-line-portfolio23"></span>
													${listJobpost.companyName}
												</div>
												<div>
													<span class="fl-bigmug-line-big104"></span>
													${listJobpost.location}
												</div>

												<div>
													&nbsp; <span class="fl-bigmug-line-nine16"></span></a>
													${listJobpost.date}
												</div>
											</div>
										</div>

										<div class="ml-auto">
											<a href="job-single.html" class="btn btn-primary py-2">Apply
												Job</a>
										</div>
									</div>

								</div>
							</div>
					</c:forEach>
				<div class="row mt-5">
					<div class="col-md-12 text-center">
						<div id="page-id" class="site-block-27">
							<tag:paginate max="10" offset="${offset}" count="${count}"
								uri="${tab}" next="&raquo;" previous="&laquo;" />
							<!-- ul>
								<li><a href="#"><i class="icon-keyboard_arrow_left h5"></i></a></li>
								<li class="active"><span>1</span></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#"><i class="icon-keyboard_arrow_right h5"></i></a></li>
							</ul> -->
						</div>
					</div>
				</div>


			</div>
		</div>

		<div class="py-5 bg-primary">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h2 class="text-white h4 font-weihgt-normal mb-4">Subscribe
							Newsletter</h2>
					</div>
				</div>
				<form action="" class="row">
					<div class="col-md-9">
						<input type="text" class="form-control border-0 mb-3 mb-md-0"
							placeholder="Enter Your Email">
					</div>
					<div class="col-md-3">
						<input type="submit" value="Send" class="btn btn-dark btn-block"
							style="height: 45px;">
					</div>
				</form>
			</div>
		</div>
		<footer class="site-footer">
			<div class="container">



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

	<script>
		var placeSearch, autocomplete;
		var componentForm = {
			street_number : 'short_name',
			route : 'long_name',
			locality : 'long_name',
			administrative_area_level_1 : 'short_name',
			country : 'long_name',
			postal_code : 'short_name'
		};

		function initAutocomplete() {
			// Create the autocomplete object, restricting the search to geographical
			// location types.
			autocomplete = new google.maps.places.Autocomplete(
			/** @type {!HTMLInputElement} */
			(document.getElementById('autocomplete')), {
				types : [ 'geocode' ]
			});

			// When the user selects an address from the dropdown, populate the address
			// fields in the form.
			autocomplete.addListener('place_changed', fillInAddress);
		}

		function fillInAddress() {
			// Get the place details from the autocomplete object.
			var place = autocomplete.getPlace();

			for ( var component in componentForm) {
				document.getElementById(component).value = '';
				document.getElementById(component).disabled = false;
			}

			// Get each component of the address from the place details
			// and fill the corresponding field on the form.
			for (var i = 0; i < place.address_components.length; i++) {
				var addressType = place.address_components[i].types[0];
				if (componentForm[addressType]) {
					var val = place.address_components[i][componentForm[addressType]];
					document.getElementById(addressType).value = val;
				}
			}
		}

		// Bias the autocomplete object to the user's geographical location,
		// as supplied by the browser's 'navigator.geolocation' object.
		function geolocate() {
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(function(position) {
					var geolocation = {
						lat : position.coords.latitude,
						lng : position.coords.longitude
					};
					var circle = new google.maps.Circle({
						center : geolocation,
						radius : position.coords.accuracy
					});
					autocomplete.setBounds(circle.getBounds());
				});
			}
		}
	</script>

	<script
		src="<c:url value="/resources/https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&libraries=places&callback=initAutocomplete"/>"
		async defer></script>

	<script src="<c:url value="/resources/js/main.js"/>"></script>

</body>
</html>