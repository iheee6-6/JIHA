<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>JHPAY - MyPage</title>
<script src="http://code.angularjs.org/angular-1.0.0rc10.min.js"></script>
<!-- ng-model= -->
</head>
<body>
	<script>
		$(function() {
			$("#orders").addClass("active");
		});
	</script>

	<jsp:include page="topBar.jsp" />

	<div class="container-fluid">
		<div class="row">
			<jsp:include page="leftMenu.jsp" />

			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
			<div ng-app="myApp" ng-controller="orderCont"
				class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
				<h1 class="h2">현재 주문 현황</h1>

			</div>
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
						
						<tr ng-repeat="x in menu">
							<td>{{x.orderNo}}</td>
							<td>{{x.name}}</td>
							<td>{{x.price}}</td>
							<td>{{x.elsePoint}}</td>
							<td>{{x.amount}}</td>
						</tr>
					<%-- 	<c:forEach var="o" items="${orderList}" varStatus="status">
							<tr>
								<td><input class="menuCh" name="menuCh" type="checkbox"
									value="${u.orderNo}"></td>
								<td>${o.orderNo}</td>
								<td>${o.name }</td>
								<td>${o.price }</td>
								<td>${o.elsePoint }</td>
								<td>${o.amount }</td>
							</tr>
						</c:forEach> --%>
					</tbody>

				</table>

				<div>
					<div style="float: right; margin-right: 50px;">
						<button type="button" class="btn btn-sm btn-danger" id="deleteM">선택
							완료</button>
					</div>
				</div>
			</div>
			</main>
			<script>
				var app = angular.module('myApp', []);
				app.controller('orderCont', function($scope, $http) {
					$http.get("bOrder.do").then(function(response) {
						$scope.menu = response.data.records;
					});
				});
			</script>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="/docs/4.4/assets/js/vendor/jquery.slim.min.js"><\/script>')
	</script>
	<script src="/docs/4.4/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
	<script src="resources/js/dashboard.js"></script>
</body>
</html>
