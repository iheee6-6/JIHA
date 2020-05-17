<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:set var="contextPath" value="${pageContext.request.contextPath}"
	scope="application" />

</head>
<body>

	<c:if test="${!empty msg }">
		<script>
			alert('${msg}');
		</script>
		<c:remove var="msg" />
	</c:if>

	<nav
		class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">JH-PAY</a> <input
			class="form-control form-control-dark w-100" type="text"
			placeholder="Search" aria-label="Search">
		<ul class="navbar-nav px-3">
			<li class="nav-item text-nowrap"><a class="nav-link" href="logout.do">Sign
					out</a></li>
		</ul>
	</nav>
</body>
</html>