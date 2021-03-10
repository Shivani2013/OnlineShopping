<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file ="changeDetailsHeader.jsp" %>
<html>
<head>
<center>
<title>Change Details</title>
</head>

<%
try
{
	Connection con = ConnectionProvider.getCon();
	Statement st= con.createStatement();
	ResultSet rs= st.executeQuery("select * from users where email='"+email+"'");
	while(rs.next())
	{
%>
<br>
<h3>Name: <%=rs.getString(1) %></h3>
<br>
 <h3>Email: <%=rs.getString(2) %></h3>
 <br>
 <h3>Mobile Number: <%=rs.getString(3) %></h3>
 <br>
<h3>Security Question: <%=rs.getString(4) %></h3>
<br>
      <br>
      <br>
      <br>
<%
	}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</center>
<br><br><br><br><br>
<%@include file ="footer.jsp" %>

</body>
</html>