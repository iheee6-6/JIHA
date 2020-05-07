<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<style>
.orderMenu {
	border: 1px solid purple;
}

#orderImg{
	float:left;
}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="m" items="${menu}">
		<div class="orderMenu">
			<img src="resources/img/${m.rename_file}" id="orderImg"> <span>${m.name}</span>
			<span>${m.amount }</span> <span>${m.price }</span>
		</div>
	</c:forEach>
	
	<form method="post" action="order.do" onsubmit=" return validate()">
		<table>
			<tr>
				<th>* 주문자</th>
				<td><input type="text" name="name" id="name" size="30"></td>
			</tr>
			<tr>
				<th scope="row">* 전화번호</th>
				<td><select id="phone1" name="phone1" required>
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
				</select>-<input id="phone2" name="phone2" maxlength="4" type="text" required />-<input
					id="phone3" name="phone3" maxlength="4" type="text" required /></td>
			</tr>

			<tr>
				<th>* 이메일</th>
				<td><input name="email" id="emailT"></td>
			</tr>
		</table>
	</form>
	
	<script>
		function validate(){
			if($("#name").val())
		}
	</script>
</body>
</html>