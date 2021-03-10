<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file ="adminHeader.jsp" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: blue; text-align: center; font-size: 30px;">Messages Received <i class='fas fa-comment-alt'></i></div>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Email</th>
            <th scope="col">Subject</th>
            <th scope="col">Body</th>
          </tr>
        </thead>
        <tbody>
       <%
       try
       {
    	   Connection con = ConnectionProvider.getCon();
    	   Statement st= con.createStatement();
    	   ResultSet rs= st.executeQuery("select * from message");
    	   while(rs.next())
    	   {
       %>
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
          </tr>
         <%}
    	   }
    	   catch(Exception e)
    	   {
    		   System.out.println(e);
    	   }%>
        </tbody>
      </table>
      <br>
      <br>
      <br>
<center>
<br><br>
<div class="footer-bottom" style="background-color: #8e8e8e;">
   <p class="fa fa-copyright">
   copyright & 2021, designed by&nbsp;&nbsp;<span>She Arise Girls</span></p>
   </div></center>
</body>
</html>