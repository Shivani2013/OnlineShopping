<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file ="changeDetailsHeader.jsp" %>

<html>
<head>

<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
<style>
.btn:hover
{
	background-color: #4DA6FF;
}
</style>
</head>
<body>

<%
String msg=request.getParameter("msg");
if("notMatch".equals(msg))
{
%>
<h3 class="alert">New password and Confirm password does not match!</h3>
<%} %>
<%
if("wrong".equals(msg))
{%>
<h3 class="alert">Your old Password is wrong!</h3>
<%} %>
<%
if("done".equals(msg))
{%>
<h3 class="alert">Password change successfully!</h3>
<%} %>
<%
if("invalid".equals(msg))
{%>
<h3 class="alert">Some thing went wrong! Try again!</h3>
<%} %>
<center>
<form action="changePasswordAction.jsp" method="post">
<h3>Enter Old Password &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input class="input-style" type="password" name="oldPassword" placeholder="Enter Old Password" style="width: 300px; height: 40px;" required></h3>
  <br>
 <h3>Enter New Password &nbsp;&nbsp;&nbsp;&nbsp;
 <input class="input-style" type="password" name="newPassword" placeholder="Enter New Password" style="width: 300px; height: 40px;" required></h3>
 <br>
<h3>Enter Confirm Password
<input class="input-style" type="password" name="confirmPassword" placeholder="Enter Confirm Password" style="width: 300px; height: 40px;" required></h3>
<br>
 <button class="btn" type="submit" style="width: 300px; height: 40px;" >Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<br><br><br>
</center>
<%@include file ="footer.jsp" %>

</body>
</html>