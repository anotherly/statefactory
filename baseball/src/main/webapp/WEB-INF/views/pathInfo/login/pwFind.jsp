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
<body>
	<c:choose>
		<c:when test="${data.dd.password != null && data.dd.password ne '' }">
			ȸ������ ��й�ȣ�� ${data.dd.password } �Դϴ�.<br>
		</c:when>
		<c:otherwise>
			ȸ�������� �߸� �Է��ϼ̽��ϴ�.<br>
		</c:otherwise>
	</c:choose>
	<a href="findPWGo">�ڷΰ���</a>
	<a href="first">�α���</a>
	<a href="findIdGo">ID ã��</a>
</body>
</html>