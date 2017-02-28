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
        	 if(form.depart.value=='') {
        		 alert("请选择所属院系！！！");
        		 form.depart.focus();
        		 return false;
        	 }
        	 return true;
         }
	</script>
</head>

<body>
	<form action="major/majorAction_add?pageNum=${pageNum }" onsubmit="return check(this)" method="post" id="myform">
		<table class="insert-tab" width="70%">	
			<tbody>
				<tr>
					<th>所属院系(必选)：</th>
					<td>
						<select id="depart" name="depart.depID" form="myform">
							<option value="" selected="selected" >请选择</option>
							<c:forEach var="Depart" items="${allDepart}">
								<option value="${Depart.depID }">${Depart.depName }</option>
							</c:forEach>			
						</select>						
					</td>			
				</tr> 				
				<tr>
					<th><i class="require-red"></i>专业名称：</th>
					<td><input name="majName" class="common-text required" value="${majName }"
						id="majName" size="20" type="text">
					</td>
				</tr>
				<tr>
					<th>辅导员：</th>
					<td>
						<input name="majPresident" class="common-text" size="10" value="${majPresident }"
						type="text">
					</td>
				</tr>
				<tr>
					<th>电话：</th>
					<td><input name="majTel" class="common-text" value="${majTel }"
						size="15" type="text"></td>
				</tr>
	               
				<tr>
					<th></th>
					<td>
						<input class="btn btn-primary btn6 mr10" value="提交"
						type="submit">
						<input class="btn btn-primary btn6 mr10" value="返回"
						type="button" onclick="location='major/majorAction_findAllPage?pageNum=${pageNum}'">
					</td>
				</tr>			
			</tbody>
		</table>
	</form>
</body>
</html>
