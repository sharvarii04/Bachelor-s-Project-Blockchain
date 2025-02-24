<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<ul class="nav navbar-nav"><!-- 
							<li><a href="Doctor_HomePage.jsp">Home</a></li> -->
							<li><a  href="D_Add_Organ_infoPage.jsp">Organ Donation</a></li>
							
							
							<li><a  href="loginpage">Logout</a></li>
							<li><a  href="loginpage">Donor Name : <%=session.getAttribute("D_Full_Name") %></a></li>

						</ul>
</body>
</html>