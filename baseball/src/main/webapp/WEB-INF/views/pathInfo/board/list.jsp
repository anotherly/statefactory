<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>��ȣ</td>
			<td>id</td>
			<td>����</td>
		</tr>
			<!-- data�� ������ ���� ������ vo �� ���� ��� ����Ѵ�. foreach���� �ѹ� �� ������ no�� 1�� �߰�! -->
				<!-- no�� ���� -->
		<c:forEach items="${data.dd}" var="vo" varStatus="no">
			<tr>
				<td align="center">${no.index +1}</td>
				<td>${vo.id}</td>
				<td><a href="detail?id=${vo.id}">${vo.title }</a></td>
			</tr>
		</c:forEach>
		
		<tr>
			<td colspan="3" align="center"><a href="insertForm"> �۾���</a></td>
			<!-- InsertForm���� �̵� -->
		</tr>
	</table>
</body>
</html>