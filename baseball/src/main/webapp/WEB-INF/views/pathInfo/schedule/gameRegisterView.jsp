
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>
<body>
	<form action="" align="center">

		<table border="2">

			<tr>
				<td colspan="3">${data.dd.away_img }${data.dd.away }
					${data.dd.away_score } : ${data.dd.home_score } ${data.dd.home }
					${data.dd.home_img }</td>

			</tr>

			<tr>
				<td>��/��, �����̸�, ��¸���<br>(�¸��������̺������� �߰�)��, �����̸�, ��̺�
				</td>
				
			
				<td>${data.dd.year }��${data.dd.month }��
					${data.dd.day }�� ${data.dd.yoil }����<br>${data.dd.stadium }</td>
				<td>��/��, �����̸�, ��¸���<br>(�¸��������̺������� �߰�)��, �����̸�, ��̺�
				</td>
			</tr>
			<tr>
				<td>${data.dd.away }</td>
				<td></td>
				<td>${data.dd.home }</td>
			</tr>
			<tr>
				<td>${data.dd2.h }</td>
				<td>��Ÿ</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>Ȩ��</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>����</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>����</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>����</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>��å</td>
				<td></td>
			</tr>
			<%-- <tr>
				<td>��</td>
				<td>${data.dd.year }</td>
				
			</tr>
			<tr>
				<td>��</td>
				<td>${data.dd.month }</td>
				
			</tr>
			<tr>
				<td>��</td>
				<td>${data.dd.day }</td>
				
			</tr>
			<tr>
				<td>����</td>
				<td>${data.dd.yoil }</td>
				
			</tr>
			<tr>
				<td>������</td>
				<td>${data.dd.away }</td>
				
			</tr>
			<tr>
				<td>Ȩ��</td>
				<td>${data.dd.home }</td>
				
			</tr>
			<tr>
				<td>����</td>
				<td>${data.dd.stadium }</td>
				
			</tr>
			<tr>
				<td>���ð�</td>
				<td>${data.dd.game_time }</td>
				
			</tr>
			 
			<tr>
				<td colspan="2" align="center">
				<td><a href="gameRegModifyForm">����</a></td>
				
			</tr>--%>
		</table>
	</form>


</body>
</html>