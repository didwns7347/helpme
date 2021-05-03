<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="${pageContext.request.contextPath }">대신해주세요</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="${pageContext.request.contextPath }">홈으로 <span
						class="sr-only">(current)</span>
				</a></li>
				<c:choose>
					<c:when test="${empty authUser }">
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath }/user/login">로그인</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath }/board">게시판</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath }/user/join">회원가입</a></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath }/user/logout">로그아웃</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath }/board">게시판</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath }/board/myboard?writer=${authUser.name}">내글보기</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath }/apply/result?userno=${authUser.no}">지원결과</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
</nav>