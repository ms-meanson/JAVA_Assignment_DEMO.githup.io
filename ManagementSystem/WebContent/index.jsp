<% request.setAttribute("title", "Dashboard"); %>

<% if(session.getAttribute("USER") == null) {
	response.sendRedirect("login.jsp");
	return;
}%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.MSDB" %>

<%

String sql = "SELECT Students.id, Students.student_id,Students.student_name, Levels.level,Students.start_date,Students.end_date,Levels.fee_per_term FROM  Levels INNER JOIN Students ON Students.level_id = Levels.id;";
ResultSet result = MSDB.query(sql);

%>
<%@include file="header.jsp" %>

<div id="app">
	<div class="w3-main" style="margin-top:54px">
      
      <div style="padding:16px 32px">
        <div class="w3-row-padding w3-stretch">
          <div class="w3-col L12">
            <div class="w3-white w3-round w3-margin-bottom w3-border" style="">
              <header class="w3-padding-large w3-large " style="font-weight: 500">Students Registered List
              <div class="w3-margin-bottom w3-right" style="width:50%">
                    <input id="s-Input" type="text" class="w3-input w3-border w3-round" name="search" placeholder="Search...">
                </div>
              </header>
              <div class="w3-padding-large">
                <table class="w3-table w3-bordered w3-striped">
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Student ID</th>
                    <th scope="col">Student Name</th>
                    <th scope="col">Level</th>
                    <th scope="col">Start Date</th>
                    <th scope="col">End Date</th>
                    <th scope="col">Fee</th>
                  </tr>
                   <tbody id="s-Table">
	                   <tr><%
						int id = 1;
	                    while(result.next()) { %>
						<tr>
							<td scope="row"><%= id++ %>.</td>
							<td><%= result.getString("student_id") %></td>
							<td><%= result.getString("student_name") %></td>
							<td><%= result.getString("level") %></td>
							<td><%= result.getString("start_date") %></td>
							<td><%= result.getString("end_date") %></td>
							<td><%= result.getInt("fee_per_term") %></td>
						</tr>
					<% } %>
				  </tbody>
                </table>
              </div>
            </div>
          </div>
         </div>
     </div>

    </div>
</div>

<%@include file="footer.jsp" %>
 <% MSDB.clean(); %>
 
<script>
$(document).ready(function(){
  $("#s-Input").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#s-Table tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>