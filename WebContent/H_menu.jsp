<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<ul class="nav navbar-nav">
							<li><a href="HospitalHomePage.jsp">Home</a></li>
							<!-- <li><a data-scroll
								href="H_Donor_DataPage.jsp">Donor Info</a></li> -->
							<li><a data-scroll href="H_DataPage.jsp">Patient Info</a></li>
<li><a data-scroll
								href="H_Search_Disease_Page.jsp">Matching Donor Info</a></li>
							<li><a data-scroll href="loginpage">Logout</a></li>
							<li><a data-scroll href="loginpage">Hospital Name : <%=session.getAttribute("H_Full_Name") %></a></li>

						</ul>
</body>
</html>