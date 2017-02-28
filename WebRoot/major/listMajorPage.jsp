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
    <title>专业管理</title>
	<script type="text/javascript">  
    function del(){  
        if(confirm("警告！如果删除，其关联的子数据会一并删除！\n确定删除?")){  
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
              <a href="major/majorAction_preAdd?pageNum=${page.pageNum }"><i class="icon-font">&#xe026</i>添加专业</a>
            </div>
          </div>
        </form>
      </div>
 	  <div class="result-content"> 
	    <table class="result-tab" width="100%">
		    <tr>
				<td>专业名称</td>
				<td>辅导员</td>
				<td>电话</td>
				<td>所属院系</td>
                <td>操作</td>
		    </tr>
		  <c:forEach var="Major" items="${page.data}">
	    	<tr>
	    		<td class="tc">${Major.majName}</td>
	        	<td class="tc">${Major.majPresident}</td>
	        	<td class="tc">${Major.majTel}</td>
	        	<td class="tc">${Major.depart.depName}</td>
	    		<td>
	    			<div>
      					<a type="button" class="link-update" href="major/majorAction_preEdit?majID=${Major.majID}&pageNum=${page.pageNum }"><span class="icon-edit"><i class="icon-font">&#xe002</i></span>修改</a>
       					<a class="link-del" href="major/majorAction_del?majID=${Major.majID}&pageNum=${page.pageNum }" onclick='return del()'><span class="icon-trash-o"><i class="icon-font">&#xe019</i></span> 删除</a>
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
	    		<a href="major/majorAction_findAllPage?pageNum=1">首页</a>
	    	</c:if>	
	    	<c:if test="${page.totalPage > 1}">
	    		<c:if test="${page.pageNum == 1}">
	    			首页
	    			<a href="major/majorAction_findAllPage?pageNum=${page.pageNum+1 }">下一页</a>
	    			<a href="major/majorAction_findAllPage?pageNum=${page.totalPage }">尾页</a>
	    		</c:if>
	    		<c:if test="${page.pageNum != 1 && page.pageNum != page.totalPage }">
					<a href="major/majorAction_findAllPage?pageNum=1">首页</a>
					<a href="major/majorAction_findAllPage?pageNum=${page.pageNum-1 }">上一页</a>
	    			<a href="major/majorAction_findAllPage?pageNum=${page.pageNum+1 }">下一页</a>
	    			<a href="major/majorAction_findAllPage?pageNum=${page.totalPage }">尾页</a> 	    		
	    		</c:if>
	    		<c:if test="${page.pageNum == page.totalPage }">
					<a href="major/majorAction_findAllPage?pageNum=1">首页</a>
					<a href="major/majorAction_findAllPage?pageNum=${page.pageNum-1 }">上一页</a>
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
