<%@page import="login.UserDatabase"%>
<%@page import="login.User"%>
<%@page import="login.DBConnect"%>


<%--
      String email  =     request.getParameter("email");
      String pass  =     request.getParameter("password");

      if(email.equals("admin@gmail.com")  && pass.equals("admin123")){
          session.setAttribute("email", email);
          out.println("done");
          response.sendRedirect("pharmacy.jsp");
    }
    else {
      response.sendRedirect("login.jsp");
    }
--%>
<%
            String email  =  request.getParameter("email");
            String password =  request.getParameter("password");
            UserDatabase db = new UserDatabase(DBConnect.getConnection());
            User user   =  db.Login(email, password);
            if(user!=null){
                session.setAttribute("user", user);
                response.sendRedirect("pharmacy.jsp");
            }
            else{ 
            out.print("user not found");
            }
%>