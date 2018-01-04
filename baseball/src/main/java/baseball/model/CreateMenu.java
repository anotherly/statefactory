package baseball.model;

import java.util.ArrayList;
import java.util.HashMap;

public class CreateMenu {

//	@Resource
//	PathData data;
	
	public CreateMenu(PathData data) {
		// -------------------------������α���/ȸ�����Ը޴������������--------------------------
		ArrayList<Menu> firstMenu = new ArrayList<>();
		firstMenu.add(new Menu("login", "�α���", "loginSub"));// cate1, cate2, service---�ڹٿ��� �޾ƿö��� �ǹ�
		firstMenu.add(new Menu("join", "ȸ������", "joinSub"));// name, korName, url-----jsp�� �������� �ǹ�

		// -------------------------������ž �޴������������--------------------------
		ArrayList<Menu> topMenu = new ArrayList<>();
		
		
		topMenu.add(new Menu("ticket", "����", "reservation"));
		topMenu.add(new Menu("board", "�Խ���", "boardinfo"));
		topMenu.add(new Menu("team", "��", "notice"));
		topMenu.add(new Menu("player", "���", "stat"));
		topMenu.add(new Menu("schedule", "����/���", "notice"));
		topMenu.add(new Menu("info", "����", "notice"));

		
		ArrayList<Menu> topMenu2 = new ArrayList<>();
		
		topMenu2.add(new Menu("player", "����", "list"));
		topMenu2.add(new Menu("playerBat", "Ÿ��", "list"));
		topMenu2.add(new Menu("playerDef", "����", "list"));

		// -------------------------����������� �޴��������--------------------------
		ArrayList<Menu> managerMenu = new ArrayList<>();
		managerMenu.add(new Menu("manager", "ȸ�� ����", "member"));// name, korName, url-----jsp�� �������� �ǹ�
		managerMenu.add(new Menu("manager", "���� ����", "team"));// name, korName, url-----jsp�� �������� �ǹ�
		managerMenu.add(new Menu("manager", "���� ����", "ticket"));// name, korName, url-----jsp�� �������� �ǹ�
		managerMenu.add(new Menu("manager", "��� ����", "bill"));// name, korName, url-----jsp�� �������� �ǹ�
		
		// -------------------------�����鼭��޴������������--------------------------
		HashMap<String, ArrayList<Menu>> subMenu = new HashMap<>();

		subMenu.put("home", new ArrayList<>());

		subMenu.put("manager", new ArrayList<>());

		subMenu.put("board", new ArrayList<>());
		subMenu.put("ticket", new ArrayList<>());

		subMenu.put("schedule", new ArrayList<>());
		subMenu.put("player", new ArrayList<>());
		subMenu.put("info", new ArrayList<>());
		
		/////////////////////// ������ �޴� ////////////////////////////////////////

		subMenu.get("manager").add(new Menu("team", "���� ����Ʈ", "list"));

		subMenu.get("manager").add(new Menu("member", "ȸ�� ���", "list"));
		subMenu.get("manager").add(new Menu("member", "��ȸ�� ����", "list"));
		subMenu.get("manager").add(new Menu("member", "���� ������", "list"));

		subMenu.get("manager").add(new Menu("ticket", "���� ��Ȳ", "list"));

		subMenu.get("manager").add(new Menu("bill", "�Ϻ� ��ȸ", "list"));
		subMenu.get("manager").add(new Menu("bill", "�ְ� ��ȸ", "list"));
		subMenu.get("manager").add(new Menu("bill", "���� ��ȸ", "list"));

		////////////////////////////////////////////////////////////////////////
		subMenu.get("home").add(new Menu("home", "������", "first"));

		subMenu.get("board").add(new Menu("boardinfo", "��������", "list"));
		subMenu.get("board").add(new Menu("boardfree", "�����Խ���", "list"));
		subMenu.get("board").add(new Menu("boardqna", "������ �亯", "list"));
		subMenu.get("board").add(new Menu("boardfnq", "���ֹ�������", "list"));
		subMenu.get("board").add(new Menu("boardmessage", "����", "list"));
		
		subMenu.get("ticket").add(new Menu("reservation", "����", "list"));

		subMenu.get("schedule").add(new Menu("seasonSchedule", "��������", "list"));
		subMenu.get("schedule").add(new Menu("teamSchedule", "��������", "list"));
		subMenu.get("schedule").add(new Menu("gameSchedule", "����������", "gameRegister"));
		subMenu.get("schedule").add(new Menu("seasonSchedule", "��������Է�", "gameInfoRegister"));

		subMenu.get("player").add(new Menu("stat", "�������", "list"));// �������
		subMenu.get("player").add(new Menu("stat", "�����", "teamStatList"));// ��������������ֱ�
		subMenu.get("player").add(new Menu("stat", "�����Ǳ�� �Է�", "todayRegister"));

		subMenu.get("info").add(new Menu("notice", "��ŷ", "list"));
		subMenu.get("info").add(new Menu("notice", "��������", "playerList"));
		subMenu.get("info").add(new Menu("notice", "������", "teamList"));
//--------------------------------------------------------------------------------
		
		HashMap<String, ArrayList<Menu>> subMenu2 = new HashMap<>();

		subMenu2.put("home", new ArrayList<>());
		
		subMenu2.put("schedule", new ArrayList<>());
		subMenu2.put("player", new ArrayList<>());
		subMenu2.put("info", new ArrayList<>());

		subMenu2.get("home").add(new Menu("home", "������", "first"));

		// ���� �߰��� �޴��� �н�����Ÿ�� �߰��Ѵ�.
		data.setManagerMenu(managerMenu);
		data.setLoginMenu(firstMenu);
		
		data.setTopMenu(topMenu);
		data.setSubMenu(subMenu.get(data.getCate1()));
		
		data.setTopMenu2(topMenu2);
		data.setSubMenu2(subMenu2.get(data.getCate1()));
	}
	
}
