<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
			<tr><td>���̵�</td>
			<td>${data.dd.userid }</td></tr>
			<tr><td>����</td>
			<td>${data.dd.title }</td></tr>
			<tr><td>����</td>
			<td>${data.dd.content }</td></tr>
			<tr><td>��¥</td>
			<td>${data.dd.regdate}</td></tr>
			<tr><td>����</td><td>
			<img alt="" src="../../../resources/up/${data.dd.sysname }" width="200px"></td></tr>
			<tr><td colspan="2" align="center"><a href="list">�������</a> 
			<a href="modify?id=${data.dd.userid }">�����ϱ�</a>
			<a href="delete?id=${data.dd.userid }">�����ϱ�</a></td>
		</table>
	</body>
</html>