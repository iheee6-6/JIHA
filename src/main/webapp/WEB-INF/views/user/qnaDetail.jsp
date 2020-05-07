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

.content {
	width: 100%;
	height: 300px;
	border-bottom: 1px solid black;
	border-left: 1px solid black;
	border-right: 1px solid black;
	overflow: scroll;
	font-family: 'Do Hyeon', sans-serif;
}

.time {
	display: inline;
	margin-left: 100px;
}

#tt{
color:red;
}

</style>
</head>

</head>

<body>
	<div class="wrapper">
		<div>
			<h2 style="text-align: center">Qna - ${board.no }번 글</h2>
			<form action="insert_qna.do" name="form" method="post"
				onsubmit="return validate();">
				<table class="table">
					<tr>
						<td>제목</td>
						<td colspan="3">${board.title }</td>
					</tr>
					<tr>
						<td>작성자</td>
						<td>${board.writer }</td>
						<td>작성일</td>
						<td>${board.enroll_date }</td>
					</tr>

					<tr>
						<td>비밀글 설정</td>

						<td colspan="4"><c:choose>
								<c:when test="!empty ${board.password}">
									<label for="private"> <img src="resources/img/111.jpg"
										width="30px" height="30px"></label>
								</c:when>
								<c:otherwise>
									<label for="public"><img src="resources/img/222.jpg"
										width="30px" height="30px"></label>
								</c:otherwise>
							</c:choose></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="4"><div name="content">${board.content }</div></td>
					</tr>
				</table>

				<hr>
				<hr>

				<div class="wrap2" style="margin-bottom: 10px">
					<c:if test="loginUser.name eq ${board.writer }">
						<button class="btn btn-outline-secondary">수정하기</button>
					</c:if>
				</div>

			</form>
		</div>


		<div class="panel panel-white post panel-shadow">
			<table id="replyTable">
				<thead>
					<tr>
						<td colspan="4"><b id="rCount"></b></td>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
			<div class="post-footer">

				<div class="input-group">

					<input class="form-control" id="userId" type="text" value="${loginUser.id }"
						readonly style="width: 90px; text-align: center;"> <input
						class="form-control" id="rContent" placeholder="Add a comment"
						style="width: 90%" type="text"> <span
						class="input-group-addon">
						<button id="rSubmit" style="border: none">등록</button>
					</span>
				</div>
				<ul class="comments-list" style="list-style: none">
					<li class="comment">
						<div class="comment-body" id="body">

							<div class="comment-heading" id="head">
								<div class="replyArea">
									<span class="user"></span>
									<h5 class="time"></h5>
								</div>

								<div class="replyArea2">
									<h6 class="rcontent">
										<!-- 작성내용 -->
									</h6>

								</div>
							</div>

						</div>
					</li>
				</ul>

			</div>
		</div>

		<br>

		<c:if test="${loginUser.id ne board.writer }">
			<div class="btnwrap">
				<button class="btn btn-outline-secondary"
					style="font-size: 12px; width: 80px; height: 40px;"
					onclick="location.href='${clist}'">목록으로</button>
			</div>
		</c:if>



		<c:if test="${loginUser.id eq board.writer }">
			<div class="btnwrap">
				<button class="btn btn-outline-secondary"
					style="font-size: 12px; width: 80px; height: 40px;"
					onclick="location.href='${clist}'">목록으로</button>

				<button class="btn btn-outline-secondary"
					style="font-size: 12px; width: 80px; height: 40px;"
					onclick="location.href='${cupdateView}'">수정하기</button>
				<button type="button" class="btn btn-outline-danger" id="dBtn"
					style="font-size: 15px; width: 50px; display: none;"
					onclick="location.href='${cdelete}'">X</button>
				<button type="button" class="btn btn-outline-danger"
					style="font-size: 12px; width: 40px; height: 40px;"
					onclick="real();">X</button>

				<script>
						function real(){
							if(confirm("정말 글을 삭제하시겠습니까?")){
								$("#dBtn").click();
							}
						}
					
					</script>
			</div>
		</c:if>
	</div>

	<script>

/*setInterval(function() {
	getReplyList();
}, 5000);
*/
$(function(){
	getReplyList();
});
function getReplyList() {
	var bNo = ${board.no};
	
			$.ajax({
				url : "rList.do",
				data : {bNo : bNo},
				dataType : "json",
				success : function(data) {
					console.log(data);

					$tableBody = $(".comments-list");
					$tableBody.html("");

					$("#rCount").text("댓글(" + data.length + ")");

					if (data.length > 0) {
						for ( var i in data) {
							console.log(data[i]);
							var rNo = data[i].rNo;
							
							var $li = $("<li class='comment'>");
							var $body = $("<div class='comment-body'>");
							var $heading = $("<div class='comment-heading'>");
							var $reply = $("<div class='replyArea'>");
							var $reply2 = $("<div class='replyArea2'>");
							var $user = $("<span class='user'>").text(
									data[i].rWriter);
							var $p = $("<h6 class='rcontent'>").text(" ⇒ " + 
									data[i].rContent);
							var $time = $("<h5 class='time'>").text(
									data[i].rEnrollDate);
							var $del = $(
									"<button class='rNo' id='tt' value=" + data[i].rNo + ">")
									.text("x");

							$tableBody.append($li);
							$li.append($body);
							$body.append($heading);
							$reply.append($user);
							$reply.append($time);
							if($("#userId").val() == data[i].rWriter){
								$reply.append($del);
							}

							$reply2.append($p);
							$heading.append($reply);
							$heading.append($reply2);

						}
					} else {
						// 댓글이 등록되지 않았을 때
						var $tr = $("<tr>");
						var $rContent = $("<td colspan='2'>").text(
								"등록 된 댓글이 없습니다.");
						$tr.append($rContent);
						$tableBody.append($tr);
					}

				},
				error : function(e) {
					console.log(e);
				}
			});

}

//댓글 등록 ajax
$("#rSubmit").on("click", function() {
	
	// 필요한 값을 가지고 db에 insert한 뒤
	// 등록 성공 시 댓글리스트 다시 불러오기
	// 요청 url : addReply.do
	var rContent = $("#rContent").val();
	var refbno1 = ${board.no};

	$.ajax({
		url : "addReply.do",
		data : {
			rContent : rContent,
			refBno : refbno1
		},
		type : "post",
		success : function(data) {
			if (data == "success") {
				getReplyList(); // 등록 성공시 다시 댓글리스트 불러오기
				$("#rContent").val("");
			}
		}
	});
});

//댓글 삭제
$(document).on("click","#tt",function(){
	console.log("gd");
	var rNo = this.value;
	
	if(confirm("정말 삭제하시겠습니까?")){
	$.ajax({
		url : "rdelete.do",
		data : {rNo : rNo},
		success : function(data) {
			console.log(data);
			getReplyList();
		}
		
	});
	}else{
		return false;
	}
});
</script>
</body>

</html>