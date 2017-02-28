<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>System</title>

  </head>
  
  <frameset rows="50,*" framespacing="0px" frameborder="no">
  	<frame src="${pageContext.request.contextPath }/frame/top.jsp" scrolling="no" />
  	<frameset id="main" cols="170,*" framespacing="0px" frameborder="no">
  		<frame src="${pageContext.request.contextPath }/frame/left.jsp" name="left" scrolling="no" />
  		<frame name="rightframe" src="${pageContext.request.contextPath }/frame/right.jsp" name="right" scrolling="no" />
  	</frameset>
  </frameset>
</html>
