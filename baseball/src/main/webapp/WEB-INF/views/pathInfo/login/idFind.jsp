<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${data.dd.userid != null && data.dd.userid ne '' }">
			ȸ������ ID�� ${data.dd.userid } �Դϴ�.<br>
		</c:when>
		<c:otherwise>
			ã���ô� ID�� �������� �ʰų� ȸ�������� �߸� �Է��ϼ̽��ϴ�.<br>
		</c:otherwise>
	</c:choose>
	<a href="findIdGo">�ڷΰ���</a>
	<a href="first">�α���</a>
	<a href="findPWGo">PW ã��</a>
</body>
</html>