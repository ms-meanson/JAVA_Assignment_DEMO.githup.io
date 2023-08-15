
 <% request.setAttribute("title", "Add Level"); %>
 
 <% if(session.getAttribute("USER") == null) {
	response.sendRedirect("login.jsp");
	return;
}%>
 
 
 <%@include file="header.jsp" %>
<div id="app">
<div class="w3-main" style="margin-top:54px">
      <div style="padding:16px 32px">
        <div class="w3-row-padding w3-stretch">
          <div class="w3-col l8">
            <div class="w3-white w3-round w3-margin-bottom w3-border" style="">
              <header class="w3-padding-large w3-large w3-border-bottom" style="font-weight: 500">Add Levels</header>
              <div class="w3-padding-large">
                <form action="level-insert.jsp" method="post">
                  <div class="w3-margin-bottom">
                    <label for="input-1">Level</label>
                    <input type="text" class="w3-input w3-border w3-round" placeholder="Enter Level" name="level">
                  </div>
                  <div class="w3-margin-bottom">
                    <label for="input-1">Fee</label>
                    <input type="text" class="w3-input w3-border w3-round" placeholder="Enter fee per term" name="fee">
                  </div>
                
                  <div class="w3-margin-bottom">
                    <button type="submit" class="w3-button w3-primary w3-round"><i class="fa fa-fw fa-lock"></i> Create</button>
                    <a href="level-list.jsp" class="w3-button w3-primary w3-round" >Cancel</a>
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