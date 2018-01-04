package baseball.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import baseball.info.model.InfoVo;
import baseball.model.CreateMenu;
import baseball.model.PathData;
import baseball.player.model.PlayerStatCareerVo;
import baseball.player.model.PlayerStatVo;
import baseball.player.model.PlayerVo;
import baseball.schedule.model.ScheduleVo;
import baseball.team.model.TeamVo;

@Controller
@RequestMapping("pathInfo/schedule/{cate2}/{service}")
public class ScheduleController {

	@Resource
	MyProvider provider;

	@Resource
	PathData data;

	@ModelAttribute("kindArr")
	public ArrayList<String[]> kindArr() {
		ArrayList<String[]> res = new ArrayList<>();
		res.add(new String[] { "playerName", "선수이름" });
		res.add(new String[] { "teamId", "소속팀" });
		res.add(new String[] { "content", "내용" });

		return res;

	}

	@ModelAttribute("data")
	PathData data(@PathVariable String cate2, @PathVariable String service, TeamVo TeamVo,
			PlayerVo PlayerVo, ScheduleVo ScheduleVo, PlayerStatVo PlayerStatVo, PlayerStatCareerVo PlayerStatCareerVo,
			InfoVo InfoVo, /// 각 카테고리별 bean을 가져옴////메인메뉴에 들어올넘들에쓰일vo
			HttpServletRequest request) {
		data.setRedirect(false);

		ArrayList vos = new ArrayList<>(); /// bean들을 받음

		vos.add(PlayerVo);
		vos.add(InfoVo);
		vos.add(PlayerStatCareerVo);

		vos.add(ScheduleVo);
		vos.add(PlayerStatVo);
		// vos.add(TeamVo);// !!!!!!!!!홈은 무조건 젤 마지막으로!!!!!!!!!!!!
		// -------------------------------------------------------------------vos2
		ArrayList vos2 = new ArrayList<>();

		vos2.add(PlayerVo);
		vos2.add(InfoVo);
		vos2.add(PlayerStatCareerVo);

		vos2.add(ScheduleVo);
		vos2.add(PlayerStatVo);
		System.out.println("vos--------" + vos);

		data.setCate1("schedule");
		data.setCate2(cate2);
		data.setService(service);

		data.setCate1Temp("schedule");
		data.setServiceTemp(service);

		data.setRequest(request);
		System.out.println("PathController의 data - " + data);
		menu();
		String voName;
		/*
		 * if (cate1.equals("home")) { voName = "baseball.team.model.TeamVo"; for
		 * (Object obj : vos) {
		 * 
		 * data.setDd(obj); /// 맞으면 data 에 넣음 System.out.println("@@@@@@@@@@@@@" + //
		 * data.getDd());
		 * 
		 * } }
		 */

		if (/*service.equals("gameRegisterDetail") || */service.equals("detailTodayStat") ||
				service.equals("todayRegister")
				|| service.equals("viewTodayStat")) {

			voName = "baseball.player.model.PlayerStatVo";
			for (Object obj : vos) {

				data.setDd(obj); // data.setDd2(obj); /// 맞으면 data 에 넣음
				System.out.println("@@@@@@@@@@@@@1" + data.getDd2());

			}
		}

		else if (service.equals("gameRegisterView")) {
			voName = "baseball.player.model.PlayerStatVo";
			for (Object obj2 : vos) {

				// data.setDd(obj); data.setDd2(obj2); /// 맞으면 data 에 넣음
				System.out.println("@@@@@@@@@@@@@1" + data.getDd2());
			}
		} else {
			voName = "baseball.schedule.model.ScheduleVo";
			// vo로가는길
			//// 현재 페이지에 필요한 bean 클래스명을 만듬 //실제 주소는 cate1+service //vo는 항상 모델패키지 안에 있어야
			// 함!!!!!!!
			System.out.println("voName - " + voName);
			for (Object obj : vos) {
				if (obj.getClass().getName().equals(voName)) {
					//// bean의 클래스 이름과 현재 페이지에 필요한 bean 클래스이름과 비교

					data.setDd(obj);

					System.out.println("@@@@@@@@@@@@@2" + data.getDd2());
					// data.setDd2(obj);
					/// 맞으면 data 에 넣음
				}
			}
			for (Object obj2 : vos2) {
				if (obj2.getClass().getName().equals("baseball.player.model.PlayerStatVo")) {
					//// bean의 클래스 이름과 현재 페이지에 필요한 bean 클래스이름과 비교

					data.setDd2(obj2);
					System.out.println("@@@@@@@@@@@@@2" + data.getDd2());
					// data.setDd2(obj);
					/// 맞으면 data 에 넣음
				}
			}
		}

		System.out.println("최종경로" + voName);
		System.out.println("패스데이터의 dd - " + data);

		//// mainData

		SubControll control = provider.getContext().getBean("schedule", SubControll.class);
		//// SubCotroll 을 getBean 으로 가져옴
		control.execute();
		/// 실행시킴
		System.out.println("실행하냐??????" + data);
		return data;

	}

	void menu() {
		new CreateMenu(data);
	}

	@RequestMapping
	String mapping() {

		String res = "pathInfo/template2";
		if (data.isRedirect()) { //// redirect에 따른 redirect or forward 선택
			res = data.getPath();
		}

		return res;
	}

}
