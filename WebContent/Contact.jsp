<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User-Login</title>
<%@include file="component/common_css_js.jsp" %>

<style>

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
	<div class="col-md-6 offset-md-3">
		
		<div class="card mt-4">
			<div class="card-header custom-bg text-white">
			<h3>&nbsp;Contact Us&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
			</div>
					
			<div class="card-body">
			<form action="mailApp" method="post">
  				<div class="mb-3">
    			<label for="exampleInputEmail1" class="form-label">
    			<i class="fa fa-address-book"></i>Subject</label>
    		
   				 <input type="text" class="form-control"  name="subject" placeholder="enter your subject">
    	
  				</div>
  				<div class="mb-3">
    			<label for="exampleInputEmail1" class="form-label">
    			<i class="fa fa-comments"></i>Message</label>
    		<textarea style="height:200px" class="form-control"  placeholder="Enter yuor message" name="message"></textarea>
  				</div>
  				<div class="mb-3">
   				 <label for="exampleInputPassword1" class="form-label">
   				 <i class="fa fa-envelope" ></i>User Email id</label>
  
				<input type="text" class="form-control"  name="user" placeholder="enter your subject">
</div>		

<div class="mb-3">
   				 <label for="exampleInputPassword1" class="form-label">
   				 <i class="fa fa-key" ></i>User Password</label>
  			
				<input type="password" class="form-control"  name="pass" placeholder="enter your pass">
</div>				
   				
   				
  				<div class="text-center">
  				<button type="submit" class="btn btn-primary custom-bg border-0">Submit</button>
  				<button type="reset" class="btn btn-primary custom-bg border-0">Reset</button>
  				</div>
  		</form>
  		
		</div>
			</div>
		</div>	
	</div>
</div>
</body>
</html>

