<%@page import="baseball.ticket.model.TicketVo"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set value="${ paramValues.chk}" var="abc" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title> 
</head>
<body>
	<%-- <% String a = request.getParameter("chk");%> --%>


	${param.stadium }
	<br> ${param.seat}
	<br> ${param.cnt }
	<br> ${param.chk }
	<br> chk�� number�� line���� �и��ɿ���
	<br> �����Ͻ� Ƽ�Ϲ�ȣ :

	<%-- <input type="text" value="${param.stadium }" name="stadium"/>
<input type="text" value="${param.seat }" name="grade"/>
<input type="text" value="${param.line }" name="line"/> --%>
	<form action="insertticket" method="post">

		<c:forEach items="${abc}" var="i" varStatus="num">

			<c:set value="${param.stadium }" var="stadium" />
			<c:set value="${param.seat }" var="seat" />
			<c:set value="${param.stadium }${i }${param.seat }" var="ticketinfo" />
			<c:set value="${i.substring(0,1) }" var="listt" />
			<c:set value="${i.substring(1) }" var="line" />

			<c:set value="${ticketinfo}" var="ticketinfo" />
			<c:set value="${listt}" var="listt" />
			<c:set value="${line}" var="line" />
			<c:set value="${seat}" var="seat" />
			<c:set value="${stadium}" var="stadium" />


			<input type="text" value="${ticketinfo }"
				name="reallist[${ num.index}].ticketinfo" />
			<input type="text" value="${listt}"
				name="reallist[${ num.index}].listt" />
			<input type="text" value="${line}"
				name="reallist[${ num.index}].line" />
			<input type="text" value="${seat}"
				name="reallist[${ num.index}].seat" />
			<input type="text" value="${stadium}"
				name="reallist[${ num.index}].stadium" />
			<br>

		</c:forEach>
		�ݾ�:
		<c:choose>
			<c:when test="${param.seat eq 'b1' }">
${param.cnt * 10000 }
<input type="hidden" value="${param.cnt * 10000 }" name="money" />
			</c:when>
			<c:when test="${param.seat eq 'b2' or param.seat eq 'b3' }">
${param.cnt * 8000 }
<input type="hidden" value="${param.cnt * 8000 }" name="money" />
			</c:when>
			<c:when test="${param.seat eq 'b4' or param.seat eq 'b5'}">
${param.cnt * 6000 }
<input type="hidden" value="${param.cnt * 6000 }" name="money" />
			</c:when>
			<c:when test="${param.seat eq 'b6' or param.seat eq 'b7'}">
${param.cnt * 4000 }
<input type="hidden" value="${param.cnt * 4000 }" name="money" />
			</c:when>
		</c:choose>
		�����Ͻðڽ��ϱ� ? <input type="submit" value="�����ܰ�" />
	</form>
</body>
</html>