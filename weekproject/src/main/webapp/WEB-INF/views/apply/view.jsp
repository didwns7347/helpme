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
				
				<h1 class="my-4">지원자 목록</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th>이름</th>
							<th>성별</th>
							<th>이메일</th>
							<th>평점</th>
							<th>선택</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${list}" var="vo" varStatus="status">
						<tr>
							<td>${vo.name }</td>
							<c:if test="${vo.gender eq 'male' }">
								<td>남자</td>
							</c:if>
							<c:if test="${vo.gender eq 'female' }">
								<td>여자</td>
							</c:if>
						
							<td>${vo.email }</td>
							<td>${vo.point }</td>
							
							<td><a href="javascript:selchk('${pageContext.request.contextPath }/apply/choice?userno=${vo.no}&boardno=${param.no }')">선택</a></td>
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
	<script>
		function selchk(url){
			if(confirm("정말 선택하시겠습니까?")){
				location.href=url;
			}
			else{
				location.href=location.href;
			}	
		}
	</script>
</body>
</html>