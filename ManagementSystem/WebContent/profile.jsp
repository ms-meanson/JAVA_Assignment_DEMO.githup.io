<% request.setAttribute("title", "Profile"); %>

<% if(session.getAttribute("USER") == null) {
	response.sendRedirect("login.jsp");
	return;
}%>


<%@include file="header.jsp" %>

<div id="app">
	<div class="w3-main" style="margin-top:54px">
      
      <div style="padding:16px 32px">
        <div class="w3-row-padding w3-stretch">
          <div class="w3-col l4">
            <div class="w3-crop w3-round w3-white">
              <div class="w3-crop" style="height:150px">
                <img src="./assets/images/cover.JPG" class="w3-image" alt="" style="margin-top:-30px">
              </div>
              <div class="w3-container w3-border-bottom">
                <div class="w3-show-inline-block w3-crop w3-circle" style="border:3px solid #fff; width:75px; margin-top:-37px">
                  <img src="./assets/images/profile.jpg" class="w3-image" alt="">
                </div>
                <h5 style="margin-top:0">Mean SON</h5>
                <p>Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <div class="w3-bar w3-margin-bottom">
                  <a href="javascript:;" class="w3-bar-item bg-facebook w3-margin-right w3-circle w3-text-white" style="padding:4px 5.4px!important">
                    <i class="fa fa-fw fa-facebook text-white"></i>
                  </a>
                  <a href="javascript:;" class="w3-bar-item bg-twitter w3-margin-right w3-circle w3-text-white" style="padding:4px 5.4px!important">
                    <i class="fa fa-fw fa-twitter text-white"></i>
                  </a>
                  <a href="javascript:;" class="w3-bar-item bg-google-plus w3-margin-right w3-circle w3-text-white" style="padding:4px 5.4px!important">
                    <i class="fa fa-fw fa-google-plus text-white"></i>
                  </a>
                </div>
              </div>
              <div class="w3-padding-large">
                <div class="w3-flex-bar">
                  <img src="./assets/icons/html5.svg" alt="" class="w3-image w3-left" width="40">
                  <div class="w3-container w3-grow">
                    <p style="margin-top:0">HTML <span class="w3-right">65%</span></p>
                    <div class="progress w3-light w3-round" style="height:5px;">
                      <div class="progress-bar w3-info w3-round" style="width:65%;height:5px;"></div>
                    </div>
                  </div>
                </div>
                <hr>
                <div class="w3-flex-bar">
                  <img src="./assets/icons/bootstrap-4.svg" alt="" class="w3-image w3-left" width="40">
                  <div class="w3-container w3-grow">
                    <p style="margin-top:0">Bootstrap 4 <span class="w3-right">45%</span></p>
                    <div class="progress w3-light w3-round" style="height:5px;">
                      <div class="progress-bar w3-info w3-round" style="width:45%;height:5px;"></div>
                    </div>
                  </div>
                </div>
                <hr>
                <div class="w3-flex-bar">
                  <img src="./assets/icons/angular-icon.svg" alt="" class="w3-image w3-left" width="40">
                  <div class="w3-container w3-grow">
                    <p style="margin-top:0">AngularJS <span class="w3-right">70%</span></p>
                    <div class="progress w3-light w3-round" style="height:5px;">
                      <div class="progress-bar w3-info w3-round" style="width:70%;height:5px;"></div>
                    </div>
                  </div>
                </div>
                <hr>
                <div class="w3-flex-bar">
                  <img src="./assets/icons/react.svg" alt="" class="w3-image w3-left" width="40">
                  <div class="w3-container w3-grow">
                    <p style="margin-top:0">React JS <span class="w3-right">35%</span></p>
                    <div class="progress w3-light w3-round" style="height:5px;">
                      <div class="progress-bar w3-info w3-round" style="width:35%;height:5px;"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="w3-col l8">
            <div class="w3-crop w3-round w3-white w3-padding-large">
              <div class="w3-tabs w3-space-around">
                <input id="taba" class="w3-tab-control" type="radio" name="tabs" value="1" checked>
                <label for="taba">
                  <span class="w3-button w3-block w3-border-bottom w3-border-info">
                    <span class="nav-link active"><i class="fa w3-xlarge fa-user"></i> <br> <span>Profile</span></span>
                  </span>
                </label>
                <input id="tabb" class="w3-tab-control" type="radio" name="tabs" value="2">
                <label for="tabb">
                  
                </label>
                <input id="tabc" class="w3-tab-control" type="radio" name="tabs" value="3">
                <label for="tabc">
                  
                </label>
                <div class="w3-tab-content">
                  <section class="w3-tab-panel w3-padding">
                    <h5 class="mb-3">User Profile</h5>
                    <div class="w3-row">
                      <div class="w3-col m6">
                        <h6>About</h6>
                        <p> Web Designer, UI/UX Engineer </p>
                        <h6>Hobbies</h6>
                        <p> Indie music, skiing and hiking. I love the great outdoors. </p>
                      </div>
                      <div class="w3-col m6">
                        <h6>Recent badges</h6>
                        <div class="w3-flex w3-spaced-items-small">
                          <a href="javascript:void();" class="w3-tag w3-button w3-small w3-black w3-round-xlarge">html5</a>
                          <a href="javascript:void();" class="w3-tag w3-button w3-small w3-black w3-round-xlarge">react</a>
                          <a href="javascript:void();" class="w3-tag w3-button w3-small w3-black w3-round-xlarge">codeply</a>
                          <a href="javascript:void();" class="w3-tag w3-button w3-small w3-black w3-round-xlarge">angularjs</a>
                          <a href="javascript:void();" class="w3-tag w3-button w3-small w3-black w3-round-xlarge">css3</a>
                          <a href="javascript:void();" class="w3-tag w3-button w3-small w3-black w3-round-xlarge">jquery</a>
                          <a href="javascript:void();" class="w3-tag w3-button w3-small w3-black w3-round-xlarge">bootstrap</a>
                          <a href="javascript:void();" class="w3-tag w3-button w3-small w3-black w3-round-xlarge">responsive-design</a>
                        </div>
                        <hr>
                        <div class="w3-flex w3-spaced-items-small">
                          <span class="w3-tag w3-small w3-round w3-primary"><i class="fa fa-user"></i> 900 Followers</span>
                          <span class="w3-tag w3-small w3-round w3-success"><i class="fa fa-cog"></i> 43 Forks</span>
                          <span class="w3-tag w3-small w3-round w3-danger"><i class="fa fa-eye"></i> 245 Views</span>
                        </div>
                      </div>
                    </div>
                    <div>
                      <h5><span class="fa fa-clock-o w3-right"></span> Recent Activity</h5>
                      <div class="table-responsive">
                        <table class="w3-table w3-bordered w3-striped">
                          <tbody>
                            <tr>
                              <td>
                                <strong>Abby</strong> joined ACME Project Team in <strong>`Collaboration`</strong>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <strong>Gary</strong> deleted My Board1 in <strong>`Discussions`</strong>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <strong>Kensington</strong> deleted MyBoard3 in <strong>`Discussions`</strong>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <strong>John</strong> deleted My Board1 in <strong>`Discussions`</strong>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <strong>Skell</strong> deleted his post Look at Why this is.. in <strong>`Discussions`</strong>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </section>
                  
                  
                 
                </div>
              </div>
            </div>
          </div>
          
        </div>
        </div>
    </div>
</div>

<%@include file="footer.jsp" %>
