<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- include libraries(jQuery, bootstrap) -->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<!-- include summernote css/js-->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<title>Insert title here</title>
<style>
.wrapper {
	width: 1000px;
	height: 700px;
	margin: auto;
}

div {
	display: block;
}

.wrap2 {
	text-align: center;
}
</style>
</head>

</head>

<body>
	<div class="wrapper">
		<div>
			<h2 style="text-align: center">QnA 작성</h2>
			<form action="insert_qna.do" name="form"
				method="post" onsubmit="return validate();">
				<table class="table">
					<tr>
						<td>제목</td>
						<td colspan="3"><input type="text" name="title"
							placeholder="제목을 입력해주세요" size="70"></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><c:if test="${empty loginUser}">
								<input name="writer" type="text" value="비회원">
							</c:if> <c:if test="${!empty loginUser }">
								<input name="writer" type="text" value="${loginUser.id}"
									readonly>
							</c:if></td>
						<td>작성일</td>
						<%--현재 날짜 --%>
						<jsp:useBean id="today" class="java.util.Date" />
						<fmt:formatDate var="now" value="${today}"
							pattern="yyyy-MM-dd HH:mm:ss" />
						<td><input type="text" name="date" value="${now }"></td>
					</tr>

					<tr>
						<td>비밀글 설정</td>
						<td><input type="radio" value="private" name="secret"
							id="private"> <label for="private"> <img
								src="resources/img/111.jpg" width="30px" height="30px"></label>
							&nbsp; <input type="radio" value="public" name="secret"
							id="public" checked> <label for="public"><img
								src="resources/img/222.jpg" width="30px" height="30px"></label></td>
						<td>비밀번호</td>
						<td><input type="password" name="password" id="password"
							placeholder="숫자 4자리 입력" maxlength="4"></td>
					</tr>
					<tr>
						<td>내용</td>

						<!-- <td colspan="3" rowspan="5"><textarea name="content" cols="80"
							rows="8" placeholder="내용을 입력해주세요"></textarea></td> -->
						<td colspan="3"><textarea name="content" id="summernote"
								value=""></textarea></td>
					</tr>
				</table>

				<hr>
				<hr>

				<div class="wrap2">
					<button class="btn btn-outline-secondary">WRITE</button> <input type="button"
						class="btn btn-outline-secondary" value="CANCEL"
						onclick="javascript:history.back();">
				</div>

			</form>
		</div>
	</div>
	<script>
		$(document).ready(function() {
			$('#summernote').summernote({
				height : 300, // set editor height
				minHeight : null, // set minimum height of editor
				maxHeight : null, // set maximum height of editor
				focus : true
			// set focus to editable area after initializing summernote
			});

		});

		function validate() {
			if ($("input[name=title]").val().length < 1) {
				alert('제목을 입력해주세요');
				$("input[name=title]").select();
				return false;
			}

			if ($("#summernote").val().length < 15) {
				alert("15자 이상의 내용을 입력해주세요");
				return false;
			}
			
			if($("input:radio[name='secret']:checked").val()=="private"){
			var bpwd = document.getElementById('password');

			console.log("fg1");
			if (!chk(/^[0-9]{4}$/, bpwd, "비밀번호는 숫자 4자리 입력해주세요!"))
				return false;
			}else{
				$("#password").val("");
			}
			
			
			console.log("fg");
			return true;
		}
		
		function chk(re, e, msg) { //정규식, element, 메세지
			if (!re.test(e.value)) {
				alert(msg);
				e.value = "";
				e.focus();
				console.log("fg2");
				return false;
			}else{
				return true;
			}
		}
	</script>

</body>

</html>