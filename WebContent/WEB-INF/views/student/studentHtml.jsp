<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/assets.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/common/navigation.jsp"></jsp:include>
	
	<div>
	<!--搜索框  -->
	<div class="panel-heading">
		<h3 class="panel-title">
			<div class="row">
				<div class="col-md-2">
					<h3>联系记录列表</h3>
				</div>
				<div class="col-md-10">
					<button class="btn btn-danger btn-sm" id="delAllCk">
						<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
						批量删除
					</button>


					<!--添加用户按钮-->
					<button type="button" class="btn btn-primary btn-sm"
						data-toggle="modal" data-target="#addCustomModal">
						<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
						添加联系记录
					</button>

					<button class="btn btn-info btn-sm" id="exportstudentInfoExcel">
						<span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span>
						导出excel
					</button>



				</div>
			</div>
		</h3>

	</div>

	<!-- table表格 -->
	<table class="table">
		<thead>
			<tr>
				<th><input type="checkbox" id="ckAll" />全选</th>
				<th>学号</th>
				<th>学生姓名</th>
				<th>学生年龄</th>
				<th>学生邮箱</th>
				<th>其他信息</th>
			</tr>
		</thead>

		<tbody id="tbodystudentInfo">

			<c:forEach items="${pageInfo.list}" var="student">
				<tr>
					<td><input type="checkbox" value="${student.stuId }" name="id" /></td>
					<td>${student.stuId}</td>
					<td>${student.stuName}</td>
					<td>${student.stuAge}</td>
					<td>${student.stuEmail}</td>
					<td>${student.stuRemark}</td>
					


				</tr>
			</c:forEach>

		</tbody>
	</table>

	<!--分页条  -->
	<jsp:include page="/WEB-INF/views/common/tabs.jsp"></jsp:include>
</div>

</body>
</html>