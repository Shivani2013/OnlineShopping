<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file ="changeDetailsHeader.jsp" %>

<html>
<head>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Mobile Number</title>

<style>
.btn:hover
{
	background-color: #4DA6FF;
}
</style>
</head>
<body>
<center>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your Mobile Number successfully changed!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<br><br>
<form action="changeMobileNumberAction.jsp" method="post">
 <h3>Enter Your New Mobile Number
 <input class="input-style" type="number" name="mobileNumber" placeholder="Enter Your New Mobile Number" style="width: 300px; height: 40px;" required></h3>
 <br>
<h3>Enter Password (For Security)
<input class="input-style" type="password" name="passsword" placeholder="Enter Password(For Security)" style="width: 300px; height: 40px;" required></h3>
<br>
 <button class="btn" type="submit" style="width: 300px; height: 40px;">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</center>
<br><br><br><br><br><br><br>
<%@include file ="footer.jsp" %>

</body>

</html>