<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="detail" method="post" enctype="multipart/form-data">
		<table border="2">
			<tr>
				<td>����������ȣ</td>
				<td><input type="text" name="playerId" /></td>
			</tr>
			 <tr>
				<td>���ܸ�</td>
				<td><select name="teamId">

						<option selected="selected" value="����">����</option>
						<option value="�λ�">�λ�</option>
						<option value="NC">NC</option>
						<option value="�ؼ�">�ؼ�</option>
						<option value="LG">LG</option>
						<option value="KIA">KIA</option>
						<option value="SK">SK</option>
						<option value="��ȭ">��ȭ</option>
						<option value="�Ե�">�Ե�</option>
						<option value="�Ｚ">�Ｚ</option>
						<option value="KT">KT</option>

				</select></td>
			</tr> 
			 <tr>
				<td>�������</td>
				<td><select name="status">

						<option selected="selected" value="���ļ���">���ļ���</option>
						<option value="�Ű���">�Ű���</option>
						<option value="����">����</option>
						<option value="����Ż��">����Ż��</option>
				</select></td>
			</tr> 
			<tr>
				<td>Ŭ����</td>
				<td><select name="gun">

						<option selected="selected" value="2��">2��</option>
						<option value="1��">1��</option>
						
				</select></td>
			</tr> 
			<tr>
				<td>����</td>
				<td><input type="file" name="playerPhoto" /></td>
			</tr>
			<tr>
				<td>���ȣ</td>
				<td><input type="text" name="backNum" /></td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td><input type="text" name="playerName" /></td>
			</tr>
			<tr>
				<td>������</td>
				<td><select name="position">

						<option selected="selected" value="p, ����">����</option>
						<option value="c, ���߼�, ����">����</option>
						<option value="1b, ���߼�, 1���">1���</option>
						<option value="2b, ���߼�, 2���">2���</option>
						<option value="3b, ���߼�, 3���">3���</option>
						<option value="ss, ���߼�, ���ݼ�">���ݼ�</option>
						<option value="lf, �ܾ߼�, ���ͼ�">���ͼ�</option>
						<option value="cf, �ܾ߼�, �߰߼�">�߰߼�</option>
						<option value="rf, �ܾ߼�, ���ͼ�">���ͼ�</option>
						
						
				</select></td>
			</tr> 
		<tr>
				<td>�������</td>
				<td><input type="text" name="playerBirth" /></td>
			</tr>
			<tr>
				<td>��ű�</td>
				<td><input type="text" name="schoolName" /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="height" /></td>
			</tr>
			<tr>
				<td>ü��</td>
				<td><input type="text" name="weight" /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="country" /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="salary" /></td>
			</tr>
			<tr>
				<td>��</td>
				<td><select name="pitchingHand">

						<option selected="selected" value="����">����</option>
						<option value="����">����</option>
												
				</select></td>
			</tr> 
			<tr>
				<td>Ÿ</td>
				<td><select name="battingHand">

						<option selected="selected" value="��Ÿ">��Ÿ</option>
						<option value="��Ÿ">��Ÿ</option>
						<option value="��Ÿ">��Ÿ</option>
												
				</select></td>
			</tr> 
			<tr>
				<td colspan="2" align="center">
				<td><input type="submit" value="�Է�" /></td>
			</tr>
		</table>
	</form>
</body>

</html>