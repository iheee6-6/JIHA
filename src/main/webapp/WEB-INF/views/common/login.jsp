<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v3.8.6">
<title>JH-Pay SignIn</title>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<link rel="canonical"
	href="https://getbootstrap.com/docs/4.4/examples/sign-in/">

<!-- Favicons -->
<meta name="theme-color" content="#563d7c">


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<!-- Custom styles for this template -->
<link href="resources/css/common/signin.css" rel="stylesheet">

<!-- js -->
<script src="${contextPath}/resources/js/cookie.js"></script>
</head>
<body class="text-center">
	<c:if test="${ !empty msg }">
		<script>
			alert('${msg}');
		</script>
		<c:remove var="msg" />
	</c:if>
	<form method="post" class="form-signin" action="login.do">
		<img class="mb-4" src="/docs/4.4/assets/brand/bootstrap-solid.svg"
			alt="" width="72" height="72">
		<h1 class="h3 mb-3 font-weight-normal">환영합니다</h1>
		<label for="inputEmail" class="sr-only">ID</label> <input
			type="text" id="userId" class="form-control"
			placeholder="ID" name="id" required autofocus> <label
			for="inputPassword" class="sr-only">Password</label> <input
			type="password" id="inputPassword" class="form-control"
			placeholder="Password" name="pwd" required>
		<div class="checkbox mb-3">
			<label> <input name="remember" id="remember" type="checkbox" value="remember-me">
				Remember me
			</label>
		</div>
		<button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
		<br> <a href="signup.do"> 회원가입</a>
		<p class="mt-5 mb-3 text-muted">&copy; JHPAY - 2020</p>
	</form>
</body>
</html>
