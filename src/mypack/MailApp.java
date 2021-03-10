package mypack;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class MailApp extends HttpServlet 
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");  
        //String to = request.getParameter("to");
        String subject = request.getParameter("subject");
        String message =  request.getParameter("message");
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        SendMail.send(subject, message, user, pass);
        out.println("<script>");  
        out.println("alert('send mail')");  
        out.println("</script>");  
        
        RequestDispatcher rd=request.getRequestDispatcher("/Contact.jsp");  
        rd.include(request, response);  
    }   
}
