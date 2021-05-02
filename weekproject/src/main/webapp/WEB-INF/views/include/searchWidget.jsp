<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Search widget-->
<div class="card my-4">
	<h5 class="card-header">Search</h5>
	<div class="card-body">
		<form action="${pageContext.request.contextPath }/board/search">
		<div class="input-group">

			<input class="form-control" type="text" name="keyword" id="keyword"
				placeholder="Search for..." /> <span class="input-group-append"><button
					class="btn btn-secondary" type="submit">Go!</button></span>
		</div>
		</form>
	</div>
</div>