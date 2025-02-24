<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<%@page import="com.connection.*"%>
<%@page import="Algorithms.*"%>
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
						<jsp:include page="H_menu.jsp"></jsp:include>
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
							<span></span>Search Matching Donor Info
						</h3>
						<div class="form">
							<form action="H_Search_Disease_Page.jsp" method="post">
								<table class="form-group">
									<tr>
										<td>Age</td>
										<td><input type="text" required="required"
											name="age" id="QT_interval" /></td>
											<td><label> Disease Name </label></td>
											<td><select name="Disease_name" class="form-control"
												required="required">
													<option value="">Select Disease Name</option>
													<option value="Blood_Pressure">Blood Pressure</option>
													<option value="Blood Sugar">Blood Sugar</option>
													<option value="Cancer">Cancer</option>
													<option value="No">No</option>

											</select></td>
											<td><label> Habits Name </label></td>
											<td><select name="habits_name" class="form-control"
												required="required">
													<option value="">Select Habits Name</option>
													<option value="smoking">Smoking</option>
													<option value="drinking">Drinking</option>
													<option value="No">No</option>

											</select></td>
											<td><label> Metal Issues </label></td>
											<td><select name="Metal_issues" class="form-control"
												required="required">
													<option value="">Select Metal Issues</option>
													<option value="Yes">Yes</option>
													<option value="No">No</option>

											</select></td>
										<td colspan="4" align="center"><button type="submit">Search</button></td>


									</tr>

								</table>
							</form>

							
								<%
									try {
										String D_age = request.getParameter("age");
										String Disease_name=request.getParameter("Disease_name");
										String habits_name=request.getParameter("habits_name");
										String Metal_issues=request.getParameter("Metal_issues");
									
										if (Disease_name == null) {
										} else {
											%>
											<table class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<tr>

									<td><label>Full Name</label></td>
									<td><label>Email Id</label></td>
									<td><label>Mobile No</label></td>
									<td><label>Organ Name</label></td>
									<td><label>Blood_Group</label></td>
									<td><label>Age</label></td>
									<td><label>Height</label></td>
									<td><label>Weight</label></td>
									<td><label>Patient_Status</label></td>
									<td><label>User_Type</label></td>
									<td><label>Request</label></td>

								</tr>
											<%
											int i = 1;
											System.out.println(D_age+"="+Disease_name);
											session.setAttribute("Disease",D_age);
											CosineSimilarity cs = new CosineSimilarity();
											String query1 = "select * from tbl_donor_organ";
											Connection conn = Dbconn.conn();
											Statement stmt1 = conn.createStatement();
											Statement stmt12 = conn.createStatement();
											ResultSet rs = stmt1.executeQuery(query1);
											while (rs.next()) {
												int flag=0;
												int Diseaseflag=0;
												int hflag=0;
												int mflag=0;
												int Db_age =rs.getInt("D_Age");
												String db_Disease_name=rs.getString("Disease_name");
												String db_habits_name=rs.getString("habits_name");
												String db_Metal_issues=rs.getString("Metal_issues");
												int age=Integer.valueOf(D_age);
												if(Db_age>=age)
												{
													flag=1;
													
												}
												double Diseasescore = cs.GetSimilarity(Disease_name,
														db_Disease_name);
												if(Diseasescore>0.90)
												{
													Diseaseflag=1;
												}
												double habitsscore = cs.GetSimilarity(habits_name,
														db_habits_name);
												if(habitsscore>0.90)
												{
													hflag=1;
												}
												double Metalscore = cs.GetSimilarity(Metal_issues,
														db_Metal_issues);
												if(Metalscore>0.90)
												{
													mflag=1;
												}
												System.out.println("Diseasescore=>"+Diseasescore+"\t habitsscore=>"+habitsscore+"\t Metalscore=>"+Metalscore);
												int score=flag+Diseaseflag+hflag+mflag;
												System.out.println("total=>"+score);
												if(score>=4)
												{
													{
								%>
								

								<tr>
<tr>

									<td><%=rs.getString(3)%></td>
									<td><%=rs.getString(2)%></td>
									<td><%=rs.getString(4)%></td>
									<td><%=rs.getString(5)%></td>
									<td><%=rs.getString(6)%></td>
									<td><%=rs.getString(7)%></td>
									<td><%=rs.getString(8)%></td>
									<td><%=rs.getString(9)%></td>
									<td><%=rs.getString(10)%></td>
									<td><%=rs.getString(11)%></td>
									<td><a href="D_request_accept?D_id=<%= rs.getString(1)%>">Accept</a>|
									<a href="D_request_reject?D_id=<%= rs.getString(1) %>">Reject</a>
									</td>

								</tr>

								</tr>
								<%
													}
									}
											}
											i++;
										}
								%>
								<%
									} catch (Exception e) {
										e.printStackTrace();
									}
								%>
							</table>
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
