<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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


<script>

//全选  全不选功能
	$("#ckAll").on("click",function(){
		var inputs =$("#tbodystudentInfo input[type='checkbox']");
		if($(this).prop("checked")){
	        $.each(inputs,function(index,element){
	            $(element).prop("checked",true);
	        })
	    }else{
	        $.each(inputs,function(index,element){
	            $(element).prop("checked",false);
	        })
	    }
	})
	
		//分页功能
		$("li[pageNum]").on("click", function(event){
			//阻止浏览器默认行为
			event.preventDefault();
			//阻止事件冒泡
			event.stopPropagation();	
			var requestURL = "${pageContext.request.contextPath }/auth/queryStudents";
			var pageNum = $(this).attr("pageNum");
			var param = {
				"page": pageNum
			};
			$.ajax({
				url: requestURL,
				type : "POST",
				data: param,
				success: function(result){
					$("#content").html(result);
				} 
			})
		})
	
	

	
</script>
