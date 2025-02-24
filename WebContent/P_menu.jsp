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
							<li><a href="PatientHomePage.jsp">Home</a></li>
							<li><a href="P_Add_Request_infoPage.jsp">Request</a></li>
							<!-- <li><a href="P_Search_Disease_Page.jsp">Search Disease</a></li>
							 -->
							<li><a href="loginpage">Logout</a></li>
							<li><a href="loginpage">Patient Name : <%=session.getAttribute("Full_Name") %></a></li>

						</ul>
</body>
</html>