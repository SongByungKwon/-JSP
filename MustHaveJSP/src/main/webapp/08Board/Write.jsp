<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./IsLoggedln.jsp"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<title>Insert title here</title>

<script type="text/javascript">
	function validateForm(form) {
		if (form.title.value == "") {
			alert("제목을 입력하세요.");
			form.title.focus();
			return false;
		}
		if (form.content.value == "") {
			alert("내용을 입력하세요.");
			form.content.focus();
			return false;
		}
	}
</script>


</head>
<body>

	<jsp:include page="../Common/Link.jsp" />
	<h2>회원제 게시판 - 글쓰기(Write)</h2>
	<form name="writeFrm" method="post" action="WriteProcess.jsp"
		onsubmit="return validateForm(this);">

		<table border="1" width="90%">
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" style="width: 90%;" /></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" style="width: 90%; height: 100px;">
</textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-primary btn-lg">적성
						완료</button>
					<button type="submit" class="btn btn-primary btn-lg">	 다시 입력</button>
					<button type="button" class="btn btn-secondary btn-lg" onclick="location.href='List.jsp';">
						목록보기</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>