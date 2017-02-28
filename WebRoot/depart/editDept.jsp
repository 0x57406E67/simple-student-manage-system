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
</head>

<body>
	<form action="depart/departAction_edit?pageNum=${pageNum }" method="post" id="myform">
		<c:if test="depID != null">
		</c:if>
		<table class="insert-tab" width="70%">
			<input hidden name="depID" value="${depID}" />
			<tbody>
				<tr>
					<th><i class="require-red"></i>院系名称(必填)：</th>
					<td><input name="depName" class="common-text required" value="${depName }"
						id="depName" size="20" type="text">
					</td>
				</tr>
				<tr>
					<th>院长：</th>
					<td>
						<input name="depPresident" class="common-text" size="10" value="${depPresident }"
						type="text">
					</td>
				</tr>
				<tr>
					<th>地址：</th>
					<td><input name="depAddr" class="common-text" value="${depAddr }"
						size="20" type="text"></td>
				</tr>
				<tr>
					<th>电话：</th>
					<td><input name="depTel" class="common-text" value="${depTel }"
						size="15" type="text"></td>
				</tr>                
				<tr>
					<th></th>
					<td>
						<input class="btn btn-primary btn6 mr10" value="提交"
						type="submit">
						<input class="btn btn-primary btn6 mr10" value="返回"
						type="button" onclick="location='depart/departAction_findAllPage?pageNum=${pageNum}'">
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>
