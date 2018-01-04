<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		var flag = "${requestScope.flag}";
		if (flag == "1") {
			alert("메롱");
			window.open('', '_self', '');
			window.close();
		}
	});
</script>
</head>
<body>
	<form action="payment" method="post">
	<input type="hidden" value="${param.user_name }" name="user_name"/>
	<input type="hidden" value="${param.user_phone}" name="user_phone"/>
	<input type="hidden" value="${param.money }" name="money"/>
		<table border=1>
			<tr>
				<td>판매자</td>
				<td>: (주) 스탯팩토리</td>
			</tr>
			<tr>
				<td>금액</td>
				<td>: ${param.money }</td>
			</tr>
			<tr>
				<td>날짜</td>
				<td>: 날짜넣어라ㅏㅏㅏㅏ</td>
			</tr>
			<tr>
				<td>카드번호</td>
				<td><input type="text" name="12num"></td>
			<tr>
			</tr>
			<tr>
				<td colspan="2" align="right">('-'없이 카드번호만 입력해주세요.)</td>
			</tr>
			<tr align="center">
				<td colspan="3"><a href="card2">취소</a><input type="submit"
					value="결제하기" /></td>
			</tr>
		</table>
	</form>
</body>
</html>