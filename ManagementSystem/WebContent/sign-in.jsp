<%@page import="db.MSDB" %>
<%
if(request.getMethod().equals("POST")) {
	//logic for login
	String username = request.getParameter("username");
	String password = request.getParameter("password");
			
	String uname = MSDB.Login(username, password);
	if(uname == null) {
		session.setAttribute("ERROR", "Invalid Login");		
		response.sendRedirect("login.jsp"); //get
	} else {
		session.setAttribute("USER", uname);
		response.sendRedirect("index.jsp");
	}
}
%>