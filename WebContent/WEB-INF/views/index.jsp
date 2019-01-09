<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/assets.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/common/navigation.jsp"></jsp:include>
	
	<div class="container-fluid">
		<div class="row">

			<!--引入菜单  -->
			<div class="col-md-2">
				<jsp:include page="/WEB-INF/views/common/menu.jsp"></jsp:include>
			</div>
			<div class="col-md-10">
				<div class="panel panel-default">


					<!-- Table -->
					<div id="content">
						<jsp:include page="/WEB-INF/views/common/welcome.jsp"></jsp:include>

					</div>

				</div>


			</div>
		</div>
	<div>

</body>
</html>


<script>

$(function(){
	//操作菜单
	$("#menuDiv li.menu-a").on("click", function(event){
		//阻止浏览器默认行为
		event.preventDefault();
		//阻止事件冒泡
		event.stopPropagation();
		
		//移除当前处于激活态的li
		$(".menu-a").removeClass("active");
		$(this).addClass("active");
		var requestURL = $(this).attr("request-url");
		
		//跳页面
		//window.location.href=requestURL;
		$.ajax({
			url: requestURL,
			type : "get",
			success: function(result){
				$("#content").html(result);
			} 
		})
		
	})
	

	
})

</script>