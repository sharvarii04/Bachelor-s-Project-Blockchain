<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<%@page import="com.connection.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- Site Metas -->
<title>Life Care - Responsive HTML5 Multi Page Template</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- Site Icons -->
<link rel="shortcut icon" href="images/fevicon.ico.png"
	type="image/x-icon" />
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="style.css">
<!-- Colors CSS -->
<link rel="stylesheet" href="css/colors.css">
<!-- ALL VERSION CSS -->
<link rel="stylesheet" href="css/versions.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css">
<!-- Modernizer for Portfolio -->
<script src="js/modernizer.js"></script>
<!-- [if lt IE 9] -->
</head>
<body class="clinic_version">
	<!-- LOADER -->
	<div id="preloader">
		<img class="preloader" src="images/loaders/heart-loading2.gif" alt="">
	</div>
	<!-- END LOADER -->
	<header>
		<div class="header-top wow fadeIn">
			<div class="container">
				<a class="navbar-brand" href="index.html"><img
					src="images/logo.png" alt="image"></a>

			</div>
		</div>
		<div class="header-bottom wow fadeIn">
			<div class="container">
				<nav class="main-menu">


					<div id="navbar" class="navbar-collapse collapse">
						<jsp:include page="P_menu.jsp"></jsp:include>
					</div>
				</nav>
				<div class="serch-bar">
					<div id="custom-search-input"></div>
				</div>
			</div>
		</div>
	</header>
	<div>
		<br /> <br />
	</div>
	<div>
		<br /> <br />
	</div>
	<div id="service" class="services wow fadeIn">
		<div class="container">
			<div class="row">
				<div>
					<div class="appointment-form" align="center">
						<h3>
							<span></span> Request Organ
						</h3>
						<div class="form">
							<fieldset>

								<form action="organ_request" method="post">
									<table class="form-group">

										<tr>
											<td><label> Oragan_Name </label></td>
											<td><select name="Organ_Name" class="form-control"
												required="required">
													<option value="">Select Organ Name</option>
													<option value="Kidney">Kidney</option>
													<option value="Liver">Liver</option>
													<option value="Heart">Heart</option>
													<option value="Eye">Eye</option>
													<option value="Brain">Brain</option>
											</select></td>
										</tr>

										<tr>
											<td><label> Age </label></td>
											<td><input type="text" name="age" required="required" /></td>
										</tr>

										<tr>
											<td><label> Blood_Group </label></td>
											<td><select name="Blood_Group" class="form-control"
												required="required">
													<option value="">Select Blood Group</option>
													<option value="B+">B+</option>
													<option value="A+">A+</option>
													<option value="O+">O+</option>
													<option value="AB+">AB+</option>
													<option value="AB-">AB-</option>
													<option value="B-">B-</option>
													<option value="A-">A-</option>
													<option value="O-">O-</option>
											</select></td>
										</tr>

										<tr>
											<td><label> Height </label></td>
											<td><input type="text" name="Height" required="required" /></td>
										</tr>

										<tr>
											<td><label> Weight </label></td>
											<td><input type="text" name="Weight" required="required" /></td>
										</tr>

										<tr>
											<td><label> Disease Name </label></td>
											<td><select name="Disease_name" class="form-control"
												required="required">
													<option value="">Select Disease Name</option>
													<option value="Blood_Pressure">Blood Pressure</option>
													<option value="Blood Sugar">Blood Sugar</option>
													<option value="Cancer">Cancer</option>
													<option value="No">No</option>

											</select></td>
										</tr>

										<tr>
											<td><label> Habits Name </label></td>
											<td><select name="habits_name" class="form-control"
												required="required">
													<option value="">Select Habits Name</option>
													<option value="smoking">Smoking</option>
													<option value="drinking">Drinking</option>
													<option value="No">No</option>

											</select></td>
										</tr>

<tr>
											<td><label> Metal Issues </label></td>
											<td><select name="Metal_issues" class="form-control"
												required="required">
													<option value="">Select Metal Issues</option>
													<option value="Yes">Yes</option>
													<option value="No">No</option>

											</select></td>
										</tr>
										
										<tr>
											<td colspan="2" align="center"><button type="submit">Submit</button></td>
										</tr>


									</table>




								</form>

							</fieldset>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end section -->

	<!-- doctor -->



	<!-- end section -->
	<footer id="footer" class="footer-area wow fadeIn">
         <div class="container">
            <div class="row">
               <div class="col-md-4">
                  <div class="logo padding">
                     <a href=""><img src="images/logo.png" alt=""></a>
                     <p>A Platform to Donate,Receive and Manage Organ Donation and Transplantation.Convinient for Doctors,Patients and Donors .</p>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="footer-info padding">
                     <h3>CONTACT US</h3>
                     <p><i class="fa fa-map-marker" aria-hidden="true"></i> PO Box 16122 Collins Street West Victoria 8007 Australia</p>
                     <p><i class="fa fa-paper-plane" aria-hidden="true"></i> info@gmail.com</p>
                     <p><i class="fa fa-phone" aria-hidden="true"></i> (+1) 800 123 456</p>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="subcriber-info">
                     <h3>SUBSCRIBE</h3>
                     <p>Get healthy news, tip and solutions to your problems from our experts.</p>
                     <div class="subcriber-box">
                        <form id="mc-form" class="mc-form">
                           <div class="newsletter-form">
                              <input type="email" autocomplete="off" id="mc-email" placeholder="Email address" class="form-control" name="EMAIL">
                              <button class="mc-submit" type="submit"><i class="fa fa-paper-plane"></i></button> 
                              <div class="clearfix"></div>
                              <!-- mailchimp-alerts Start -->
                              <div class="mailchimp-alerts">
                                 <div class="mailchimp-submitting"></div>
                                 <!-- mailchimp-submitting end -->
                                 <div class="mailchimp-success"></div>
                                 <!-- mailchimp-success end -->
                                 <div class="mailchimp-error"></div>
                                 <!-- mailchimp-error end -->
                              </div>
                              <!-- mailchimp-alerts end -->
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <div class="copyright-area wow fadeIn">
         <div class="container">
            <div class="row">
               <div class="col-md-8">
                  <div class="footer-text">
                     <p> © 2024 Lifecare All Rights Reserved.</p>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="social">
                     <ul class="social-links">
                        <li><a href=""><i class="fa fa-rss"></i></a></li>
                        <li><a href=""><i class="fa fa-facebook"></i></a></li>
                        <li><a href=""><i class="fa fa-twitter"></i></a></li>
                        <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                        <li><a href=""><i class="fa fa-youtube"></i></a></li>
                        <li><a href=""><i class="fa fa-pinterest"></i></a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
	<!-- end copyrights -->
	<a href="#home" data-scroll class="dmtop global-radius"><i
		class="fa fa-angle-up"></i></a>
	<!-- all js files -->
	<script src="js/all.js"></script>
	<!-- all plugins -->
	<script src="js/custom.js"></script>
	<!-- map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap"></script>
</body>
</html>
