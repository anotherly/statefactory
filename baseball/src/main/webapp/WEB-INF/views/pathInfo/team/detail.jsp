<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<table border="2">
		<tr>
			<td>����������ȣ</td>
			<td>${vo.playerId}</td>
		</tr>
		<tr>
			<td>����</td>
			<td>${pi.teamId}</td>
		</tr>
		<tr>
			<td>����</td>
			<%-- <td>${pi.getPlayerPhoto}</td> --%>
			<td><img alt="���Ͷ�" src="../resources/playerPhoto/${pi.oriFile}"
				width="150px" height="200px"></td>
		</tr>
		<tr>
			<td>���ȣ</td>
			<td>${pi.backNum}</td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td>${pi.playerName}</td>
		</tr>
		<tr>
			<td>������</td>
			<td>${pi.position}</td>
		</tr>
		<tr>
			<td>�������</td>
			<td>${pi.playerBirth}</td>
		</tr>
		<tr>
			<td>��ű�</td>
			<td>${pi.schoolName}</td>
		</tr>
		<tr>
			<td>����</td>
			<td>${pi.height}</td>
		</tr>
		<tr>
			<td>ü��</td>
			<td>${pi.weight}</td>
		</tr>
		<tr>
			<td>����</td>
			<td>${pi.country}</td>
		</tr>
		<tr>
			<td>����</td>
			<td>${pi.salary}</td>
		</tr>
		<tr>
			<td>����</td>
			<td>${pi.pitchingHand}</td>
		</tr>
		<tr>
			<td>Ÿ��</td>
			<td>${pi.battingHand}</td>
		</tr>
		<tr>
			<td colspan="2" align="right"><%--<a
				 href="ReplyForm?id=${data.id }&nowPage=${pData.nowPage}">�亯</a>--%> <a 
				href="DeleteForm?playerId=${pi.playerId }">����</a> <a
				href="playerModify?playerId=${pi.playerId }">����</a> <a
				href="List">���</a></td>

		</tr>
	</table>

</body>
</html>