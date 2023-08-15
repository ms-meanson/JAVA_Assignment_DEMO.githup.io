<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%! 
String makeCss(String name, Object title) {
	if(name.equals(title)) {
		return "w3-bar-item w3-button w3-blue";
	} else {
		return "w3-bar-item w3-button";
	}
}
%>

<head>
  <meta charset="ISO-8859-1">
  <title><%= request.getAttribute("title") %></title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap">
  <link rel="stylesheet" href="./assets/icons/font-awesome-4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="./assets/css/w3pro-4.13.css">
  <link rel="stylesheet" href="./assets/css/w3-theme.css">
  <link rel="stylesheet" href="./assets/css/admin-styles.css">
  <link rel="stylesheet" href="./assets/css/scrollbar.css">
  <link rel="stylesheet" href="./assets/css/style.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
   
</head>

<body class="w3-light-grey">
  <input id="sidebar-control" type="checkbox" class="w3-hide">
  <div id="app">
    <div class="w3-top w3-card" style="height:54px">
      <div class="w3-flex-bar w3-theme w3-left-align">
        <div class="admin-logo w3-bar-item w3-hide-medium w3-hide-small">
          <h5 class="" style="line-height:1; margin:0!important; font-weight:300">
            <a href="./profile.jsp" class="w3-button w3-bold">
              <img src="./assets/admin-logo.png" alt="w3mix" class="w3-image" width="26"> &nbsp;  <%= session.getAttribute("USER") %></a>
          </h5>
        </div>
        <label for="sidebar-control" class="w3-button w3-large w3-opacity-min"><i class="fa fa-bars"></i></label>
       
        <div class="w3-right">
          <button type="button" class="w3-button w3-large w3-opacity-min"><i class="fa fa-envelope-open"></i></button>
          <button type="button" class="w3-button w3-large w3-opacity-min"><i class="fa fa-bell"></i></button>
        </div>
        <div class="text-right">
          <div class="w3-button">
            <div class="w3-circle w3-center w3-text-white w3-primary" style="width:38px; height:38px">
              <i class="fa fa-fw fa-user fa" style="margin-top:11px"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
    <nav id="sidebar" class="w3-sidebar w3-top w3-bottom w3-collapse w3-white w3-border-right w3-border-top scrollbar" style="z-index:3;width:230px;height:auto;margin-top:54px;border-color:rgba(0, 0, 0, .1)!important" id="mySidebar">
      <div class="w3-bar-item w3-border-bottom w3-hide-large" style="padding:6px 0">
        <label for="sidebar-control" class="w3-left w3-button w3-large w3-opacity-min" style="background:white!important"><i class="fa fa-bars"></i></label>
        <h5 class="" style="line-height:1; margin:0!important; font-weight:300">
          <a href="./index.html" class="w3-button" style="background:white!important">
            <img src="./assets/admin-logo.png" alt="w3mix" class="w3-image"> &nbsp;  <%= session.getAttribute("USER") %> </a>
        </h5>
      
      </div>
      <div class="w3-bar-block">
        <span class="w3-bar-item w3-padding w3-small w3-opacity" style="margin-top:8px">MANAGEMENT SYSTEM </span>
        <a href="./index.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-text-primary <%= makeCss("Dashboard", request.getAttribute("title")) %>">
          <i class="fa fa-fw fa-bar-chart "></i>&nbsp; Dashboard </a>
        <a href="./student-list.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-text-primary <%= makeCss("Students", request.getAttribute("title")) %>">
          <i class="fa fa-fw fa-table"></i>&nbsp; Students </a>
        <a href="./level-list.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-text-primary <%= makeCss("Levels", request.getAttribute("title")) %>">
          <i class="fa fa-fw fa-table"></i>&nbsp; Levels</a>
        <a href="./add-student.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-text-primary <%= makeCss("Add Student", request.getAttribute("title")) %>">
          <i class="fa fa-fw fa-edit"></i>&nbsp; Add Student</a>
        <a href="./add-level.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-text-primary <%= makeCss("Add Level", request.getAttribute("title")) %>">
          <i class="fa fa-fw fa-edit"></i>&nbsp; Add Level</a>
        <a href="./about.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-text-primary <%= makeCss("About Us", request.getAttribute("title")) %>">
          <i class="fa fa-fw fa-user-circle"></i>&nbsp; About Us </a>
        <a href="./log-out.jsp"  class="w3-bar-item w3-button w3-padding-large w3-hover-text-primary" onsubmit="return confirm('Are you sure?');" >
          <i class="fa fa-fw fa-sign-in"></i>&nbsp; Log Out </a>
          
      </div>
    </nav>


