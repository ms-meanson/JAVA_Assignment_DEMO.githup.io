<%@page import="db.MSDB" %>

<%
if(request.getMethod().equals("POST")) {
	String ID = request.getParameter("ID");
	
	String sql = "DELETE FROM Students WHERE id="+ID;
	MSDB.execute(sql);
	
	response.sendRedirect("student-list.jsp");
}
%>