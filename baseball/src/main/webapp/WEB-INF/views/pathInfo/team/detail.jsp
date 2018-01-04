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
			<td>선수고유번호</td>
			<td>${vo.playerId}</td>
		</tr>
		<tr>
			<td>팀명</td>
			<td>${pi.teamId}</td>
		</tr>
		<tr>
			<td>사진</td>
			<%-- <td>${pi.getPlayerPhoto}</td> --%>
			<td><img alt="나와라" src="../resources/playerPhoto/${pi.oriFile}"
				width="150px" height="200px"></td>
		</tr>
		<tr>
			<td>등번호</td>
			<td>${pi.backNum}</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${pi.playerName}</td>
		</tr>
		<tr>
			<td>포지션</td>
			<td>${pi.position}</td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td>${pi.playerBirth}</td>
		</tr>
		<tr>
			<td>출신교</td>
			<td>${pi.schoolName}</td>
		</tr>
		<tr>
			<td>신장</td>
			<td>${pi.height}</td>
		</tr>
		<tr>
			<td>체중</td>
			<td>${pi.weight}</td>
		</tr>
		<tr>
			<td>국적</td>
			<td>${pi.country}</td>
		</tr>
		<tr>
			<td>연봉</td>
			<td>${pi.salary}</td>
		</tr>
		<tr>
			<td>투구</td>
			<td>${pi.pitchingHand}</td>
		</tr>
		<tr>
			<td>타격</td>
			<td>${pi.battingHand}</td>
		</tr>
		<tr>
			<td colspan="2" align="right"><%--<a
				 href="ReplyForm?id=${data.id }&nowPage=${pData.nowPage}">답변</a>--%> <a 
				href="DeleteForm?playerId=${pi.playerId }">삭제</a> <a
				href="playerModify?playerId=${pi.playerId }">수정</a> <a
				href="List">목록</a></td>

		</tr>
	</table>

</body>
</html>