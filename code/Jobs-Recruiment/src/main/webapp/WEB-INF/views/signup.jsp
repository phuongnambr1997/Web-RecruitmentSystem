<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
         <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
    
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Sign Up</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<c:url value=" /resources/images/icons/favicon.ico"/>"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value=" /resources/vendor_signup/bootstrap/css/bootstrap.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value=" /resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value=" /resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value=" /resources/fonts/iconic/css/material-design-iconic-font.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value=" /resources/vendor_signup/animate/animate.css"/>">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value=" /resources/vendor_signup/css-hamburgers/hamburgers.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value=" /resources/vendor_signup/animsition/css/animsition.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value=" /resources/vendor_signup/select2/select2.min.css"/>">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value=" /resources/vendor_signup/daterangepicker/daterangepicker.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value=" /resources/css/util.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value=" /resources/css/main.css"/>">
<!--===============================================================================================-->
</head>
<body style="background-color: #999999;">
	
	<div class="limiter">
		<div class="container-login100">
		
				<div class="wrap-login100">
					<div class="login100-form-title" style="background-image: url(/resources/images/bg-01.jpg);">
						<span class="login100-form-title-1">
							Sign Up
						</span>
					</div>
					<form:form action="Registration" method="POST" modelAttribute="registration">	
					<div class="wrap-input100 validate-input" data-validate="Name is required">
						<span class="label-input100">Full Name</span>
						<form:input path="name" class="input100" type="text" name="name" placeholder="Name..." required="required"/>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<span class="label-input100">Email</span>
						<form:input path="email" class="input100" type="text" name="email" placeholder="Email addess..." required="required"/>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Username is required">
						<span class="label-input100">Username</span>
						<form:input path="username" class="input100" type="text" name="username" placeholder="Username..." required="required"/>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						 <span class="label-input100">Password</span>
						 <form:input path="password" id="password" class="input100" type="password" name="password"  placeholder="Password..." required="required"/>
						<span class="focus-input100" ></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Confirm Password is required">
					<input id="confirm_password" class="input100" type="password" name="confirm_password" placeholder="Repeat Password..." onkeyup="check()" required="required">
					<span style="display: none;" id="message"> </span>
					</div >
					
					<div class="wrap-input100 validate-input" >
					<form:select path="roleId" style="color:#555555;" name="roleId" id="type" class="form-control">
								<form:option value="1">Recruiter</form:option>
								<form:option value="2">Job Seeker</form:option>								
					</form:select>
						<span class="focus-input100"></span>
						
					</div>
					<div class="flex-m w-full p-b-33">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me" required="required">
							<label class="label-checkbox100" for="ckb1">
								<span class="txt1">
									I agree to the
									<a href="#" class="txt2 hov1">
										Terms of User
									</a>
								</span>
							</label>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<input class="login100-form-btn" value="Sign Up" type="submit" name="submit" id="submit"/>
						</div>
				</form:form>

						<a href="/Login" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30">
							Sign in
							<i class="fa fa-long-arrow-right m-l-5"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
	function check() {
	    if(document.getElementById('password').value ===
	            document.getElementById('confirm_password').value) {
	        document.getElementById('message').innerHTML = "matching";
	        document.getElementById('message').style.display="none";
	    } else {
	        document.getElementById('message').innerHTML = "No Matching";
	        document.getElementById('message').style.color = 'red';
	        document.getElementById('message').style.display="block";
	    }
	}
	</script>
<!--===============================================================================================-->
	<script src="<c:url value=" /resources/vendor_signup/jquery/jquery-3.2.1.min.js"/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value=" /resources/vendor_signup/animsition/js/animsition.min.js"/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value=" /resources/vendor_signup/bootstrap/js/popper.js"/>"></script>
	<script src="<c:url value=" /resources/vendor_signup/bootstrap/js/bootstrap.min.js"/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value=" /resources/vendor_signup/select2/select2.min.js"/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value=" /resources/vendor_signup/daterangepicker/moment.min.js"/>"></script>
	<script src="<c:url value=" /resources/vendor_signup/daterangepicker/daterangepicker.js"/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value=" /resources/vendor_signup/countdowntime/countdowntime.js"/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value=" /resources/js/main_signup.js"/>"></script>

</body>
</html>