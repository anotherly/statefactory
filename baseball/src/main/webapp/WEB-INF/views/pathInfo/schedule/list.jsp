<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<table border="">
		<tr>
			2017���� �������
			<br>
			<td>����ȣ</td>
			<td>��</td>
			<td>��</td>
			<td>��</td>
			<td>����</td>
			<td>���</td>
			<td>����</td>
			<td>�ð�</td>
			<td>�����Է�</td>
			<td>�߰��ۻ�</td>
			
		</tr>
		<c:forEach items="${data.dd2 }" var="voo">
		<input type="hidden" name="year" value="${voo.year }">
		<input type="hidden" name="month" value="${voo.month }">
		<input type="hidden" name="day" value="${voo.day }">
		<input type="hidden" name="teamId" value="${voo.teamId }">
		<%-- <input type="hidden" name="h" value="${voo.h }">
		<input type="hidden" name="h" value="${voo.h }">
		<input type="hidden" name="h" value="${voo.h }"> --%>
		
		</c:forEach>
		

		<c:forEach items="${data.dd }" var="vo">
			<tr>
				<td>${vo.game_num}</td>
				<td>${vo.year}</td>
				<td>${vo.month}</td>
				<td>${vo.day}</td>
				<td>${vo.yoil}</td>
				<%-- ${vo.away_img} --%>
				<td>${vo.away} ${vo.away_score} : ${vo.home_score} ${vo.home}</td><%-- ${vo.home_img} --%>
				<td>${vo.stadium}</td>
				<td>${vo.game_time}</td>
				
				<td><a href="gameRegisterView?game_num=${vo.game_num}?year=${vo.year }?month=${vo.month }?day=${vo.day }?away=${vo.away }">�󼼺���</a></td>
				
				<td>${vo.channel}</td>
				<%-- <td><a href="register?home=${vo.home }&away=${vo.away}">�����Է�</a></td> --%>

			</tr>
		</c:forEach>
		<!-- <tr>
			<td colspan="15" align="right"><a href="register">���������Է�</a></td>


		</tr> -->



	</table>

</body>
</html>