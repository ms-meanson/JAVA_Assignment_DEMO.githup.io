<%@page import="db.MSDB" %>

<%
if(request.getMethod().equals("POST")) {
	String ID = request.getParameter("ID");

	String sql = "DELETE FROM Levels WHERE id="+ID;
	MSDB.execute(sql);
	
	response.sendRedirect("level-list.jsp");
}
%>