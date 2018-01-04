<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="view" method="post" enctype="multipart/form-data">
		<table border="2">
			<tr>3333333333333333333333333333333
				<td>선수고유번호</td>
				<td><input type="text" name="playerId" /></td>
			</tr>
			<tr>
				<td>구단명</td>
				<td><select name="teamId">

						<option selected="selected" value="">팀 선택</option>
						<option value="1">두산</option>
						<option value="2">NC</option>
						<option value="3">넥센</option>
						<option value="4">LG</option>
						<option value="5">KIA</option>
						<option value="6">SK</option>
						<option value="7">한화</option>
						<option value="8">롯데</option>
						<option value="9">삼성</option>
						<option value="10">kt</option>

				</select></td>
			</tr>
			<tr>
				<td>사진</td>
				<td><input type="file" name="playerPhoto" /></td>
			</tr>
			<tr>
				<td>등번호</td>
				<td><input type="text" name="backNum" /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="playerName" /></td>
			</tr>
			<tr>
				<td>포지션</td>
				<td><input type="text" name="position" /></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="text" name="playerBirth" /></td>
			</tr>
			<tr>
				<td>출신교</td>
				<td><input type="text" name="schoolName" /></td>
			</tr>
			<tr>
				<td>신장</td>
				<td><input type="text" name="height" /></td>
			</tr>
			<tr>
				<td>체중</td>
				<td><input type="text" name="weight" /></td>
			</tr>
			<tr>
				<td>국적</td>
				<td><input type="text" name="country" /></td>
			</tr>
			<tr>
				<td>연봉</td>
				<td><input type="text" name="salary" /></td>
			</tr>
			<tr>
				<td>투</td>
				<td><input type="text" name="pitchingHand" /></td>
			</tr>
			<tr>
				<td>타</td>
				<td><input type="text" name="battingHand" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<td><input type="submit" value="입력" /></td>
			</tr>
		</table>
	</form>
</body>

</html>