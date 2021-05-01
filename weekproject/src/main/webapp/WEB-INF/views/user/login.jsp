<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>대신해주세요</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath }/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath }/assets/css/blog-home.css"
	rel="stylesheet">

<title>로그인</title>
</head>
<body>
	<!-- Navigation -->

	<c:import url="/WEB-INF/views/include/navigation.jsp" />
	<div class="container">
		<div class="row">
			<!-- 입력폼 그리드 -->
			<div class="col-lg-4"></div>
			<div class="col-lg-6">
				<form method="post"
					action="${pageContext.request.contextPath }/user/auth">
					<!-- ID입력 -->
					<div class="input-group mt-3 mb-1">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">ID</span>
						</div>
						<input type="text" id="id" name="id" class="form-control"
							placeholder="Input ID" aria-label="Input ID"
							aria-describedby="basic-addon1" required>
					</div>
					<!-- PW입력 -->
					<div class="input-group mb-2">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">PW</span>
						</div>
						<input type="password" id="password" name="password"
							class="form-control" placeholder="Input Password"
							aria-label="Input Password" aria-describedby="basic-addon1"
							required>
					</div>
					<!-- 로그인 버튼 -->
					<button type="submit" class="btn btn-dark btn-sm btn-block">
						로그인 하기</button>
					<c:if test="${param.result eq 'fail' }">
						<p class="form-row " style="text-align: center;">           로그인이 실패 했습니다.</p>
					</c:if>


				</form>
				


			</div>
			<!-- 그림 넣을 그리드 -->
			<div class="col-lg-10"></div>
		</div>
	</div>
</body>
</html>