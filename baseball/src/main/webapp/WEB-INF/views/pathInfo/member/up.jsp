<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%System.out.println("####################���ε� �̰Ǽ��� ���� ���ϰ���#####################33"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
			<tr><td>���̵�</td>
			<td>${fileDataa.userid }</td></tr>
			<tr><td>�г���</td>
			<td>${fileDataa.nick }</td></tr>
			<tr><td>�̸�</td>
			<td>${fileDataa.name }</td></tr>
			<tr><td>�������ϸ�</td>
			<td>${fileDataa.orifile}</td></tr>
			<tr><td>�ٲ����ϸ�</td>
			<td>${fileDataa.sysfile}</td></tr>
			<tr><td>����</td><td>
			<img alt="" src="../resources/memberPhoto/${fileDataa.sysfile }" width="200px"></td></tr>
			<tr><td>�������</td>
			<td>${fileDataa.birth }</td></tr>
			<tr><td>�ּ�</td>
			<td>${fileDataa.address }</td></tr>
			<tr><td>�޴���</td>
			<td>${fileDataa.phone }</td></tr>
			<tr><td>���ŵ���</td>
			<td>${fileDataa.receivemail }</td></tr>
			<tr><td>��ȣ����</td>
			<td>${fileDataa.preferTeam }
			</td></tr>
			<tr><td colspan="2" align="center"> <a href="dataModify?id=${fileDataa.id }">�����ϱ�</a>
			<a href="delForm?id=${fileDataa.id }">�����ϱ�</a></td>
		</table>
	</body>
</html>