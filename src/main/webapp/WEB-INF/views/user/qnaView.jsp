<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<title>JHPAY - QnA</title>
</head>
<style>
.wrapper {
	width: 1000px;
	height: 900px;
	margin: auto;
}

div {
	display: block;
}
</style>
<body>

	<div class="container-fluid wrapper">
		<div>
			<div style="text-align: center"
				class="flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
				<h1 class="head">&lt; QnA &gt;</h1>

			</div>
			<div class="table-responsive">
				<table class="table table-sm" id="Qlist">

					<thead>
						<tr>
							<th>NO</th>
							<th>구분</th>
							<th>비밀글</th>
							<th>제목</th>
							<th>작성자</th>
							<th>등록일</th>
							<th>조회수</th>

						</tr>
					</thead>
					<tbody>
						
						<c:forEach var="q" items="${qnaList}" varStatus="status">
							<tr>
								<td>${q.no}</td>
								<td><c:choose>
										<c:when test="${empty q.writer }">
										손님
									</c:when>
										<c:when test="${q.writer eq 'admin'}">
										관리자
									</c:when>
										<c:otherwise>
										사업자
									</c:otherwise>
									</c:choose></td>
								<td><c:choose>
										<c:when test="${!empty q.password }">
											<input type="hidden" value="비밀" id="secret">
											<img src="resources/img/111.jpg" width="30px" height="30px">
										</c:when>
										<c:otherwise>
											<input type="hidden" value="공개" id="secret">
											<img src="resources/img/222.jpg" width="30px" height="30px">
										</c:otherwise>
									</c:choose></td>
								<td>${q.title }</td>
								<td>${q.writer }</td>
								<td>${q.enroll_date }</td>
								<td>${q.count}</td>
							</tr>
						</c:forEach>
					</tbody>

				</table>

			</div>
			<div>
				<div style="float: right; margin-right: 50px;">
					<button type="button" class="btn btn-sm btn-secondary"
						onclick="location.href='qnaInsertView.do'">작성하기</button>
				</div>
			</div>
		</div>

	</div>

	<script>
	$(function(){
		$("#Qlist tr").click(function(){
			
				var num=$(this).children().eq(0).text();
				var secret= $(this).find('#secret').val();
				console.log(num+secret);
				<c:if test="${loginUser.id eq 'admin'}">
					location.href="qnaDetail.do?no="+num;
				</c:if>
				if(secret=="공개"){
					location.href="qnaDetail.do?no="+num;
				} else {
					var pwd=prompt("비밀번호를 입력하세요! (숫자 4자리)");
					
					$.ajax({
						url : "qnaPwdCheck.do",
						data:{pwd:pwd,no:num},
						type : "post",
						success : function(data){
							if(data=="success")
								location.href="qnaDetail.do?no="+num;
							else
								alert("비밀번호가 틀렸습니다.");
						},
						error : function(e){
							alert("오류");
							console.log(e);
						}					
					});
					
					
				}
				
				
				
			});
    	
	});
	</script>

</body>
</html>
