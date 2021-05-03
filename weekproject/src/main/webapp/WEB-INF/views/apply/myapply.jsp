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
<title>대신해주세요</title>
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
				
				<h1 class="my-4">지원글 목록</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th>글번호</th>
							<th>결과</th>
							<th>글상세정보</th>
							
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${list}" var="vo" varStatus="status">
						<tr>
							<td>${vo.boardno }</td>
							<c:if test="${vo.state eq 'ing' }">
								<td>진행중</td>
							</c:if>
							<c:if test="${vo.state eq 'fail' }">
								<td>불합격</td>
							</c:if>
							<c:if test="${vo.state eq 'pass' }">
								<td>합격</td>
							</c:if>
						
						
							
							<td><a href="${pageContext.request.contextPath }/board/view?no=${vo.boardno}">글보기</a></td>
						</tr>
					
						</c:forEach>
					</tbody>
				</table>
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