<%
      String email  =     request.getParameter("email");
      String pass  =     request.getParameter("password");

      if(email.equals("admin@gmail.com")  && pass.equals("admin123")){
          session.setAttribute(email, email);
          response.sendRedirect("./pharmacy/index.jsp");
    }
    else {
      response.sendRedirect("login.jsp");
    }
%>