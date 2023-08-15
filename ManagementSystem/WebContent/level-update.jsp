
<%@page import="db.MSDB" %>
<%
if(request.getMethod().equals("POST")) {
	String ID = request.getParameter("ID");
	String level = request.getParameter("level");
	String fee = request.getParameter("fee");
	
	String sql = "UPDATE Levels SET level='"+level+"',fee_per_term='"+fee+"' WHERE id="+ID;
	MSDB.execute(sql);
		
	response.sendRedirect("level-list.jsp");
}
%>