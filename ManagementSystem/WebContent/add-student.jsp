<% request.setAttribute("title", "Add Student"); %>

<% if(session.getAttribute("USER") == null) {
	response.sendRedirect("login.jsp");
	return;
}%>
<%@page import="java.sql.ResultSet" %>
<%@page import="db.MSDB" %>
<%
ResultSet lvel = MSDB.query("SELECT * FROM Levels;");
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
              
                <form action="student-insert.jsp" method="post">
                  <div class="w3-margin-bottom">
                    <label for="input-1">Student ID</label>
                    <input type="text" class="w3-input w3-border w3-round" name="stuId" placeholder="Enter ID">
                  </div>
                  <div class="w3-margin-bottom">
                    <label for="input-1">Student Name</label>
                    <input type="text" class="w3-input w3-border w3-round" name="stuName" placeholder="Enter Name">
                  </div>
                  <label for="input-1">Gender</label>
                  <select class="w3-input w3-border w3-margin-bottom" name="gender">
						<option value="Male" >Male</option>
						<option value="Female">Female</option>
				  </select>
				  <label for="input-1">Level</label>
				  <select class="w3-input w3-border w3-margin-bottom" name="lvelId" required>
						<% while(lvel.next()) { %>
						<option value="<%= lvel.getInt("id") %>"><%= lvel.getString("level") %></option>
						<% } %>
				  </select>
                  <div class="w3-margin-bottom">
                    <label for="input-1">Date Of Birth</label>
                    <input type="date" class="w3-input w3-border w3-round" name="dob" placeholder="Enter Date Of Birth">
                  </div>
                  <div class="w3-margin-bottom">
                    <label for="input-1">Start Date</label>
                    <input type="date" class="w3-input w3-border w3-round" name="stadat" placeholder="Enter Start Date">
                  </div>
                  <div class="w3-margin-bottom">
                    <label for="input-1">End Date</label>
                    <input type="date" class="w3-input w3-border w3-round" name="endat" placeholder="Enter End Date">
                  </div>
                  <div class="w3-margin-bottom">
                   
                      
                  </div>
                  <div class="w3-margin-bottom">
                    <button type="submit" class="w3-button w3-primary w3-round"><i class="fa fa-fw fa-lock"></i> Create</button>
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