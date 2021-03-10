<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file ="adminHeader.jsp" %>

<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Product Added Successfully!</h3>
<%} %>

<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%} %>
<%
int id=1;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs= st.executeQuery("select max(id) from product");
	while(rs.next())
	{
		id=rs.getInt(1);
		id=id+1;
	}
}
catch(Exception e)
{
	
}
%>
<center>
<form action="addNewProductAction.jsp" enctype="multipart/form-data" method="post">
<h3 style="color: blue;">Product ID:<% out.println(id); %> </h3>
<input type="hidden" name="id" value="<%out.println(id); %>">

<div class="left-div">
 <h3>Enter Name</h3>
 <input class="input-style" type="text" name="name" placeholder="Enter Name" required>
<hr>
</div>

<div class="left-div">
<h3>Enter Category</h3>
 <select class="input-style" name="category">
  <option value="Fashion">Fashion</option>
  <option value="Electronics">Electronics</option>
  <option value="Sports">Sports</option>
  <option value="Beauty">Beauty</option>
  <option value="Furniture">Furniture</option>
  <option value="Toys">Toys</option>
  <option value="Covid-19">Covid-19</option>
  <option value="Deal Of the Day">Deal Of the Day</option>
</select>

</div>

</div>
<div class="left-div">
<h3>Enter Price</h3>
 <input class="input-style" type="number" name="price" placeholder="Enter Price" required>
</div>

<div class="left-div">
<h3>Active</h3> 
<select class="input-style" name="active">
<option value="Yes">Yes</option>
<option value="No">No</option>
</select>



<div class="left-div">
<h3>Product Image</h3>
<input class="input-style" type="hidden" name="file_name" value="<% out.println(id); %>">
Select <input type="file" name="file2" /><br>
</div>
<hr>  
<hr>
 <button class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button></center>
</form>

<br><br><br>
<center>
<div class="footer-bottom" style="background-color: #8e8e8e;">
   <p class="fa fa-copyright">
   copyright & 2021, designed by&nbsp;&nbsp;<span>She Arise Girls</span></p>
   </div></center>
</body>
</html>