<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file ="changeDetailsHeader.jsp" %>

<html>
<head>
<center>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Add or Change Address</title>
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
if("valid".equals(msg))
{
%>
<h3 class="alert">Address Successfully Updated !</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Some thing Went Wrong! Try Again!</h3>
<%} %>
<%
try
{
	Connection con= ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs= st.executeQuery("select * from users where email='"+email+"'");
	while(rs.next())
	{
%>
<form action="addChangeAddressAction.jsp" method="post">
<h3>Enter Address
<input type="text" name="address" style="width: 300px; height: 40px;" value="<%=rs.getString(7)%>" placeholder="Enter Address" required></h3>
<br>

 <h3>Enter city &nbsp; &nbsp; &nbsp; &nbsp;
 <input type="text" name="city" style="width: 300px; height: 40px;" value="<%=rs.getString(8)%>" placeholder="Enter City" required></h3>
<br>
<h3>Enter State &nbsp; &nbsp; &nbsp;
<input type="text" name="state" style="width: 300px; height: 40px;" value="<%=rs.getString(9)%>" placeholder="Enter State" required></h3>
<br>
<h3>Enter country &nbsp;
<input  type="text" name="country" style="width: 300px; height: 40px;" value="<%=rs.getString(10)%>" placeholder="Enter Country" required></h3>
<br>
<button class="btn" type="submit" style="width: 300px; height: 40px;">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<%}
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%><br><br></center><br><br>
<%@include file ="footer.jsp" %>
</body>

</html>
