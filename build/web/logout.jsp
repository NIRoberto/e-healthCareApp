<%-- 
    Document   : logout
    Created on : Nov 18, 2022, 6:07:48 PM
    Author     : CSE
--%>

<%
 session.removeAttribute("email"); 
 response.sendRedirect("login.jsp");
%>
