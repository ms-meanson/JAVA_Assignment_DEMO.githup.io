<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap">
  <link rel="stylesheet" href="./assets/icons/font-awesome-4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="./assets/css/w3pro-4.13.css">
  <link rel="stylesheet" href="./assets/css/w3-theme.css">
  <link rel="stylesheet" href="./assets/css/admin-styles.css">
  <link rel="stylesheet" href="./assets/css/scrollbar.css">
</head>

<body class="w3-light-grey">
  <input id="sidebar-control" type="checkbox" class="w3-hide">
<div class="w3-main" style="margin-top:54px">
      <div style="padding:16px 32px">
        <div class="w3-padding-32">
          <div class="w3-auto" style="width:380px">
            <div class="w3-white w3-round w3-margin-bottom w3-border" >
              
             <form action="sign-in.jsp" method="post">
             
	             <div class="w3-padding-large">
		                <div class="w3-center w3-padding-16">
		                  <h3>WELCOME</h3>
		                  <p>Students Management System</p>
		                </div>
		                <% if(session.getAttribute("ERROR") != null) { %>
							<div class="w3-panel w3-red">
								<p><%= session.getAttribute("ERROR") %></p>
							</div>
						<% 
							session.removeAttribute("ERROR");
						} %>
		                <div class="w3-margin-bottom">
		                  <input type="text" class="w3-input w3-round w3-border" placeholder="Enter Username" name="username">
		                </div>
		                <div class="w3-margin-bottom">
		                  <input type="password" class="w3-input w3-round w3-border" placeholder="Enter Password" name="password">
		                </div>
		                <button type="submit" class="w3-button w3-round w3-margin-bottom w3-primary w3-block">Sign In</button>
	              </div>
             </form>
            </div>
          </div>
        </div>
      </div>
     
    </div>
</body>
</html>