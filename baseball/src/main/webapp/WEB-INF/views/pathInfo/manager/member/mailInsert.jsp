<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<jsp:useBean id="toDay" class="java.util.Date" />



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="mailReg" method="post">
		<table border="1">
			<tr>
				<td>������ ���</td>
				<td><input type="text" name="userid"
					value="${loginVo.name }" readonly="readonly"></td>
			</tr>
			
			<tr>
				<td>�޴� ���</td>
				<td><input type="text" name="sendid"
					value="${data.dd.userid }"></td>
			</tr>
			
			<tr>
				<td>����</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>��¥</td>
				<td><fmt:formatDate value="${toDay}" pattern="yyyy-MM-dd" /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><textarea rows="5" cols="30" name="content">���� ���� �� �ּ���</textarea></td>
			</tr>
			<tr>
			<td colspan="2" align="center">
				<input type="submit" value="����������" />
				<a href="detail?userid=${data.dd.userid }">�ڷΰ���</a>
				<a href="first">�������</a>
			</td>
			</tr>
		</table>
	</form>
</body>
</html>