<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/common_css_js.jsp" %>
<style>
body
{
	background-image: url('image/bg1.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	
}
.custom-bg
{
	background:#0275d8;!important;
}

</style>
</head>
<body>
<%@include file="component/navbar.jsp" %>
<hr color="black">
<div class="container">
	<div class="row">
	
		
		<div class="card mt-4" style="width:80rem;">
			<div class="card-header custom-bg text-white">
			<h3>&nbsp;&nbsp;&nbsp;&nbsp;My Cart
			<br>
			</div>
					
			<div class="card-body">
	<br><br>
			<center>
			<img src="image/CartIcon.jpeg" heigth="200" width="200">	
			<br><br><br>
<b>	Missing Cart items?</b>
	<br>
Login to see the items you added previously
<br><br>
	
	
		<a href="signup.jsp" >
		<p class="btn btn-primary custom-bg border-0">Sign Up</p>
		</a>
		<a href="login.jsp" >
		<p class="btn btn-primary custom-bg border-0">Sign In</p>
		</a>
			</center>	
			
					
			</div>
		</div>	
	</div>
</div>
<br><br>
<%@ include file="footer.jsp" %>
</body>
</html>