<%@page import="db.MSDB" %>
<%
if(request.getMethod().equals("POST")) {
	String level = request.getParameter("level");
	String fee = request.getParameter("fee");
	
	MSDB.insertLevel(level, fee);
		
	response.sendRedirect("level-list.jsp");
}
%>