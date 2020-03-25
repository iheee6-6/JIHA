<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>JHPAY - MyPage</title>
<style>
#title {
	display: inline-block;
}
</style>
</head>
<body>

	<jsp:include page="topBar.jsp" />

	<div class="container-fluid">
		<div class="row">
			<jsp:include page="leftMenu.jsp" />

			<div role="main" id="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">

				<h2 id="title">Menu List</h2>
				<button style="margin-left: 30px; margin-bottom: 10px" type="button"
					class="btn btn-primary" data-toggle="modal"
					data-target="#AddMenuModal">메뉴 추가</button>
				<form action="menuDelete.do" method="post" id="checkForm">
					<div class="table-responsive">
						<table class="table table-sm">

							<thead>
								<tr>
									<td></td>
									<th>No</th>
									<th>메뉴명</th>
									<th>가격</th>
									<th>특이사항</th>
									<th>개수</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input class="menuCh" name="menuCh" type="checkbox"
										value=""></td>
									<td>1</td>
									<td>떡볶이</td>
									<td>5000</td>
									<td>매운맛 3단계</td>
									<td>50</td>
								</tr>
								<tr>
									<td><input class="menuCh" name="menuCh" type="checkbox"
										value=""></td>
									<td>2</td>
									<td>튀김</td>
									<td>700</td>
									<td>오징어, 김말이, 고구마</td>
									<td>70</td>
								</tr>
								<c:forEach var="u" items="${menuList}" varStatus="status">
									<tr>
										<td><input class="menuCh" name="menuCh" type="checkbox"
											value="${u.menu_no}"></td>
										<td>${status.index+1}</td>
										<td>${u.name }</td>
										<td>${u.price }</td>
										<td>${u.elsePoint }</td>
										<td>${u.amount }</td>
									</tr>
								</c:forEach>
							</tbody>

						</table>
						<div>
							<div style="float: right; margin-right: 50px;">
								<button type="button" class="btn btn-sm btn-secondary"
									id="allCheck">전체 선택</button>
								<button type="button" class="btn btn-sm btn-danger" id="deleteM">선택
									삭제</button>
							</div>
						</div>
						</div>
				</form>

			</div>
		</div>
	</div>
	<script>
		$(function() {
			$("#products").addClass("active");
		});

		$("#allCheck").click(function() {
			if ($(this).text() == "전체 선택") {
				$('.menuCh').prop('checked', true);
				$(this).text("전체 해제");
			} else {
				$('.menuCh').prop('checked', false);
				$(this).text("전체 선택");
			}

		});

		$("#deleteM").click(function() {
			if ($(".menuCh:checked").val()) {
				if (confirm("정말 삭제하시겠습니까?")) {
					$("#checkForm").submit();
				}

			}

		});
	</script>
	<!-- Modal -->
	<div class="modal fade" id="AddMenuModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle">메뉴 추가</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form action="addMenu.do" method="post"
					enctype="multipart/form-data">
					<div class="modal-body">
						<div class="modal-notice">

							<table class="table table-warning t"
								style="text-align: center; margin: auto">
								<tr>
									<th>메뉴 명</th>
									<td><input class="form-control" name="name" type="text"
										required></input></td>
								</tr>
								<tr>
									<th>가격</th>
									<td><input class="form-control" name="price" type="text"
										required></input></td>
								</tr>
								<tr>
									<th>특이 사항</th>
									<td><input class="form-control" name="elsePoint"
										type="text"></input></td>
								</tr>
								<tr>
									<th>수량</th>
									<td><input class="form-control" type="text" name="amount"
										required></input></td>
								</tr>
								<tr>
									<th>사진</th>
									<td>
										<div class="input-group mb-3">
											<div class="custom-file">
												<input type="file" name="uploadFile"
													class="custom-file-input" id="inputGroupFile02"> <label
													class="custom-file-label" for="inputGroupFile02"
													aria-describedby="inputGroupFileAddon02">Choose
													file</label>
											</div>

										</div>
									</td>
								</tr>
							</table>

						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button class="btn btn-primary" id="insertAlarm">등록하기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	</div>
	<!-- Modal // -->


</body>
</html>
