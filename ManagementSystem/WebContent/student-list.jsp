<% request.setAttribute("title", "Students"); %>

<% if(session.getAttribute("USER") == null) {
	response.sendRedirect("login.jsp");
	return;
}%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.MSDB" %>

 <%
 String sql = "select * from Students;";
 ResultSet result = MSDB.query(sql);
 %>

<%@include file="header.jsp" %>
<div id="app">
<div class="w3-main" style="margin-top:54px">
      <div style="padding:16px 32px">
        <div class="w3-row-padding w3-stretch">
          <div class="w3-col l12">
            <div class="w3-white w3-round w3-margin-bottom w3-border" style="">
              <header class="w3-padding-large w3-large " style="font-weight: 500">Students List
            	<div class="w3-margin-bottom w3-right" style="width:50%">
                    <input id="search-Input" type="text" class="w3-input w3-border w3-round" name="search" placeholder="Search...">
                 </div>
              </header>
              <div class="w3-padding-large">
                <table class="w3-table w3-bordered w3-striped" >
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Student ID</th>
                    <th scope="col">Student Name</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Date Of Birth</th>
                    <th scope="col">Action</th>
                  </tr>
                  <tbody id="search-Table">
	                  <tr><%
						int id = 1;
	                  	while(result.next()) { %>
							<tr>
							<td scope="row"><%= id++ %>.</td>
							<td><%= result.getString("student_id") %></td>
							<td><%= result.getString("student_name") %></td>
							<td><%= result.getString("gender") %></td>
							<td><%= result.getString("dob") %></td>
							<td>
								<a href="student-edit.jsp?id=<%= result.getInt("id") %>" class="w3-button w3-blue w3-small">Edit</a>
								
								<form action="student-delete.jsp" method="post" class="w3-show-inline-block" onsubmit="return confirm('Are you sure?');"> 
							        <input type="hidden" name="ID" value="<%= result.getInt("id") %>"> 
							        <button class="w3-button w3-red w3-small" type="submit">Delete</button> 
						       </form>
							</td>
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
  $("#search-Input").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#search-Table tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>