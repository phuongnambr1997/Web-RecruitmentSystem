<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Profile</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Roboto+Mono:300,400,500"> 
    <link rel="stylesheet" href="<c:url value="/resources/fonts/icomoon/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/fonts/icomoon/style_.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/magnific-popup.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/jquery-ui.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/owl.theme.default.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-datepicker.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/animate.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/fonts/flaticon/font/flaticon.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/fl-bigmug-line.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/aos.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/profile.css"/>">
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
    </div> <!-- .site-mobile-menu -->
    
    
    <header class="site-navbar py-1" role="banner">

      <div class="container">
        <div class="row align-items-center">
          
          <div class="col-6 col-xl-2">
            <h1 class="mb-0"><a href="index.html" class="text-black h2 mb-0">Job<strong>Search</strong></a></h1>
          </div>

          <div class="col-10 col-xl-10 d-none d-xl-block">
            <nav class="site-navigation text-right" role="navigation">

              <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                <li><a href="#">Home</a></li>
                <li class="has-children">
                  <a href="category.html">Category</a>
                  <ul class="dropdown">
                    <li><a href="#">Full Time</a></li>
                    <li><a href="#">Part Time</a></li>
                    <li><a href="#">Freelance</a></li>
                    <li><a href="#">Internship</a></li>
                    <li><a href="#">Termporary</a></li>
                  </ul>
                </li>
                <li><a href="blog.html">Blog</a></li>
                <li><a href="about.html">About</a></li>
                <li class="active"><a href="contact.html">Contact</a></li>
                <li><a href="new-post.html"><span class="rounded bg-primary py-2 px-3 text-white"><span class="h5 mr-2">+</span> Post a Job</span></a></li>
              </ul>
            </nav>
          </div>

          <div class="col-6 col-xl-2 text-right d-block">
            
            <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

          </div>

        </div>
      
    </header>

    <div class="unit-5 overlay" style="background-image: url('resources/images/hero_bg_2.jpg');">
      <div class="container text-center">
        <h2 class="mb-0">Profile</h2>
        
      </div>
    </div>

    <div class="col-md-12">    
              <div class="box">
                  <img src="/resources/images/avatar.jpg" class="img-responsive" alt=""> </div>
              <div class="profile-usertitle">
                  <div class="profile-usertitle-name"> ${inforUser.name} </div>
                  <div class="profile-usertitle-job"> ${inforUser.career} </div>
              </div>
              <form:form action="/Save-Profile/${passCodeUser}" modelAttribute="inforUser" method="POST">
                                <div class="row form-group">
                                    <div class="col-md-12 mb-3 mb-md-0 style="text-align: center;>
                                        <div style="width: 50%; margin: auto;">
                                  <label class="font-weight-bold" for="inputEmail">Email</label>
                                  <form:input path="email" type="email" class="form-control" id="inputEmail" value ="${inforUser.email}" readonly="true"/>
                                </div>
                                    </div>
                                  </div>
                                  <div class="row form-group">
                                          <div class="col-md-12 mb-3 mb-md-0 style="text-align: center;>
                                              <div style="width: 50%; margin: auto;">
                                  <label class="font-weight-bold" for="inputUsername">UserName</label>
                                  <form:input path="userName" type="text" class="form-control" id="inputUsername" value ="${inforUser.userName}" readonly="true"/>
                                </div>
                                  </div>
                                </div>
                                  <div class="row form-group">
                                      <div class="col-md-12 mb-3 mb-md-0 style="text-align: center;>
                                          <div style="width: 50%; margin: auto;">
                                                <label class="font-weight-bold" for="inputFullname">Fullname</label>
                                                <form:input path="name" type="text" value="${inforUser.name}" class="form-control" id="inputFullname"/>
                                              </div>
                                            </div>
                                          </div>
                                          <div class="row form-group">
                                      <div class="col-md-12 mb-3 mb-md-0 style="text-align: center;>
                                          <div style="width: 50%; margin: auto;">
                                                <label class="font-weight-bold" for="inputFullname">Career</label>
                                                <form:input path="career"  type="text" class="form-control" id="inputFullname" placeholder="eg: Developer"/>
                                              </div>
                                            </div>
                                          </div>
                                <div class="row form-group">
                                    <div class="col-md-12 mb-3 mb-md-0 style="text-align: center;>
                                        <div style="width: 50%; margin: auto;">
                                                <label class="font-weight-bold" for="inputPhone">Phone</label>
                                                <form:input path="phone" type="text" class="form-control" id="inputPhone" placeholder="eg: 123456789"/>
                                              </div>
                                            </div>
                                          </div>
                                <div class="row form-group">
                                    <div class="col-md-12 mb-3 mb-md-0 style="text-align: center;>
                                        <div style="width: 50%; margin: auto;">
                                                <label class="font-weight-bold" for="inputAddress">Address</label>
                                                <form:input path="address" type="text" class="form-control" id="inputAddress" placeholder="eg: HCMC"/>
                                              </div>
                                            </div>
                                          </div>
                                <div class="row form-group">
                                    <div class="col-md-12 mb-3 mb-md-0 style="text-align: center;>
                                        <div style="width: 50%; margin: auto;">
                                                <label class="font-weight-bold" for="inputBirthday">Birthday</label>
                                <form:input path="birthDay" type="date" class="form-control" id="inputBirthday"
                                    name="inputBirthday" value="1997-12-24"
                                    min="1900-1-1" max="2019-1-1"/>
                                              </div>
                                            </div>
                                          </div>
                                <div class="row form-group">
                                    <div class="col-md-12 mb-3 mb-md-0 style="text-align: center;>
                                        <div style="width: 50%; margin: auto;">
                                            <label class="font-weight-bold" for="inputSex">Sex</label>
                                            <label class="container" >Male
                                            <form:radiobutton path="sex" value="Male" checked="checked" name="radio"/>
                                                <span class="checkmark"></span>
                                              </label>
                                              <label class="container">Female
                                              <form:radiobutton path="sex" value="Female" name="radio"/>
                                                <span class="checkmark"></span>
                                              </label>
                                              </div>
                                            </div>
                                          </div>
                                
                                         <!--  <div class="row form-group">
                                              <div class="col-md-12 mb-3 mb-md-0 style="text-align: center;>
                                                  <div style="width: 50%; margin: auto;">
                                <div class="col-md-12"><h3>About me</h3></div>
                                <textarea name="" class="form-control" id="" cols="80" rows="6"></textarea>
                                </div>
                              </div>
                            </div>        -->                  
                          <div class="row form-group">
                              <div style="width: 50%; margin: auto;">
                            <input type="submit" value="Submit" class="btn btn-primary  py-2 px-5">
                          </div>
                        </div>
                      </div>
                    </div>
                  </form:form>

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
            <li>
              <span class="d-block text-white">Address</span>
             Ton Duc Thang University Nguyen Huu Tho Street, Ho Chi Minh City
            </li>
            <li>
              <span class="d-block text-white">Telephone</span>
              +84386459031
            </li>
            <li>
              <span class="d-block text-white">Email</span>
              phuongnambr1997@gmail.com
            </li>
          </ul>
          
        </div>
      </div>
    </div>
  </footer>
</div>

    </div>
  </footer>
</div>

<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery-migrate-3.0.1.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery-ui.js"/>"></script>
<script src="<c:url value="/resources/js/popper.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.stellar.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.countdown.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap-datepicker.min.js"/>"></script>
<script src="<c:url value="/resources/js/aos.js"/>"></script>


<script src="<c:url value="/resources/js/main.js"/>"></script>
  
</body>
</html>