<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
������ �����Ͻðڽ��ϱ�? ��й�ȣ�� �Է����ּ���
	<form action="deleteReg" method="post">
		<table border="1">
				<tr>
				<td><input type="hidden" name="userid" value="${param.userid }"></td>
				<td>��й�ȣ</td>
				<td><input type="password" name="password"></td>
				</tr>
				<tr>
				<td><input type="submit" value="Ȯ��"></td>
				</tr>
		</table>
	</form>
</body>
</html>