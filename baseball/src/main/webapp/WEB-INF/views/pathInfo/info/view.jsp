<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<table border="">
		<tr>
			<td>����������ȣ</td>
			<td>${data.dd.playerId}</td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td>${data.dd.playerName}</td>
		</tr>
		<tr>
			<td>����</td>
			<td>${data.dd.teamId}</td>
		</tr>
		<tr>
			<td>����</td>
			<td><img alt=""
				src="../../../resources/playerPhoto/${data.dd.sysFile}"
				width="150px" height="200px"></td>
		</tr>
		
		<tr>
			<td>���ȣ</td>
			<td>${data.dd.backNum}</td>
		</tr>
		
		<tr>
			<td>������</td>
			<td>${data.dd.position}</td>
		</tr>
		<tr>
			<td>�������</td>
			<td>${data.dd.playerBirth}</td>
		</tr>
		<tr>
			<td>��ű�</td>
			<td>${data.dd.schoolName}</td>
		</tr>
		<tr>
			<td>����</td>
			<td>${data.dd.height}</td>
		</tr>
		<tr>
			<td>ü��</td>
			<td>${data.dd.weight}</td>
		</tr>
		<tr>
			<td>����</td>
			<td>${data.dd.country}</td>
		</tr>
		<tr>
			<td>����</td>
			<td>${data.dd.salary}</td>
		</tr>
		<tr>
			<td>����</td>
			<td>${data.dd.pitchingHand}</td>
		</tr>
		<tr>
			<td>Ÿ��</td>
			<td>${data.dd.battingHand}</td>
		</tr>
		 <tr>

			<td colspan="2" align="right"><%-- <a href="delete?id=${data.dd.id}">ȸ��Ż��</a> --%>
				<a href="playerModify?playerId=${data.dd.playerId}">������������</a> <a href="playerList">����Ʈ��</a></td>
		</tr> 

	</table>

</body>
</html>