<%-- <%@page import="baseball.player.model.PlayerDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<%
	PlayerDao teamBean = new PlayerDao();
	ArrayList teamList = new ArrayList();
	ArrayList positionList = new ArrayList();
	ArrayList playerNameNoList = new ArrayList();
	teamList = teamBean.getteam(request);
	positionList = teamBean.getposition(request);
	playerNameNoList = teamBean.getplayerNameNo(request);
%>
<%=teamBean.getteamState(request)%>
<%=teamBean.getpositionState(request)%>
<%=teamBean.getplayerNameNoState(request)%>
<%=teamBean.getplayerNameNoState1(request)%>
<%=teamBean.getplayerNameNoState2(request)%>
<script type="text/javascript">
	function reLoading(key) {
		if (key == "teamId") {
			var set1 = document.getElementsByName("position");
			var set2 = document.getElementsByName("playerNameNo");
			set1[0].selectedIndex = 0;
			set2[0].selectedIndex = 0;
		}
		var res = document.playerstat.playerNameNo.options[playerstat.playerNameNo.selectedIndex].value;
		var abc = "?playerId=" + res.replace(/[^0-9]/g, "");

		document.playerstat.action = "register" + abc
		document.playerstat.submit(); 
	}

	var monthtext = [ '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11',
			'12' ];
	function populatedropdown(yearfield, monthfield, dayfield) {
		var today = new Date()
		var dayfield = document.getElementById(dayfield)
		var monthfield = document.getElementById(monthfield)
		var yearfield = document.getElementById(yearfield)
		for (var i = 0; i < 31; i++)
			dayfield.options[i] = new Option(i + 1, i + 1)
		dayfield.options[today.getDate()] = new Option(today.getDate(), today
				.getDate(), true, true) //select today's day
		for (var m = 0; m < 12; m++)
			monthfield.options[m] = new Option(monthtext[m], monthtext[m])
		monthfield.options[today.getMonth()] = new Option(monthtext[today
				.getMonth()], monthtext[today.getMonth()], true, true) //select today's month
		var thisyear = today.getFullYear()
		for (var y = 0; y < 20; y++) {
			yearfield.options[y] = new Option(thisyear, thisyear)
			thisyear += 1
		}
		yearfield.options[0] = new Option(today.getFullYear(), today
				.getFullYear(), true, true) //select today's year
	}
