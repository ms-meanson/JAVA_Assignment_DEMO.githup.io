<%@page import="db.MSDB" %>
<%
if(request.getMethod().equals("POST")) {
	String stuId = request.getParameter("stuId");
	String stuName = request.getParameter("stuName");
	String gender = request.getParameter("gender");
	String lvelId = request.getParameter("lvelId");
	String dob = request.getParameter("dob");
	String stadat = request.getParameter("stadat");
	String endat = request.getParameter("endat");
	
	MSDB.insertStudent(stuId, stuName, gender, lvelId, dob, stadat, endat);
		
	response.sendRedirect("student-list.jsp");
}
%>