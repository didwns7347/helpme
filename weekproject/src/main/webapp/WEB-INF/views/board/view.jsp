<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("newline", "\n");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Blog Post - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath }/assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link
	href="${pageContext.request.contextPath }/assets/css/viewstyles.css"
	rel="stylesheet" />
</head>

<body class='pt-5'>
	<c:import url="/WEB-INF/views/include/navigation.jsp" />
	<!-- Page content-->
	<div class="container">
		<div class="row">
			<!-- Post content-->
			<div class="col-md-8">
				<!-- Title-->
				<br />
				<h1 class="my-4">${boardVo.title }</h1>
				<!-- Author-->
				<p class="lead">by ${boardVo.writer }</p>
				<hr />
				<!-- Date and time-->
				<p>작성일: ${boardVo.reg_date }</p>
				<hr />
				<!-- Preview image-->

				<hr />
				<div class="media-body">
					<h5 class="mt-0">${ fn:replace(boardVo.content,newline,"<br/>")}</h5>
					<h5 class="mt-0">지불금액: ${boardVo.cost} 원</h5>
				</div>
				<hr />
				<!-- Comments form-->

				<div class="card my-4">
					<h5 class="card-header">Leave a Comment:</h5>
					<div class="card-body">
						<form method="post"
							action="${pageContext.request.contextPath }/board/reple">
							<input type="hidden" id="parent" name="parent"
								value="${boardVo.no }"> <input type="hidden" id="writer"
								name="writer" value="${authUser.name}">
							<div class="form-group">
								<textarea id="content" name="content" class="form-control"
									rows="3"></textarea>
							</div>
							<button class="btn btn-primary" type="submit">Submit</button>
						</form>
					</div>
				</div>
				<c:forEach items="${list}" var="vo" varStatus="status">
					
					<div class="media mb-4">
						<img class="d-flex mr-3 rounded-circle"
							src="https://via.placeholder.com/50x50" alt="..." />
						<div class="media-body">
							<h5 class="mt-0">${vo.writer }</h5>
							${ fn:replace(vo.content,newline,"<br/>")}
						</div>
						<c:choose>
							<c:when
								test="${boardVo.writer eq authUser.name and authUser.name ne vo.writer }">
								<p></p>
								<a href="${pageContext.request.contextPath }/board/choice"
									class="btn btn-primary form-row float-right">선택하기 </a>
							</c:when>

						</c:choose>
					</div>
				</c:forEach>
			
			</div>
			<!-- Sidebar widgets column-->
			<!-- Sidebar Widgets Column -->
			<div class="col-md-4">


				<!-- Search widget-->
				<c:import url="/WEB-INF/views/include/searchWidget.jsp" />
				<c:import url="/WEB-INF/views/include/categories.jsp" />
				<c:import url="/WEB-INF/views/include/sidewidget.jsp" />

				<!-- row -->


			</div>
		</div>
	</div>
	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2021</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="${pageContext.request.contextPath }/assets/js/scripts.js"></script>
</body>
</html>