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
	<table border=1>
	<form action="playerList" method="post">
	<c:forEach begin="0" end="4" var="i">
		<tr>
			<td colspan="4">
			
				<select name="list[${i }].kind">
					<c:forEach items="${kindArr }" var="kk">
						<c:choose>
							<c:when test="${kk[0]==sch.list.get(i).kind }">
								<option value="${kk[0] }" selected="selected">${kk[1] }</option>
							</c:when>
							<c:otherwise>
								<option value="${kk[0] }" >${kk[1] }</option>
							</c:otherwise>
						</c:choose>				
										
					</c:forEach>
				</select>
				<input type="text" name="list[${i }].what" value="${sch.list.get(i).what }" />
				
			
			
			</td>
		</tr>
	</c:forEach>
	
	
		<tr>
			<td colspan="5">
			
			��ȸ��:<input type="text" name="cnt">
			
			
				<input type="submit" value="�˻�" />
				<a href="playerList">�ʱ�ȭ</a>
			</td>
		</tr>
	</form>

	
	
		<tr>
			<td>��ȣ</td>
			<td>�����̸�</td>
			<td>�Ҽ���</td>
			<td>������</td>
			<td>��</td>
			<td>Ÿ</td>
			<td>����</td>
			<td>�������</td>
			<td>��ȸ��</td>
		</tr>
<c:forEach items="${data.dd }" var="vo" varStatus="no">		
		<tr>
			<td>${no.index }</td>
			<td>
			<c:forEach begin="1" end="${vo.lev }">
				&nbsp;&nbsp;
			</c:forEach>
			<c:if test="${vo.lev>0 }">
				��
			</c:if>
			<a href="view?playerId=${vo.playerId }">${vo.playerName }</a></td>
			<td>${vo.teamId }</td>
			<td>${vo.position }</td>
			<td>${vo.pitchingHand }</td>
			<td>${vo.battingHand }</td>
			<td>${vo.salary }</td>
			<td>${vo.playerBirth }</td>
			<%-- <td>${vo.regDate }</td> --%>
			<td>${vo.cnt }</td>
		</tr>
</c:forEach>

	<tr>
			<td colspan="10" align="right">
				<a href="playerRegister">�������</a>
			</td>
	</tr>
	</table>
</body>
</html>