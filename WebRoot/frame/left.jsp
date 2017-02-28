<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/menu.css"/>
  </head>
  
  <body>
    <div class="sidebar-wrap">
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href="${pageContext.request.contextPath }/frame/right.jsp" target="rightframe"><i class="icon-font">&#xe000;</i>主页</a>
                    <ul class="sub-menu">
                        <li><a href="${pageContext.request.contextPath}/depart/departAction_findAllPage" target="rightframe"><i class="icon-font">&#xe005;</i>院系管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/major/majorAction_findAllPage" target="rightframe"><i class="icon-font">&#xe005;</i>专业管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/clazz/clazzAction_findAllPage" target="rightframe"><i class="icon-font">&#xe005;</i>班级管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/student/studentAction_findAllPage" target="rightframe"><i class="icon-font">&#xe005;</i>学生管理</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
  </body>
</html>
