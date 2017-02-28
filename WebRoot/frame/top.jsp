<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="css/menu.css"/>
    <script type="text/javascript">
    /* comfirm弹出提示框，确定返回true，取消返回false
	   self 返回对当前窗口的引用。等价于 Window 属性。
	   parent 返回父窗口。
	   self.parent 当前窗口的父窗口
	   
    */
    	function logout() {
    		if ( confirm("确定退出？") ) {
    			self.parent.location = '${pageContext.request.contextPath }/user/UserAction_logout';
    		}
    	}
    </script>

  </head>
  
  <body>
    <div class="topbar-wrap white">
      <div class="topbar-inner clearfix">
      	<div class="topbar-logo-wrap clearfix">
          <ul class="navbar-list clearfix">
            <li><a class="on" href="${pageContext.request.contextPath }/frame/right.jsp" target="rightframe">管理系统</a></li>
          </ul>     	
        </div>
        <div class="top-info-wrap">
          <ul class="top-info-list clearfix">
            <li><a href="javascript:logout();">退出</a></li>
          </ul>
       </div>
      </div>
    </div>
  </body>
</html>
