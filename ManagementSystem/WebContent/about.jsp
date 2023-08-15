<% request.setAttribute("title", "About Us"); %>
<% if(session.getAttribute("USER") == null) {
	response.sendRedirect("login.jsp");
	return;
}%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.MSDB" %>

 <%
 String sql = "select * from AboutUs;";
 ResultSet result = MSDB.query(sql);
 %>
<% request.setAttribute("title", "About"); %>


<%@include file="header.jsp" %>
<div id="app">
<div class="w3-main" style="margin-top:54px">
      <div style="padding:16px 32px">
        <div class="w3-row-padding w3-stretch">
          <div class="w3-col l12">
            <div class="w3-white w3-round w3-margin-bottom w3-border" style="">
              <header class="w3-padding-large w3-large w3-border-bottom" style="font-weight: 500">Group Member List</header>
              <div class="w3-padding-large">
                <table class="w3-table w3-bordered w3-striped">
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Student ID</th>
                    <th scope="col">Student Name</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Phone</th>
                  </tr>
                  <tr>
            		<% while(result.next()) { %>
						<tr>
							<th scope="col"><%= result.getString("id") %>.</th>
							<td><%= result.getString("StuID") %></td>
							<td><%= result.getString("StuName") %></td>
							<td><%= result.getString("gender") %></td>
							<td><%= result.getString("phone") %></td>
						</tr>
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