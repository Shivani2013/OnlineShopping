
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<html>
<head>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<style>

h2
{
	background-color: #0275d8;
	/* color: white; */
	text-align: center;
}
a
.mySlides{display:none;}

.zoom
{
transition:transform 0.5s;
}
.zoom:hover
{
transform:scale(1.2);
}

.custom-bg
{
	background:#0275d8;!important;
	align-content: center;
}
</style>

<body>
<%@ include file="component/navbar.jsp" %>
<br>

	<div style= "background-color: #4D7CEB"> 
	<center><h1> Toys </h1></center>
	</div>
	<br>
	<div class = "container">
		<div class="row" >
		<%
		try{
			Connection con=ConnectionProvider.getCon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from product where active='Yes' and category= 'Toys'");
			while(rs.next())
			{
		%>
			<div class = "col-sm-3" style="margin-top:1px;margin:auto; width: 250px;">
				<div class="card" style="width: 18rem;">
				  <center> <img style="margin-top:10px;" src="image/<%=rs.getString(6) %>" alt="Not found" class="zoom" height= 200px width= 200px/></center>
				  <div class="card-body">
				    <p class="card-text"><%=rs.getString(2) %></p>
				    <p></p>
				    <a href="addToCartAction.jsp?id=<%=rs.getString(1) %>">Add to cart <i class='fas fa-cart-plus'></i></a>
				  </div>
				</div>
			</div>
			<%
				}
				}
				catch(Exception e)
				{
					System.out.println(e);
				}
			%>
		</div>
	</div>
<hr><hr>
	<br>
	
<%@include file ="footer.jsp" %>
</body>
</html>
