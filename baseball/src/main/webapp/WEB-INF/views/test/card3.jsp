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
			alert("�޷�");
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
				<td>�Ǹ���</td>
				<td>: (��) �������丮</td>
			</tr>
			<tr>
				<td>�ݾ�</td>
				<td>: ${param.money }</td>
			</tr>
			<tr>
				<td>��¥</td>
				<td>: ��¥�־�󤿤�����</td>
			</tr>
			<tr>
				<td>ī���ȣ</td>
				<td><input type="text" name="12num"></td>
			<tr>
			</tr>
			<tr>
				<td colspan="2" align="right">('-'���� ī���ȣ�� �Է����ּ���.)</td>
			</tr>
			<tr align="center">
				<td colspan="3"><a href="card2">���</a><input type="submit"
					value="�����ϱ�" /></td>
			</tr>
		</table>
	</form>
</body>
</html>