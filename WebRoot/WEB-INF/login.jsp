<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>System</title>
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<script type="text/javascript">
    	function check(form) {
   		 	if(form.username.value=='') {
   			 	alert("请输入用户名");
   			 	form.username.focus();
   			 	return false;
   		 	}
   		 	if(form.password.value=='') {
   		 		alert("请输入密码");
   		 		form.password.focus();
   		 		return false;
   		 	}
   		 	return true;
   		 }
	</script>
  </head>
  
<body>
	<div class="main">
		<div class="login">
			<div class="inset">
				<form action="user/UserAction_login" onsubmit="return check(this)" method="post">
			         <div>
						<span><label>用户名</label></span>
						<span>
							<input type="text" name="username" class="textbox" id="active">
						</span>
					 </div>
					 <div>
						<span><label>密码</label></span>
					    <span>
					    	<input type="password" name="password" class="password">
					    </span>
					 </div>
					<div class="sign">
						<div class="submit">
						  <input type="submit" value="登录" >
						</div>
					</div>
				</form>
			</div>
		</div>
	</div> 
</body>
</html>
