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
			<tr><td>�г���</td>
			<td>${data.dd.nick }</td></tr>
			<tr><td>�̸�</td>
			<td>${data.dd.name }</td></tr>
			<tr><td>�������ϸ�</td>
			<td>${data.dd.orifile}</td></tr>
			<tr><td>�ٲ����ϸ�</td>
			<td>${data.dd.sysfile}</td></tr>
			<tr><td>����</td><td>
			<img alt="" src="../../../resources/memberPhoto/${data.dd.sysfile }" width="200px"></td></tr>
			<tr><td>�������</td>
			<td>${data.dd.birth }</td></tr>
			<tr><td>�ּ�</td>
			<td>${data.dd.address }</td></tr>
			<tr><td>�޴���</td>
			<td>${data.dd.phone }</td></tr>
			<tr><td>���ŵ���</td>
			<td>${data.dd.receivemail }</td></tr>
			<tr><td>��ȣ����</td>
			<td>${data.dd.preferTeam }
			</td></tr>
			<tr><td colspan="2" align="center"><a href="list">�������</a> <a href="modify?id=${data.dd.id }">�����ϱ�</a>
			<a href="delete?id=${data.dd.id }">�����ϱ�</a></td>
		</table>
</body>
</html>