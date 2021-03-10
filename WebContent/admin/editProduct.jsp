<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file ="adminHeader.jsp" %>

<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Edit Product</title>
<style>
.back
{
  color: blue;
  margin-left: 2.5%
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Edit Products <i class='fab fa-elementor'></i></div>
<hr>
 <h2><a class="back" href="allProductEditProduct.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>
<%
String id=request.getParameter("id");
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from product where id='"+id+"'");
	while(rs.next())
	{		
%>
<center>
<form action="editProductAction.jsp" enctype="multipart/form-data" method="post">
<input type="hidden" name="id" value="<%out.println(id); %>">
<div class="left-div">
 <h3>Enter Name</h3>
<input class="input-style" type="text" name="name" value="<%=rs.getString(2) %>" required>
<hr>
</div>

<div class="left-div">
<h3>Enter Category</h3>
<!--  <input class="input-style" type="text" name="category" value="<%=rs.getString(3) %>" required>   -->
<select class="input-style" name="category" value="<%=rs.getString(3) %>" >
  <option value="Fashion">Fashion</option>
  <option value="Electronics">Electronics</option>
  <option value="Sports">Sports</option>
  <option value="Beauty">Beauty</option>
  <option value="Furniture">Furniture</option>
  <option value="Toys">Toys</option>
  <option value="Covid-19">Covid-19</option>
  <option value="Deal Of the Day">Deal Of the Day</option>
</select> 
<hr>
</div>

<div class="left-div">
<h3>Enter Price</h3>
 <input class="input-style" type="number" name="price" value="<%=rs.getString(4) %>" required>
<hr>
</div>

<div class="left-div">
<h3>Active</h3>
<select class="input-style" name="active">
<option value="Yes">Yes</option>
<option value="No">No</option>
</select>
 <hr>
</div>


<div class="left-div">
<h3>Product Image</h3>
<input class="input-style" type="hidden" name="file_name" value="<% out.println(id); %>">
Select <input type="file" name="file2" /><br>
</div>
   <hr>  

 <button class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form></center>
<% 
}
}
catch(Exception e)
{
	System.out.println(e);
}
%>

<br><br><br>
<center>
<div class="footer-bottom" style="background-color: #8e8e8e;">
   <p class="fa fa-copyright">
   copyright & 2021, designed by&nbsp;&nbsp;<span>She Arise Girls</span></p>
   </div></center>
</body>
</html>