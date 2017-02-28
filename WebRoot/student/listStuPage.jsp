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
    <title>学生管理</title>
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
              <a href="student/studentAction_preAdd?pageNum=${page.pageNum }"><i class="icon-font">&#xe026</i>添加学生</a>
            </div>
          </div>
        </form>
      </div>
 	  <div class="result-content"> 
	    <table class="result-tab" width="100%">
		    <tr>
				<td>姓名</td>
				<td>性别</td>
				<td>年龄</td>
				<td>电话</td>
				<td>所属班级</td>
				<td>入学年份</td>
				<td>是否毕业</td>
                <td>操作</td>
		    </tr>
		  <c:forEach var="Student" items="${page.data}">
	    	<tr>
	    		<td class="tc">${Student.stuName}</td>
	    		<td class="tc">${Student.stuSex}</td>
	    		<td class="tc">${Student.stuAge}</td>
	    		<td class="tc">${Student.stuTel}</td>
	        	<td class="tc">${Student.clazz.clzName}</td>
	        	<td class="tc">${Student.stuEntry}</td>
	        	<td class="tc">${Student.stuStatus}</td>
	    		<td>
	    			<div>
      					<a type="button" class="link-update" href="student/studentAction_preEdit?stuID=${Student.stuID}&pageNum=${page.pageNum}"><span class="icon-edit"><i class="icon-font">&#xe002</i></span>修改</a>
       					<a class="link-del" href="student/studentAction_del?stuID=${Student.stuID}&pageNum=${page.pageNum}" onclick='return del()'><span class="icon-trash-o"><i class="icon-font">&#xe019</i></span> 删除</a>
      				</div>
	    		</td>
	    	</tr>
	      </c:forEach>
	    </table>


	  <table align="center" width="100%">
	  	 <tr>  
        	<td colspan="6" align="center">
		    	共${page.totalRecord}条记录      
		       	 共${page.totalPage}页      
	         	当前第${page.pageNum}页<br>
	        <c:if test="${page.totalPage == 1}">
	    		<a href="student/studentAction_findAllPage?pageNum=1">首页</a>
	    	</c:if>	
	    	<c:if test="${page.totalPage > 1}">
	    		<c:if test="${page.pageNum == 1}">
	    			首页
	    			<a href="student/studentAction_findAllPage?pageNum=${page.pageNum+1 }">下一页</a>
	    			<a href="student/studentAction_findAllPage?pageNum=${page.totalPage }">尾页</a>
	    		</c:if>
	    		<c:if test="${page.pageNum != 1 && page.pageNum != page.totalPage }">
					<a href="student/studentAction_findAllPage?pageNum=1">首页</a>
					<a href="student/studentAction_findAllPage?pageNum=${page.pageNum-1 }">上一页</a>
	    			<a href="student/studentAction_findAllPage?pageNum=${page.pageNum+1 }">下一页</a>
	    			<a href="student/studentAction_findAllPage?pageNum=${page.totalPage }">尾页</a> 	    		
	    		</c:if>
	    		<c:if test="${page.pageNum == page.totalPage }">
					<a href="student/studentAction_findAllPage?pageNum=1">首页</a>
					<a href="student/studentAction_findAllPage?pageNum=${page.pageNum-1 }">上一页</a>
	    			尾页		
	    		</c:if>	    	
	    	</c:if>	    	
        	</td>  
        </tr>  
	  </table>	    
	  </div>
	 </div>
	</div>
</body>
</html>
