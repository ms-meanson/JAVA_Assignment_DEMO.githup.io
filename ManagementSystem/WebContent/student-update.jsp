<%@page import="db.MSDB" %>

<%
if(request.getMethod().equals("POST")) {
	String ID = request.getParameter("ID");
	String stuid = request.getParameter("stuid");
	String stuname = request.getParameter("stuname");
	String gender = request.getParameter("gender");
	String levelId = request.getParameter("lvelId");
	String dob = request.getParameter("dob");
	String stadat = request.getParameter("stadat");
	String endat = request.getParameter("endat");
	
	String sql = "UPDATE Students SET student_id='"+stuid+"',student_name='"+stuname+"',gender='"+gender+"',level_id='"+levelId+"',dob='"+dob+"',start_date='"+stadat+"',end_date='"+endat+"' WHERE id="+ID;
	MSDB.execute(sql);
	
	response.sendRedirect("student-list.jsp");
}
%>