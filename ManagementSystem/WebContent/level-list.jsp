<% request.setAttribute("title", "Levels"); %>

<% if(session.getAttribute("USER") == null) {
	response.sendRedirect("login.jsp");
	return;
}%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.MSDB" %>

 <%
 String sql = "select * from Levels;";
 ResultSet result = MSDB.query(sql);
 %>
<%@include file="header.jsp" %>
<div id="app">
<div class="w3-main" style="margin-top:54px">
      <div style="padding:16px 32px">
        <div class="w3-row-padding w3-stretch">
          <div class="w3-col l12">
            <div class="w3-white w3-round w3-margin-bottom w3-border" style="">
              <header class="w3-padding-large w3-large w3-border-bottom" style="font-weight: 500">Level List</header>
              <div class="w3-padding-large">
                <table class="w3-table w3-bordered w3-striped">
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Level</th>
                    <th scope="col">Fee</th>
                    <th scope="col">Action</th>
                  </tr>
                  <tr>
                   <%
					int id = 1;
					for(int i = 1; i <= id; i++)  { %>
	                   <% while(result.next()) { %>
							<tr>
								<td scope="row"><%= id++ %>.</td>
								<td><%= result.getString("level") %></td>
								<td><%= result.getInt("fee_per_term") %></td>
								<td>
									<a href="level-edit.jsp?id=<%= result.getInt("id") %>" class="w3-button w3-blue w3-small">Edit</a>
											
									<form action="level-delete.jsp" method="post" class="w3-show-inline-block" onsubmit="return confirm('Are you sure?');"> 
									     <input type="hidden" name="ID" value="<%= result.getInt("id") %>"> 
									     <button class="w3-button w3-red w3-small" type="submit">Delete</button> 
								    </form>
								</td>
							</tr>
						<% } %>
					<% } %>
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