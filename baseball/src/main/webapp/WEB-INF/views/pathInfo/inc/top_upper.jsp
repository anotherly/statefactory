<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	System.out.println("ž ����.jsp ");
%>
<table width="100%">
	<tr>
		<c:choose>
			<c:when test="${loginVo!=null }">
				<td width="60%"></td>
				<td>${loginVo.name }�� ȯ���մϴ�.</td>
				<td><a href="../../login/loginSub/logout">�α׾ƿ�</a></td>
				<c:choose>
					<c:when test="${loginVo.grade ne 'admin' }">
						<td><a href="../../member/memberSub/detail?userid=${loginVo.userid }">����������</a></td>
					</c:when>
				</c:choose>
			</c:when>
			<c:otherwise>
				<td width="70%"></td>
				<c:forEach items="${data.loginMenu }" var="mm">
					<td align="right"><a href="../../${mm.name}/${mm.url }/first">${mm.korName }</a>
					</td>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</tr>
	<tr>
		<td colspan="4">
		<a href="http://localhost:8080/baseball/pathInfo/home/notice/first">
				<img src="../../../resources/homePhoto/kbologo.png" width="100%"
				height=140>
		</a></td>
	</tr>

</table>
