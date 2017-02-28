<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
         function check(form) {
        	 if(form.clazz.value=='') {
        		 alert("请选择所属班级！！！");
        		 form.clazz.focus();
        		 return false;
        	 }
        	 return true;
         }
	</script>
</head>

<body>
	<form action="student/studentAction_add?pageNum=${pageNum }" onsubmit="return check(this)" method="post" id="myform">
		<table class="insert-tab" width="70%">	
			<tbody>
				<tr>
					<th>所属班级(必选)：</th>
					<td>
						<select id="clazz" name="clazz.clzID" form="myform">
							<option value="" selected="selected" >请选择</option>
							<c:forEach var="Clazz" items="${allClazz}">
								<option value="${Clazz.clzID }">${Clazz.clzName }</option>
							</c:forEach>			
						</select>						
					</td>			
				</tr> 				
				<tr>
					<th><i class="require-red"></i>姓名：</th>
					<td><input name="stuName" class="common-text required" value="${stuName }"
						id="stuName" size="10" type="text">
					</td>
				</tr>
				<tr>
					<th>性别：</th>
					<td>
						<select name="stuSex" form="myform">
							<option selected="selected" >请选择</option>
							<option value="男">男</option>
							<option value="女">女</option>
						</select>						
					</td>			
				</tr>
				<tr>
					<th><i class="require-red"></i>年龄：</th>
					<td><input name="stuAge" class="common-text required" value="${stuAge }"
						id="stuAge" size="10" type="text">
					</td>
				</tr>
				<tr>
					<th><i class="require-red"></i>电话：</th>
					<td><input name="stuTel" class="common-text required" value="${stuTel }"
						id="stuTel" size="15" type="text">
					</td>
				</tr>
				<tr>
					<th><i class="require-red"></i>入学年份：</th>
					<td><input name="stuEntry" class="common-text required" value="${stuEntry }"
						id="stuEntry" size="10" type="text">
					</td>
				</tr>	
				<tr>
					<th>是否毕业：</th>
					<td>
						<select name="stuStatus" form="myform">
							<option selected="selected" >请选择</option>
							<option value="是">是</option>
							<option value="否">否</option>
						</select>						
					</td>			
				</tr>																								               
				<tr>
					<th></th>
					<td>
						<input class="btn btn-primary btn6 mr10" value="提交"
						type="submit">
						<input class="btn btn-primary btn6 mr10" value="返回"
						type="button" onclick="location='student/studentAction_findAllPage?pageNum=${pageNum}'">
					</td>
				</tr>			
			</tbody>
		</table>
	</form>
</body>
</html>
