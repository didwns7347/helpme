<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>대신해주세요</title>

<!-- Bootstrap core CSS -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="assets/css/blog-home.css" rel="stylesheet">

</head>

<body>
	<c:import url="/WEB-INF/views/include/navigation.jsp" />

	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<!-- Blog Entries Column -->
			<div class="col-md-8">

				<h1 class="my-4">
					Help Me <small>경기도</small>
					<a href="${pageContext.request.contextPath }/board/write"
				class="btn btn-primary form-row float-right">글쓰기 &rarr;</a>
				</h1>
				
				
				

				<c:forEach items="${list}" var="vo" varStatus="status">
					<div class="card mb-4">
						<div class="card-body">
							<h2 class="card-title">제목: ${vo.title}</h2>
							<p class="card-text">작성자: ${vo.writer }</p>
							<p class="card-text">지불금액: ${vo.cost }원</p>
							<a
								href="${pageContext.request.contextPath }/board/view?no=${vo.no}"
								class="btn btn-primary">Read More &rarr;</a>
						</div>
						<c:choose>
							<c:when test="${vo.writer ne authUser.name }">
								<div class="card-footer text-muted">
									등록일: ${vo.reg_date } <a href="#">지원하기</a>
								</div>
							</c:when>
							<c:otherwise>
								<div class="card-footer text-muted">
									등록일: ${vo.reg_date } <a href="#">지원자 보기</a> 
									<a class="form-row float-right"
										href="javascript:delchk('${pageContext.request.contextPath }/board/delete?no=${vo.no}')">
										글삭제</a>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
				</c:forEach>


				<!-- Pagination -->
				<ul class="pagination justify-content-center mb-4">
					<li class="page-item"><a class="page-link" href="#">&larr;
							Older</a></li>
					<li class="page-item disabled"><a class="page-link" href="#">Newer
							&rarr;</a></li>
				</ul>

			</div>
			
			<!-- Sidebar Widgets Column -->
			<div class="col-md-4">


				<!-- Search widget-->
				<c:import url="/WEB-INF/views/include/searchWidget.jsp" />
				<c:import url="/WEB-INF/views/include/categories.jsp" />
				<c:import url="/WEB-INF/views/include/sidewidget.jsp" />

				<!-- row -->


			</div>

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2020</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->

	<script
		src="${pageContext.request.contextPath }/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script>
		function delchk(url){
			if(confirm("정말 삭제하시겠습니까?")){
				location.href=url;
			}
			else{
				location.href=location.href;
			}	
		}
	</script>
	
</body>

</html>
