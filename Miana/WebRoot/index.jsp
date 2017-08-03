<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/index.js"></script>	 
	<style type="text/css" >
        @import "bootstrap/css/bootstrap.min.css";
        @import "css/index.css";
    </style>
    
  </head>

  <body>
 
 <div class="background" >
      <img id="back_img" src="pic/45.jpg"/>
  </div>

<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse"
                data-target="#example-navbar-collapse">
            <span class="sr-only">切换导航</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a id="search_Type" Name="searchType" class="navbar-brand" value="Baidu">百度一下</a>
    </div>
    <div class="collapse navbar-collapse" id="example-navbar-collapse">
        <ul class="nav navbar-nav">
            <li><a href="JavaScript:changeSearch('Baidu')">Baidu</a></li>
            <li><a href="JavaScript:changeSearch('Google')">Google</a></li>            
        </ul>
    </div>
    </div>
</nav>

 
<div style="padding: 15% 15% 10px;">
 <form method="post" action="dispatch" class="bs-example bs-example-form" role="form">
      <input type="hidden" name="type_recorde" id="type_recorde" value="Baidu"/>
      <input type="hidden" name="screen_width" id="screen_width" value="">
        <div class="row">           
            <div class="col-lg-12">
                <div class="input-group">
                    <input name="search_input" type="text" class="search_input form-control" >
                    <span class="input-group-btn">
                        <button class="search_btn btn btn-default" type="submit">Go!</button>
                    </span>
                </div><!-- /input-group -->
            </div><!-- /.col-lg-6 -->
        </div><!-- /.row -->
     </form>
</div>
 

  </body>
</html>
