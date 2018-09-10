<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Attribute-Based Storage </title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="http://webthemez.com" />
<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet"> 
<link href="css/flexslider.css" rel="stylesheet" /> 
<%@ page  import="database.mysql.*" %>
<%
String path = request.getRealPath("/"); 
Check.main(path);
%>
<link href="css/style.css" rel="stylesheet" />
 
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body>
<div id="wrapper" class="home-page">
<div class="topbar">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <p class="pull-left hidden-xs">Attribute-Based Storage </p>  
        <p class="pull-right"><!-- <i class="fa fa-phone"></i>Tel No. 8121953811</p> -->
      </div>
    </div>
  </div>
</div>
	<!-- start header -->
	<header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                   
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li class=""><a href="index.html">Home</a></li> 
						 <li class="dropdown">
                        <!--<a href="#" data-toggle="dropdown" class="dropdown-toggle">About Us <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="about.html">Company</a></li>
                            <li><a href="#">Our Team</a></li>
                            <li><a href="#">News</a></li> 
                            <li><a href="#">Investors</a></li>
                        </ul>-->
                    </li> 
					<li><a href="user.jsp">User</a></li>
						<li><a href="dataprovider.jsp">Data Provider</a></li>
                        <li><a href="publiccloud.jsp">Public Cloud</a></li>
                        <li><a href="privatecloud.jsp">Private Cloud</a></li>
                        <li><a href="AA.jsp">AA</a></li>
                    </ul>
                </div>
            </div>
        </div>
	</header>