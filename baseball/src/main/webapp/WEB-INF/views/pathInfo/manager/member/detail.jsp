<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%System.out.println("%%%%%%%%%%%%%%%%%%������ ��� ������%"); %>
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
			<tr><td>����</td><td>
			<img alt="" src="../../../resources/memberPhoto/${data.dd.sysname }" width="200px"></td></tr>
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
			<tr><td colspan="2" align="center">
			<a href="first">ȸ����Ϻ���</a>
			<a href="mailInsert?userid=${data.dd.userid }">���� ������</a>
			<a href="delete?userid=${data.dd.userid }">�����ϱ�</a></td>
		</table>
	</body>
</html>