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
			<td>��¥</td>
			<td>${data.dd.year}${data.dd.month}${data.dd.day}</td>
		</tr>	
		<tr>
			<td>��</td>
			<td>${data.dd.teamId}</td>
		</tr>	
		<%-- <tr>
			<td>������</td>
			<td>${data.dd.position}</td>
		</tr> --%>
		<tr>
			<td>�̸�</td>
			<td>${data.dd.playerName}</td>
		</tr>
		<tr>
			<td>����������ȣ</td>
			<td>${data.dd.playerId}</td>
		</tr>		
			<!-- <tr>
				<td>���ð�� ���� �����</td>
				��𼱰� �ҷ��ͼ� Y�̸� +1 ---------------����Ʈ+�����Ͽ�����
				<td>�ҷ�����</td>
			</tr> -->
			<tr>
				<td>���忩��</td>
			
				<td>${data.dd.g}</td>
			</tr>
			<tr>
				<td>���߿���</td>
				<!-- ����Ʈ�� �޺��� �� �׷��ɷ� Y/N-->
				<td>${data.dd.gs}</td>
			</tr>
			<tr><td colspan="2" align="center">---------------------������ǥ---------------------------</td></tr>
			<tr>
				<td>������ ������</td>
				<td>${data.dd.positionToday}</td>
			</tr>
			<tr>
				<td>�̴�</td>
				<td>${data.dd.inn}</td>
			</tr>
			<tr>
				<td>�� �����ȸ</td>
				<td>${data.dd.tc}</td>
			</tr>
			<tr>
				<td>�ڻ�(��/�ܾ߼��� ���� �ƿ���Ų ���)</td>
				<td>${data.dd.po}</td>
			</tr>
			<tr>
				<td>����</td>
				<td>${data.dd.a}</td>
			</tr>
			<tr>
				<td>��å</td>
				<td>${data.dd.e}</td>
			</tr>
			<tr>
				<td>����</td>
				<td>${data.dd.dp}</td>
			</tr>
			<!-- <tr>
				<td>������</td>
				������ǥ�� ����ؼ� ������� ������, �󼼺���� ����Ʈ���� ����
				<td><input type="text" name="weight" /></td>
			</tr>
			<tr>
				<td>�������</td>
				������ǥ�� ����ؼ� ������� ������, �󼼺���� ����Ʈ���� ����
				<td><input type="text" name="country" /></td>
			</tr> -->
			<!-- ---------------------������� ������ǥ------------------- -->
			<tr><td colspan="2" align="center">---------------------Ÿ����ǥ---------------------------</td></tr>
			<tr>
				<td>Ÿ��</td>
				<td>${data.dd.ab}</td>
			</tr>
			<tr>
				<td>����</td>
				<td>${data.dd.r}</td>
			</tr>
			<tr>
				<td>��Ÿ</td>
				<td>${data.dd.h}</td>
			</tr>
			<tr>
				<td>2��Ÿ</td>
				<td>${data.dd.twoBase}</td>
			</tr>
			<tr>
				<td>3��Ÿ</td>
				<td>${data.dd.thirdBase}</td>
			</tr>
			<tr>
				<td>Ȩ��</td>
				<td>${data.dd.hr}</td>
			</tr>
			<tr>
				<td>Ÿ��</td>
				<td>${data.dd.rbi}</td>
			</tr>
			<tr>
				<td>����</td>
				<td>${data.dd.bb}</td>
			</tr>
			<tr>
				<td>����</td>
				<td>${data.dd.so}</td>
			</tr>
			<tr>
				<td>����</td>
				<td>${data.dd.sb}</td>
			</tr>
			<tr>
				<td>����</td>
				<td>${data.dd.cs}</td>
			</tr>
			<!-- <tr>
				<td>Ÿ��</td>
				����� ��� ���
				<td><input type="text" name="salary" /></td>
			</tr>
			<tr>
				<td>�����</td>
				����� ��� ���
				<td><input type="text" name="salary" /></td>
			</tr>
			<tr>
				<td>��Ÿ��</td>
				����� ��� ���
				<td><input type="text" name="salary" /></td>
			</tr>
			<tr>
				<td>ops</td>
				����� ��� ���
				<td><input type="text" name="salary" /></td>
			</tr> -->
			<!-- ---------------------------������� Ÿ����ǥ---------- -->
			<tr><td colspan="2" align="center">---------------------������ǥ---------------------------</td></tr>
			<tr>
				<td>�¸�</td>
			<td>${data.dd.w}</td></tr>
				<tr>
				<td>�й�</td>
			<td>${data.dd.l}</td></tr>
				<tr>
				<td>Ȧ��</td>
			<td>${data.dd.hold}</td></tr>
				<tr>
				<td>���̺�</td>
			<td>${data.dd.sv}</td></tr>
			<!-- <tr>
				<td>�����å��</td>
				<td><input type="text" name="salary" /></td>
			</tr> -->
			<tr>
				<td>���̺� ��ȸ</td>
				<td>${data.dd.svo}</td>
			</tr>
			<tr>
				<td>��ȭ�̴�</td>
				<td>${data.dd.ip}</td>
			</tr>
			<tr>
				<td>�Ǿ�Ÿ</td>
				<td>${data.dd.pitcherH}</td>
			</tr>
			<tr>
				<td>����</td>
				<td>${data.dd.pitcherR}</td>
			</tr>
			<!-- <tr>
				<td>��å��</td>
				����� ��� ��� + ������������ ����
				<td><input type="text" name="salary" /></td>
			</tr> -->
			<tr>
				<td>��Ȩ��</td>
				<td>${data.dd.pitcherHr}</td>
			</tr>
			<tr>
				<td>�������</td>
				<td>${data.dd.pitcherBb}</td>
			</tr>
			<tr>
				<td>Ż����</td>
				<td>${data.dd.pitcherSo}</td>
			</tr>
			<!-- <tr>
				<td>�Ǿ�Ÿ��</td>
				����� ��� ���
				<td><input type="text" name="salary" /></td>
			</tr>
			<tr>
				<td>whip</td>
				����� ��� ���
				<td><input type="text" name="salary" /></td>
			</tr> -->
		<tr>

			<td colspan="2" align="right"><a href="deleteTodayStat?playerId=${data.dd.playerId}">ȸ��Ż��</a>
				<a href="modifyTodayStat?playerId=${data.dd.playerId}">������������</a> <a href="list">����Ʈ��</a></td>
		</tr> 
		</table>
	</form>

</body>
</html>