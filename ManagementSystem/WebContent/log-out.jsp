<%
session.removeAttribute("USER");
response.sendRedirect("login.jsp");
%>