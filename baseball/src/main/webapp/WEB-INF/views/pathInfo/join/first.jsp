<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="join" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr><td>���̵�</td>
			<td><input type="text" name="userid"><td><input type="button" name="idcheck" value="�ߺ�Ȯ��"/></td></tr>
			<tr><td>�г���</td>
			<td colspan="2"><input type="text" name="nick"></td></tr>
			<tr><td>��й�ȣ</td>
			<td colspan="2"><input type="password" name="password"></td></tr>
			<tr><td>��й�ȣ Ȯ��</td>
			<td><input type="password" name="passwordtwo"></td><td><input type="button" name="passcheck" value="Ȯ��"/></td></tr>
			<tr><td>�̸�</td>
			<td colspan="2"><input type="text" name="name"></td></tr>
			<tr><td>����</td>
			<td><input type="file" name="file"></td></tr>
			<tr><td>�������</td>
			<td colspan="2"><input type="text" name="birth"></td></tr>
			<tr><td>�ּ�</td>
			<td colspan="2"><input type="text" name="address"></td></tr>
			<tr><td>�޴���</td>
			<td colspan="2"><input type="text" name="phone"></td></tr>
			<tr><td>���ŵ���</td>
			<td colspan="2"><input type="radio" name="receivemail" value="����" checked="checked">����
			<input type="radio" name="receivemail" value="�ź�">�ź�</td></tr>
			<tr><td>��ȣ����</td>
			<td colspan="2"><select name="preferTeam">
			<option value="lgtwins">LGƮ����</option>
			<option value="ncdinos">NC���̳뽺</option>
			</select>
			</td></tr>
			
			<tr>
			<td colspan="2" align="center">
				<input type="submit" value="ȸ�� ����" />
				<a href="list">�ڷΰ���</a>
			</td>
			</tr>
		</table>
	</form>
</body>
</html>