<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<body>
	<table border="1">
	<tr>
	<td>��ȣ</td>
	<td><a href=""></a>���̵�</td>
	<td>�г���</td>
	<td>��ȣ����</td>
	</tr>
	<c:forEach items="${data.dd}" var="member" varStatus="no"> 
			<tr>
				<td>${no.index+1 }</td>
				<td><a href="detail?id=${member.id }">${member.id }</a></td>
				<td>${member.nick }</td>
				<td>${member.preferTeam }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="4" align="center">
				<a href="insert">����</a>
			</td>
		</tr>
	</table>
</body>
</body>
</html>