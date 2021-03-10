<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import ="java.util.ArrayList" %>
<%@page import = "java.util.Iterator" %>
<%@page import = "java.util.List" %>
<%@page import ="javax.servlet.http.HttpServlet"%>
<%@page import = "javax.servlet.http.HttpServletRequest" %>
<%@page import = "javax.servlet.http.HttpServletResponse" %>
<%@page import = "org.apache.commons.fileupload.FileItem" %>
<%@page import ="org.apache.commons.fileupload.FileItemFactory" %>
<%@page import = "org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@page import = "org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@page import = "java.io.File"%>
<%
/*String id= request.getParameter("id");
String name= request.getParameter("name");
String category= request.getParameter("category");
String price= request.getParameter("price");
String active= request.getParameter("active");
String pimage =request.getParameter("pimage"); */
ArrayList<String> al = new ArrayList<String>();
String file_name = null;
String file_name2="";
try 
{
	
	FileItemFactory factory = new DiskFileItemFactory();
    ServletFileUpload upload = new ServletFileUpload(factory);
	List < FileItem > fields = upload.parseRequest(request);
	Iterator < FileItem > it = fields.iterator();
	
	while (it.hasNext()) 
	{
	    FileItem fileItem = it.next();
	    al.add(fileItem.getString());
	    boolean isFormField = fileItem.isFormField();
        if (isFormField) 
        {
            if (file_name == null) 
            {
                if (fileItem.getFieldName().equals("file_name")) 
                {
                	file_name = fileItem.getString();
                	al.toArray()[5] = file_name;
                }
            }
        } 
        else 
        {
            if (fileItem.getSize() > 0) 
            {
            	file_name2 = fileItem.getName();
            	 //al.toArray()[5] = file_name2;
            	 
                fileItem.write(new File("C:\\Users\\Dell\\eclipse-workspace\\OnlineShoppingProject\\WebContent\\image\\" + file_name2));
                
             }
        }
	}
	
}
catch(Exception e)
{
	out.println(e);
}
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update product set name='"+al.toArray()[1].toString()+"',category='"+al.toArray()[2].toString()+"',price='"+al.toArray()[3].toString()+"',active='"+al.toArray()[4].toString()+"',pimage='"+file_name2+"' where id='"+al.toArray()[0].toString()+"'");
	
	
	
	
	if(al.toArray()[4].toString().equals("No"))
	{
		st.executeUpdate("delete from cart where product_id='"+al.toArray()[0].toString()+"' and address is NULL");
	}
	response.sendRedirect("allProductEditProduct.jsp?msg=done");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
}
%>

	
	
}
/*try
{
	Connection con = ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update product set name='"+name+"',category='"+category+"',price='"+price+"',active='"+active+"',pimage='"+pimage+"' where id='"+id+"'");
	if(active.equals("No"))
	{
		st.executeUpdate("delete from cart where product_id='"+id+"' and address is NULL");
	}
	response.sendRedirect("allProductEditProduct.jsp?msg=done");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
}
%>*/