</script>
</head>
<body>
	<form action="" name="someform"></form>
	<form action="detail" method="post" id="playerstat" name="playerstat">
		<table border="2" align="center">
			<tr>
				<td colspan="2" align="center">
				<select id="year" name="year"></select> 
				<select id="month" name="month"></select>
				<select id="day" name="day"></select></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<select id="teamId" name="teamId"
					onchange="javascript:reLoading('teamId')">
						<option value="">==���ܼ���==</option>
						<%
							for (int i = 0; i < teamList.size(); i++) {
						%>
						<option value="<%=teamList.get(i)%>"
							<%if (teamList.get(i).equals(teamBean.getteamState(request))) {
					out.print("selected");
				}%>>
							<%=teamList.get(i)%></option>
						<%
							}
						%>
				</select>
				<select name="position"
					onchange="javascript:reLoading('position')">
						<option value="">==�����Ǽ���==</option>
						<%
							for (int i = 0; i < positionList.size(); i++) {
						%>
						<option value="<%=positionList.get(i)%>"
							<%if (positionList.get(i).equals(teamBean.getpositionState(request))) {
					out.print("selected");
				}%>><%=positionList.get(i)%></option>
						<%
							}
						%>
				</select>
				<select name="playerNameNo" id="playerNameNo"
					onchange="javascript:reLoading('playerNameNo')"><!-- id="playerNameNo"  -->
						<option value="">==��������==</option>
						<%
							for (int i = 0; i < playerNameNoList.size(); i++) {
						%>
						<option value="<%=playerNameNoList.get(i)%>"
							<%if (playerNameNoList.get(i).equals(teamBean.getplayerNameNoState(request))) {
					out.print("selected");
				}%>><%=playerNameNoList.get(i)%></option>
				
						<%
							}
						%>
						</select>
			 	
				<input type="hidden" name="playerId" value="<%=teamBean.getplayerNameNoState1(request)%>">
				<input type="hidden" name="playerName" value="<%=teamBean.getplayerNameNoState2(request)%>">
				</td>
			</tr>
			<tr>
				<td>���忩��</td>
				<!-- Y/N -->
				<!-- �ϴ� ���� ��·�� �� ����� ���߰ڱ� -->
				<!-- ��ư���� -->
				<td><input id="btOnclick" type="button" value="��"
					onclick="bt_onclick()"> <input type="hidden" name="g"
					value="1"> <input id="btInsOnclick" type="button"
					value="���" onclick="bt_ins_onclick()" style="display: none;">
					<!-- <input name="g" type="hidden" value="0"> --></td>
			</tr>

			<!-- <tr>
				<td>���ð�� ���� �����</td>
				��𼱰� �ҷ��ͼ� Y�̸� +1 ---------------����Ʈ+�����Ͽ�����
				<td>�ҷ�����</td>
			</tr> -->

			<tr>
				<td>���߿���</td>
				<!-- ����Ʈ�� �޺��� �� �׷��ɷ� Y/N-->
				<td><select name="gs" disabled="true">

						<option selected="selected" value="1">����</option>
						<option value="0">��ü</option>

				</select></td>
			</tr>
			<tr>
				<td colspan="2" align="center">---------------------������ǥ---------------------------</td>
			</tr>
			<tr>
				<td>������ ������</td>
				<td><select name="positionToday" id="positionToday"
					disabled="true">

						<option selected="selected" value="">����</option>
						<option value="p, ����">����</option>
						<option value="c, ���߼�">����</option>
						<option value="1b, ���߼�">1���</option>
						<option value="2b, ���߼�">2���</option>
						<option value="3b, ���߼�">3���</option>
						<option value="ss, ���߼�">���ݼ�</option>
						<option value="lf, �ܾ߼�">���ͼ�</option>
						<option value="cf, �ܾ߼�">�߰߼�</option>
						<option value="rf, �ܾ߼�">���ͼ�</option>

				</select></td>
			</tr>
			<tr>
				<td>�̴�</td>
				<td><input name="inn" value="0"
					style="border: 0; height: 30px;" readonly="true" size="50" /></td>
			</tr>
			<tr>
				<td>�� �����ȸ</td>
				<td><input name="tc" value="0" style="border: 0; height: 30px;"
					readonly="true" size="50" /></td>
			</tr>
			<tr>
				<td>�ڻ�(��/�ܾ߼��� ���� �ƿ���Ų ���)</td>
				<td><input name="po" value="0" style="border: 0; height: 30px;"
					readonly="true" size="50" /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input name="a" value="0" style="border: 0; height: 30px;"
					readonly="true" size="50" /></td>
			</tr>
			<tr>
				<td>��å</td>
				<td><input name="e" value="0" style="border: 0; height: 30px;"
					readonly="true" size="50" /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input name="dp" value="0" style="border: 0; height: 30px;"
					readonly="true" size="50" /></td>
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
			<tr>
				<td colspan="2" align="center">---------------------Ÿ����ǥ---------------------------</td>
			</tr>
			<tr>
				<td>Ÿ��</td>
				<td><input name="ab" value="0" style="border: 0; height: 30px;"
					readonly="true" size="50" /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input name="r" value="0" style="border: 0; height: 30px;"
					readonly="true" size="50" /></td>
			</tr>
			<tr>
				<td>��Ÿ</td>
				<td><input name="h" value="0" style="border: 0; height: 30px;"
					readonly="true" size="50" /></td>
			</tr>
			<tr>
				<td>2��Ÿ</td>
				<td><input name="twoBase" value="0"
					style="border: 0; height: 30px;" readonly="true" size="50" /></td>
			</tr>
			<tr>
				<td>3��Ÿ</td>
				<td><input name="thirdBase" value="0"
					style="border: 0; height: 30px;" readonly="true" size="50" /></td>
			</tr>
			<tr>
				<td>Ȩ��</td>
				<td><input name="hr" value="0" style="border: 0; height: 30px;"
					readonly="true" size="50" /></td>
			</tr>
			<tr>
				<td>Ÿ��</td>
				<td><input name="rbi" value="0"
					style="border: 0; height: 30px;" readonly="true" size="50" /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input name="bb" value="0" style="border: 0; height: 30px;"
					readonly="true" size="50" /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input name="so" value="0" style="border: 0; height: 30px;"
					readonly="true" size="50" /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input name="sb" value="0" style="border: 0; height: 30px;"
					readonly="true" size="50" /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input name="cs" value="0" style="border: 0; height: 30px;"
					readonly="true" size="50" /></td>
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
			<tr>
				<td colspan="2" align="center">---------------------������ǥ---------------------------</td>
			</tr>
			<tr>
				<td>�¸�</td>
				<td><select name="w" disabled="true">

						<option selected="selected" value="0">����</option>
						<option value="1">�¸�</option>

				</select></td>
			</tr>
			<tr>
				<td>�й�</td>
				<td><select name="l" disabled="true">

						<option selected="selected" value="0">����</option>
						<option value="1">�й�</option>

				</select></td>
			</tr>
			<tr>
				<td>Ȧ��</td>
				<td><select name="hold" disabled="true">

						<option selected="selected" value="0">����</option>
						<option value="1">Ȧ��</option>

				</select></td>
			</tr>
			<tr>
				<td>���̺�</td>
				<td><select name="sv" disabled="true">

						<option selected="selected" value="0">����</option>
						<option value="1">���̺�</option>

				</select></td>
			</tr>
			<!-- <tr>
				<td>�����å��</td>
				<td><input type="text" name="salary" /></td>
			</tr> -->
			<tr>
				<td>���̺� ��ȸ</td>
				<td><select name="svo" disabled="true">

						<option selected="selected" value="0">����</option>
						<option value="1">����</option>

				</select></td>
			</tr>
			<tr>
				<td>��ȭ�̴�</td>
				<td><input name="ip" value="0" style="border: 0; height: 30px;"
					readonly="true" size="50" /></td>
			</tr>
			<tr>
				<td>�Ǿ�Ÿ</td>
				<td><input name="pitcherH" value="0"
					style="border: 0; height: 30px;" readonly="true" size="50" /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input name="pitcherR" value="0"
					style="border: 0; height: 30px;" readonly="true" size="50" /></td>
			</tr>
			<!-- <tr>
				<td>��å��</td>
				����� ��� ��� + ������������ ����
				<td><input type="text" name="salary" /></td>
			</tr> -->
			<tr>
				<td>��Ȩ��</td>
				<td><input name="pitcherHr" value="0"
					style="border: 0; height: 30px;" readonly="true" size="50" /></td>
			</tr>
			<tr>
				<td>�������</td>
				<td><input name="pitcherBb" value="0"
					style="border: 0; height: 30px;" readonly="true" size="50" /></td>
			</tr>
			<tr>
				<td>Ż����</td>
				<td><input name="pitcherSo" value="0"
					style="border: 0; height: 30px;" readonly="true" size="50" /></td>
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
				<td colspan="2" align="center">
				<td><input type="submit" value="�Է�" /></td>
			</tr>
		</table>
	</form>
