package baseball.model;

import java.util.ArrayList;
import java.util.HashMap;

public class CreateMenu {

//	@Resource
//	PathData data;
	
	public CreateMenu(PathData data) {
		// -------------------------↓↓↓↓↓로그인/회원가입메뉴구성↓↓↓↓↓↓--------------------------
		ArrayList<Menu> firstMenu = new ArrayList<>();
		firstMenu.add(new Menu("login", "로그인", "loginSub"));// cate1, cate2, service---자바에서 받아올때의 의미
		firstMenu.add(new Menu("join", "회원가입", "joinSub"));// name, korName, url-----jsp로 보낼때의 의미

		// -------------------------↓↓↓↓↓탑 메뉴구성↓↓↓↓↓↓--------------------------
		ArrayList<Menu> topMenu = new ArrayList<>();
		
		
		topMenu.add(new Menu("ticket", "예매", "reservation"));
		topMenu.add(new Menu("board", "게시판", "boardinfo"));
		topMenu.add(new Menu("team", "팀", "notice"));
		topMenu.add(new Menu("player", "기록", "stat"));
		topMenu.add(new Menu("schedule", "일정/결과", "notice"));
		topMenu.add(new Menu("info", "정보", "notice"));

		
		ArrayList<Menu> topMenu2 = new ArrayList<>();
		
		topMenu2.add(new Menu("player", "투구", "list"));
		topMenu2.add(new Menu("playerBat", "타격", "list"));
		topMenu2.add(new Menu("playerDef", "수비", "list"));

		// -------------------------↓↓↓↓↓관리자 메뉴↓↓↓↓↓↓--------------------------
		ArrayList<Menu> managerMenu = new ArrayList<>();
		managerMenu.add(new Menu("manager", "회원 관리", "member"));// name, korName, url-----jsp로 보낼때의 의미
		managerMenu.add(new Menu("manager", "구단 관리", "team"));// name, korName, url-----jsp로 보낼때의 의미
		managerMenu.add(new Menu("manager", "예매 관리", "ticket"));// name, korName, url-----jsp로 보낼때의 의미
		managerMenu.add(new Menu("manager", "장부 관리", "bill"));// name, korName, url-----jsp로 보낼때의 의미
		
		// -------------------------↓↓↓↓↓서브메뉴구성↓↓↓↓↓↓--------------------------
		HashMap<String, ArrayList<Menu>> subMenu = new HashMap<>();

		subMenu.put("home", new ArrayList<>());

		subMenu.put("manager", new ArrayList<>());

		subMenu.put("board", new ArrayList<>());
		subMenu.put("ticket", new ArrayList<>());

		subMenu.put("schedule", new ArrayList<>());
		subMenu.put("player", new ArrayList<>());
		subMenu.put("info", new ArrayList<>());
		
		/////////////////////// 관리자 메뉴 ////////////////////////////////////////

		subMenu.get("manager").add(new Menu("team", "구단 리스트", "list"));

		subMenu.get("manager").add(new Menu("member", "회원 목록", "list"));
		subMenu.get("manager").add(new Menu("member", "블랙회원 관리", "list"));
		subMenu.get("manager").add(new Menu("member", "메일 보내기", "list"));

		subMenu.get("manager").add(new Menu("ticket", "예약 현황", "list"));

		subMenu.get("manager").add(new Menu("bill", "일별 조회", "list"));
		subMenu.get("manager").add(new Menu("bill", "주간 조회", "list"));
		subMenu.get("manager").add(new Menu("bill", "월간 조회", "list"));

		////////////////////////////////////////////////////////////////////////
		subMenu.get("home").add(new Menu("home", "팀정보", "first"));

		subMenu.get("board").add(new Menu("boardinfo", "공지사항", "list"));
		subMenu.get("board").add(new Menu("boardfree", "자유게시판", "list"));
		subMenu.get("board").add(new Menu("boardqna", "질문과 답변", "list"));
		subMenu.get("board").add(new Menu("boardfnq", "자주뭍는질문", "list"));
		subMenu.get("board").add(new Menu("boardmessage", "쪽지", "list"));
		
		subMenu.get("ticket").add(new Menu("reservation", "예매", "list"));

		subMenu.get("schedule").add(new Menu("seasonSchedule", "시즌일정", "list"));
		subMenu.get("schedule").add(new Menu("teamSchedule", "팀별일정", "list"));
		subMenu.get("schedule").add(new Menu("gameSchedule", "경기일정등록", "gameRegister"));
		subMenu.get("schedule").add(new Menu("seasonSchedule", "경기정보입력", "gameInfoRegister"));

		subMenu.get("player").add(new Menu("stat", "선수기록", "list"));// 폴더경로
		subMenu.get("player").add(new Menu("stat", "팀기록", "teamStatList"));// 각각폴더만들어주기
		subMenu.get("player").add(new Menu("stat", "오늘의기록 입력", "todayRegister"));

		subMenu.get("info").add(new Menu("notice", "랭킹", "list"));
		subMenu.get("info").add(new Menu("notice", "선수정보", "playerList"));
		subMenu.get("info").add(new Menu("notice", "팀정보", "teamList"));
//--------------------------------------------------------------------------------
		
		HashMap<String, ArrayList<Menu>> subMenu2 = new HashMap<>();

		subMenu2.put("home", new ArrayList<>());
		
		subMenu2.put("schedule", new ArrayList<>());
		subMenu2.put("player", new ArrayList<>());
		subMenu2.put("info", new ArrayList<>());

		subMenu2.get("home").add(new Menu("home", "팀정보", "first"));

		// 위에 추가한 메뉴를 패스데이타에 추가한다.
		data.setManagerMenu(managerMenu);
		data.setLoginMenu(firstMenu);
		
		data.setTopMenu(topMenu);
		data.setSubMenu(subMenu.get(data.getCate1()));
		
		data.setTopMenu2(topMenu2);
		data.setSubMenu2(subMenu2.get(data.getCate1()));
	}
	
}
