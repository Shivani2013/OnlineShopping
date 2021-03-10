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
/*String id=request.getParameter("id");
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");
String pimage =request.getParameter("file2");*/
ArrayList<String> al = new ArrayList<String>();
//String myloc=request.getParameter("pimage");
//String myloc = request.
String file_name = null;
String file_name2="";
try 
{
	//FileUploadHandler fu = new FileUploadHandler();
	// fu.doPost(request, response);
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

	
	
	PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?)");
	ps.setString(1, al.toArray()[0].toString());
	ps.setString(2, al.toArray()[1].toString());
	ps.setString(3, al.toArray()[2].toString());
	ps.setString(4, al.toArray()[3].toString());
	ps.setString(5, al.toArray()[4].toString());
	ps.setString(6, file_name2);
	
	ps.executeUpdate();
	response.sendRedirect("addNewProduct.jsp?msg=done");
	
}
catch(Exception e)
{
	out.println(e);
	response.sendRedirect("addNewProduct.jsp?msg=wrong");
}
%>