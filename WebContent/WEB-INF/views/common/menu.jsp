<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="menuDiv">
	<div class="panel panel-default">
	  <div class="panel-heading">菜单</div>
	  <div class="panel-body">
		<ul class="nav nav-pills nav-stacked nav-pills-stacked-example">
	      <li role="presentation"  class="active menu-a" request-url="${pageContext.request.contextPath }/auth/login"><a href="#">Home</a></li>
	      <li role="presentation"  class="menu-a" request-url="${pageContext.request.contextPath }/client/queryClient"><a href="#">公司管理</a></li>
	      <li role="presentation"  class="menu-a" request-url="${pageContext.request.contextPath }/custom/queryCustom"><a href="#">部门管理</a></li>
	      <li role="presentation"  class="menu-a" request-url="${pageContext.request.contextPath }/customNote/queryCustomNote"><a href="#">员工管理</a></li>
	      <li role="presentation"  class="menu-a" request-url="${pageContext.request.contextPath }/clientInfo/queryClientInfoAll"><a href="#">角色管理</a></li>
	      <li role="presentation"  class="menu-a" request-url="${pageContext.request.contextPath }/client/clientAnalyze"> <a href="#"">权限管理</a></li>
	    </ul>
	  </div>
	</div>
</div>

</body>
</html>