<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	System.out.println("��� �������.jsp");
%>
<html>
<script type="text/javascript">
	function fileDelete() {
		if (confirm("������ �����Ͻðڽ��ϱ�?")) {
			fmt.action = "fileDelete"
			fmt.submit()
		}

	}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	���� ����
	<form action="modifyReg" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>���̵�</td>
				<td><input type="text" name="userid"
					value="${data.dd.userid }" readonly="readonly"></td>
			</tr>
			<tr>
				<td>�г���</td>
				<td colspan="2"><input type="text" name="nick"
					value="${data.dd.nick }"></td>
			</tr>
			<tr>
				<td>������ ��й�ȣ</td>
				<td colspan="2"><input type="password" name="password"></td>
			</tr>
			<tr>
				<td>��й�ȣ Ȯ��</td>
				<td><input type="password" name="passwordtwo"></td>
				<td><input type="button" name="passcheck" value="Ȯ��" /></td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td colspan="2"><input type="text" name="name"
					value="${data.dd.name }"></td>
			</tr>
			<%-- <tr><td>����</td>
			<td><input type="file" name="file" value="${data.mvo.file }"></td></tr> --%>
		
			<tr>
				<td>����</td>
				<td><c:choose>
						<c:when test="${data.dd.sysname!=null && data.dd.sysname!='null'}">
							<input type="hidden" name="file" value="${data.dd.sysname }" />
							<a href="javascript:fileDelete();">���� ����</a>
						</c:when>
						<c:otherwise>
							<input type="file" name="file" />
						</c:otherwise>
					</c:choose></td>
			</tr>
			
			<tr>
				<td>�������</td>
				<td colspan="2"><input type="text" name="birth"
					value="${data.dd.birth }"></td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td colspan="2"><input type="text" name="address"
					value="${data.dd.address }"></td>
			</tr>
			<tr>
				<td>�޴���</td>
				<td colspan="2"><input type="text" name="phone"
					value="${data.dd.phone }"></td>
			</tr>
			<tr>
				<td>���ŵ���</td>
				<td colspan="2"><c:choose>
						<c:when test="${data.dd.receivemail eq '����'}">
							<input type="radio" name="receivemail" value="����"
								checked="checked">����
			<input type="radio" name="receivemail" value="�ź�">�ź�			
			</c:when>
						<c:otherwise>

							<input type="radio" name="receivemail" value="����">����
			<input type="radio" name="receivemail" value="�ź�" checked="checked">�ź�			
			</c:otherwise>
					</c:choose></td>
			</tr>
			<tr>
				<td>��ȣ����</td>
				<td colspan="2"><select name="preferTeam">
						<option value=lgtwins
							<c:if test="${data.dd.preferTeam eq 'lgtwins' }">
                              <c:out value="selected" /></c:if>>LGƮ����</option>
						<option value=ncdinos
							<c:if test="${data.dd.preferTeam eq 'ncdinos' }">
                              <c:out value="selected" /></c:if>>NC���̳뽺</option>
				</select></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit" value="����" />
					<a href="detail?userid="${data.dd.userid }>�ڷΰ���</a></td>
			</tr>
		</table>
	</form>
</body>
</html>