<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<table border="">
		<tr>
			<!-- <td>����������ȣ</td> -->
			<td>��</td>
			<td>���� ����</td>
			<td>���� �̸�</td>
			<td>���ȣ</td>
			<!-- <td>������</td> -->
			<!-- <td>��</td>
			<td>Ÿ</td>
			<td>����</td> -->
			<td>�������</td>
			<!-- <td>��ű�</td>
			<td>����</td>
			<td>ü��</td>
			<td>����</td> -->
			<td>���������ð�</td>
			<td>�󼼺���</td>
		</tr>
		
<c:forEach items="${data.dd }" var="vo">	
		<tr>
			
			<%-- <td>${vo.playerId}</td> --%>
			<td>${vo.teamId}</td>
			<td>${vo.oriFile}</td>
			<td>${vo.playerName}</td>
			<td>${vo.backNum}</td>
			<%-- <td>${vo.position}</td>
			<td>${vo.pitchingHand}</td>
			<td>${vo.battingHand}</td>
			<td>${vo.salary}</td> --%>
			<td>${vo.playerBirth}</td>
			<%-- <td>${vo.schoolName}</td>
			<td>${vo.height}</td>
			<td>${vo.weight}</td>
			<td>${vo.country}</td> --%>
			<td>${vo.regDate}</td>
			<td><a href="view?id=${vo.playerId}">${vo.playerName}</a></td>
			<%-- <td>${vo.grade}</td> --%>
		</tr>
</c:forEach>		
		<tr>
			<td colspan="15" align="right">
				<a href="register">���������Է�</a>
			</td>
			
			
		</tr>
		
		
		
	</table>

</body>
</html>