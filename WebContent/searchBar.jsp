<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%	String search=request.getParameter("search"); 
	if(search != null)
			{
%>
	<table>
	        <thead>
	          <tr>
	            <th scope="col">ID</th>
	            <th scope="col">Name</th>
	            <th scope="col">Category</th>
	            <th scope="col"><i class="fa fa-inr"></i> Price</th>
	            <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
	          </tr>
	        </thead>
	      <tbody>
	<%
	int z=0;
	try{
		
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from product where name like '%"+search+"%' or category like '%"+search+"%' and active='Yes'");
		while(rs.next())
		{
			z=1;
	%>
	          <tr>
	            <td><%=rs.getString(1) %></td>
	            <td><%=rs.getString(2) %></td>
	            <td><%=rs.getString(3) %></td>
	            <td><i class="fa fa-inr"></i> </i><%=rs.getString(4) %></td>
	            <td><a href="addToCartAction.jsp?id=<%=rs.getString(1) %>">Add to cart <i class='fas fa-cart-plus'></i></a></td>
	          </tr>
	 <%
	}
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>        
	        </tbody>
	      </table>
	     	
<%  } %>