<script type="text/javascript">
		window.onload = function() {
			populatedropdown("year", "month", "day")
		}
	</script>
	<script type="text/javascript">
		function bt_onclick() {//y��ư��������
			/* document.all.g.style.border = "1px solid #dddddd";
			document.all.g.disabled = false; */
			document.all.gs.style.border = "1px solid #dddddd";
			document.all.gs.disabled = false;
			document.all.positionToday.style.border = "1px solid #dddddd";
			document.all.positionToday.disabled = false;
			// -------------������ǥ--------------
			document.all.inn.style.border = "1px solid #dddddd";
			document.all.inn.readOnly = false;
			document.all.tc.style.border = "1px solid #dddddd";
			document.all.tc.readOnly = false;
			document.all.po.style.border = "1px solid #dddddd";
			document.all.po.readOnly = false;
			document.all.a.style.border = "1px solid #dddddd";
			document.all.a.readOnly = false;
			document.all.e.style.border = "1px solid #dddddd";
			document.all.e.readOnly = false;
			document.all.dp.style.border = "1px solid #dddddd";
			document.all.dp.readOnly = false;
			// -------------Ÿ����ǥ--------------
			document.all.ab.style.border = "1px solid #dddddd";
			document.all.ab.readOnly = false;
			document.all.r.style.border = "1px solid #dddddd";
			document.all.r.readOnly = false;
			document.all.h.style.border = "1px solid #dddddd";
			document.all.h.readOnly = false;
			document.all.twoBase.style.border = "1px solid #dddddd";
			document.all.twoBase.readOnly = false;
			document.all.thirdBase.style.border = "1px solid #dddddd";
			document.all.thirdBase.readOnly = false;
			document.all.hr.style.border = "1px solid #dddddd";
			document.all.hr.readOnly = false;
			document.all.rbi.style.border = "1px solid #dddddd";
			document.all.rbi.readOnly = false;
			document.all.bb.style.border = "1px solid #dddddd";
			document.all.bb.readOnly = false;
			document.all.so.style.border = "1px solid #dddddd";
			document.all.so.readOnly = false;
			document.all.sb.style.border = "1px solid #dddddd";
			document.all.sb.readOnly = false;
			document.all.cs.style.border = "1px solid #dddddd";
			document.all.cs.readOnly = false;
			// -------------������ǥ--------------
			document.all.w.style.border = "1px solid #dddddd";
			document.all.w.disabled = false;
			document.all.l.style.border = "1px solid #dddddd";
			document.all.l.disabled = false;
			document.all.hold.style.border = "1px solid #dddddd";
			document.all.hold.disabled = false;
			document.all.sv.style.border = "1px solid #dddddd";
			document.all.sv.disabled = false;
			document.all.svo.style.border = "1px solid #dddddd";
			document.all.svo.disabled = false;
			document.all.ip.style.border = "1px solid #dddddd";
			document.all.ip.readOnly = false;
			document.all.pitcherH.style.border = "1px solid #dddddd";
			document.all.pitcherH.readOnly = false;
			document.all.pitcherR.style.border = "1px solid #dddddd";
			document.all.pitcherR.readOnly = false;
			document.all.pitcherHr.style.border = "1px solid #dddddd";
			document.all.pitcherHr.readOnly = false;
			document.all.pitcherBb.style.border = "1px solid #dddddd";
			document.all.pitcherBb.readOnly = false;
			document.all.pitcherSo.style.border = "1px solid #dddddd";
			document.all.pitcherSo.readOnly = false;

			document.all.btInsOnclick.style.display = "inline";
			document.all.btOnclick.style.display = "none";
		}
		function bt_ins_onclick() {//n��ư��������(�б�����+�ʱ�ȭ)
			/* var b = document.all.a.value;
			alert("�Է� ������ �ʱ�ȭ �˴ϴ�"); */
			if (confirm("�Է� ������ �ʱ�ȭ �˴ϴ�") == true) { //Ȯ��
				document.all.a.value;
			} else { //���
				return;
			}
			document.all.btInsOnclick.style.display = "none";
			document.all.btOnclick.style.display = "inline";
			/* document.all.g.style.border = "0px";
			document.all.g.disabled = true; */
			document.all.gs.style.border = "0px";
			document.all.gs.disabled = true;
			document.all.positionToday.style.border = "0px";
			document.all.positionToday.disabled = true;
			// -------------������ǥ--------------
			document.all.inn.style.border = "0px";
			document.all.inn.readOnly = true;
			document.all.tc.style.border = "0px";
			document.all.tc.readOnly = true;
			document.all.po.style.border = "0px";
			document.all.po.readOnly = true;
			document.all.a.style.border = "0px";
			document.all.a.readOnly = true;
			document.all.e.style.border = "0px";
			document.all.e.readOnly = true;
			document.all.dp.style.border = "0px";
			document.all.dp.readOnly = true;
			// -------------Ÿ����ǥ--------------
			document.all.ab.style.border = "0px";
			document.all.ab.readOnly = true;
			document.all.r.style.border = "0px";
			document.all.r.readOnly = true;
			document.all.h.style.border = "0px";
			document.all.h.readOnly = true;
			document.all.twoBase.style.border = "0px";
			document.all.twoBase.readOnly = true;
			document.all.thirdBase.style.border = "0px";
			document.all.thirdBase.readOnly = true;
			document.all.hr.style.border = "0px";
			document.all.hr.readOnly = true;
			document.all.rbi.style.border = "0px";
			document.all.rbi.readOnly = true;
			document.all.bb.style.border = "0px";
			document.all.bb.readOnly = true;
			document.all.so.style.border = "0px";
			document.all.so.readOnly = true;
			document.all.sb.style.border = "0px";
			document.all.sb.readOnly = true;
			document.all.cs.style.border = "0px";
			document.all.cs.readOnly = true;
			// -------------������ǥ--------------
			document.all.w.style.border = "0px";
			document.all.w.disabled = true;
			document.all.l.style.border = "0px";
			document.all.l.disabled = true;
			document.all.hold.style.border = "0px";
			document.all.hold.disabled = true;
			document.all.sv.style.border = "0px";
			document.all.sv.disabled = true;
			document.all.svo.style.border = "0px";
			document.all.svo.disabled = true;
			document.all.ip.style.border = "0px";
			document.all.ip.readOnly = true;
			document.all.pitcherH.style.border = "0px";
			document.all.pitcherH.readOnly = true;
			document.all.pitcherR.style.border = "0px";
			document.all.pitcherR.readOnly = true;
			document.all.pitcherHr.style.border = "0px";
			document.all.pitcherHr.readOnly = true;
			document.all.pitcherBb.style.border = "0px";
			document.all.pitcherBb.readOnly = true;
			document.all.pitcherSo.style.border = "0px";
			document.all.pitcherSo.readOnly = true;

			document.getElementById("playerstat").reset();
		}
		function resetForm() {

		}
	</script>
</body>
</html> --%>