<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
	<link rel="stylesheet" type="text/css" href="css/menu.css"/>
    <title>班级管理</title>
	<script type="text/javascript">  
    function del(){  
        if(confirm("确认是否删除?")){  
            return true;  
        }  
        return false;  
    }  
</script>
    
</head>
<body>
	<div class="result-wrap">
	 <div class="main-wrap">
      <div class="result-wrap">
        <form name="myform" id="myform" method="post">
          <div class="result-title">
            <div class="result-list">
              <a href="clazz/clazzAction_preAdd"><i class="icon-font">&#xe026</i>添加班级</a>
            </div>
          </div>
        </form>
      </div>
 	  <div class="result-content"> 
	    <table class="result-tab" width="100%">
		    <tr>
				<td>班级名称</td>
				<td>所属专业</td>
                <td>操作</td>
		    </tr>
		  <c:forEach var="Clazz" items="${allClazz}">
	    	<tr>
	    		<td class="tc">${Clazz.clzName}</td>
	        	<td class="tc">${Clazz.major.majName}</td>
	    		<td>
	    			<div>
      					<a type="button" class="link-update" href="clazz/clazzAction_preEdit?clzID=${Clazz.clzID}"><span class="icon-edit"><i class="icon-font">&#xe002</i></span>修改</a>
       					<a class="link-del" href="clazz/clazzAction_del?clzID=${Clazz.clzID}" onclick='return confirm("确定要删除?")'><span class="icon-trash-o"><i class="icon-font">&#xe019</i></span> 删除</a>
      				</div>
	    		</td>
	    	</tr>
	      </c:forEach>
	    </table>
	  </div>
	 </div>
	</div>
</body>
</html>
