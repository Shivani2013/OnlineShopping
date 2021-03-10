<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file ="changeDetailsHeader.jsp" %>

<html>
<head>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
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
if("done".equals(msg))
{
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<br><br>
<center>
<form action="changeSecurityQuestionAction.jsp" method="post">
<h3>Select Your New Security Question
 <select class="input-style" name="securityQuestion" style="width: 300px; height: 40px;" >
 <option value="What was your first car?">What was your first car?</option>
 <option value="What is the name of your first pet?">What is the name of your first pet?</option>
 <option value="What elementary school did you attend?">What elementary school did you attend?</option>
 <option value="What is the name of the town where you weere born?">What is the name of the town where you were born?</option>
 </select></h3>
 <br>
 <h3>Enter Your New Answer &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input class="input-style" type="text" name="newAnswer" placeholder="Enter your New Answer" style="width: 300px; height: 40px;" required></h3>
<br>
<h3>Enter Password (For Security) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input class="input-style" type="password" name="password" placeholder="Enter Password(For Security)" style="width: 300px; height: 40px;" required></h3>
<br>
 <button class="btn" type="submit" style="width: 300px; height: 40px;" >Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</center>
<br><br><br>
<%@include file ="footer.jsp" %>

</body>
</html>