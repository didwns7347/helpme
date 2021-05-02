<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>글쓰기</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath }/assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${pageContext.request.contextPath }/assets/css/styles.css"
	rel="stylesheet" />
</head>

<body class='pt-5'>
	<c:import url="/WEB-INF/views/include/navigation.jsp" />
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<form action="${pageContext.request.contextPath }/board/write"
					method="post">
					<input type="hidden" name="writer" value=${authUser.name }>
					<input type="text" name="title" class="form-control mt-4 mb-2"
						placeholder="제목을 입력해주세요." required> <input type="text"
						name="cost" class="form-control mt-4 mb-2"
						placeholder="지불할 비용을 입력해주세요" required>
					<div class="form-group">
						<textarea class="form-control" rows="10" name="content"
							placeholder="내용을 입력해주세요 날짜, 장소입력 필수" required></textarea>
						카테고리 설정<select id="category" name="category" class="form-control">
							<option value="etc">기타</option>
							<option value="clean">청소</option>
							<option value="pet">애완</option>
							<option value="move">이사</option>
							<option value="office">사무</option>
							<option value="farmming">농사</option>

						</select>
					</div>
					<button type="submit" class="btn btn-secondary mb-3">제출하기</button>
				</form>
			</div>
			<!-- Sidebar widgets column-->
			<div class="col-md-4">
				<!-- Search widget-->
				<c:import url="/WEB-INF/views/include/searchWidget.jsp" />
				<c:import url="/WEB-INF/views/include/categories.jsp" />
				<c:import url="/WEB-INF/views/include/sidewidget.jsp" />

				<!-- row -->
			</div>
		</div>
		<!-- container -->
	</div>
	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2021</p>
		</div>
	</footer>
	<!-- Bootstrap core JavaScript -->
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>