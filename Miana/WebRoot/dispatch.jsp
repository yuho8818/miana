<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dispatch.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%String type =(String)request.getSession().getAttribute("type");
      String key =(String)request.getSession().getAttribute("key");
      
      int screen_width =(Integer)request.getSession().getAttribute("screen_width");
      
      if(screen_width>600){
            if(type.equals("Baidu")){
				 response.sendRedirect("https://www.baidu.com/s?wd="+key+"&rsv_spt=1&rsv_iqid=0xda8f62bc0000c5f7&issp=1&f=8&rsv_bp=0&rsv_idx=2&ie=utf-8&tn=monline_3_dg&rsv_enter=1&rsv_sug3=4&rsv_sug1=2&rsv_sug7=101");
			}
            else if(type.equals("Google")){
            	 response.sendRedirect("https://www.google.com.hk/?gws_rd=cr#newwindow=1&safe=strict&q="+key);
			}
			
		}else{
			if(type.equals("Baidu")){
				 response.sendRedirect("https://m.baidu.com/from=844b/s?word="+key+"&ts=3411587&t_kt=0&ie=utf-8&fm_kl=021394be2f&rsv_iqid=2606624193&rsv_t=e806rHpCQ3HNNk3FK9sNTVvqCkz7%252F3Ig%252Ffur2mtmb9wxTlCKvD6fQN%252BzvQ&sa=ib&ms=1&rsv_pq=2606624193&rsv_sug4=2555&inputT=1341&ss=100");
			}
			else if(type.equals("Google")){
				 response.sendRedirect("https://www.google.com.hk/search?q="+key+"&rlz=1CDGOYI_enTW724CN724&oq="+key+"&aqs=chrome..69i57j0l3j69i60j69i61.1378j0j4&hl=zh-CN&sourceid=chrome-mobile&ie=UTF-8");
			}
		}
      
       
       %>
  </body>
</html>
