<% request.setAttribute("title", "Student Edit"); %>

<% if(session.getAttribute("USER") == null) {
	response.sendRedirect("login.jsp");
	return;
}%>
<%@page import="java.sql.ResultSet" %>
<%@page import="db.MSDB" %>
<%
ResultSet lvel = MSDB.query("SELECT * FROM Levels;");
ResultSet result = 
	MSDB.query("SELECT * FROM Students WHERE id=" + request.getParameter("id"));

String stuid = "";
String stuname = "";
String gender = "";
int levelId = 0;
String dob = "";
String stadat = "";
String endat = "";
if(result.next()) {
	stuid = result.getString("student_id");
	stuname = result.getString("student_name");
	gender = result.getString("gender");
	levelId = result.getInt("level_id");
	dob = result.getString("dob");
	stadat = result.getString("start_date");
	endat = result.getString("end_date");
	
	MSDB.clean();
} else {
	MSDB.clean();
	response.sendRedirect("notfound.jsp");
	return;
}
%>
<%@include file="header.jsp" %>
<div id="app">
<div class="w3-main" style="margin-top:54px">
      <div style="padding:16px 32px">
        <div class="w3-row-padding w3-stretch">
          <div class="w3-col l8">
            <div class="w3-white w3-round w3-margin-bottom w3-border" style="">
              <header class="w3-padding-large w3-large w3-border-bottom" style="font-weight: 500">Add Student</header>
              <div class="w3-padding-large">
              	
              	
                <form action="student-update.jsp" method="post">
					<input type="hidden" name="ID" value="<%= request.getParameter("id") %>">
                  <div class="w3-margin-bottom">
                    <label for="input-1">Student ID</label>
                    <input type="text" class="w3-input w3-border w3-round" name=stuid placeholder="Enter ID" value="<%= stuid %>">
                  </div>
                  <div class="w3-margin-bottom">
                    <label for="input-1">Student Name</label>
                    <input type="text" class="w3-input w3-border w3-round" name="stuname" placeholder="Enter Name" value="<%= stuname %>">
                  </div>
                  <div class="w3-margin-bottom">
                    <label for="input-1">Gender</label>
                    <input type="text" class="w3-input w3-border w3-round" name="gender" placeholder="Enter Name" value="<%= gender %>">
                  </div>
                  
				  <select class="w3-input w3-border w3-margin-bottom" name="lvelId" required>
						<% while(lvel.next()) { 
						if(lvel.getInt("id") == levelId) { %>
							<option value="<%= lvel.getInt("id") %>" selected><%= lvel.getString("level") %></option>
						<% } else { %>
							<option value="<%= lvel.getInt("id") %>"><%= lvel.getString("level") %></option>
						<% }
					} %>
				  </select>
                  <div class="w3-margin-bottom">
                    <label for="input-1">Date Of Birth</label>
                    <input type="date" class="w3-input w3-border w3-round" name="dob" placeholder="Enter Date Of Birth"value="<%= dob %>">
                  </div>
                  <div class="w3-margin-bottom">
                    <label for="input-1">Start Date</label>
                    <input type="date" class="w3-input w3-border w3-round" name="stadat" placeholder="Enter Start Date" value="<%= stadat %>">
                  </div>
                  <div class="w3-margin-bottom">
                    <label for="input-1">End Date</label>
                    <input type="date" class="w3-input w3-border w3-round" name="endat" placeholder="Enter End Date" value="<%= endat %>">
                  </div>
                  <div class="w3-margin-bottom">
                   
                      
                  </div>
                  <div class="w3-margin-bottom">
                    <button type="submit" class="w3-button w3-primary w3-round"><i class="fa fa-fw fa-lock"></i> Save</button>
                    <a href="student-list.jsp" class="w3-button w3-primary w3-round" >Cancel</a>
                  </div>
                </form>
              </div>
            </div>
          </div>
       </div>
     </div>
  </div>
</div>
 
 <%@include file="footer.jsp" %>
 <% MSDB.clean(); %>