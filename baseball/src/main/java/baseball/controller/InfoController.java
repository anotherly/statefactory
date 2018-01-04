package baseball.controller;

import java.util.ArrayList;
import java.util.HashMap;

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
@RequestMapping("pathInfo/info/{cate2}/{service}")
public class InfoController {

	@Resource
	MyProvider provider;

	@Resource
	PathData data;

	@ModelAttribute("kindArr")
	public ArrayList<String[]> kindArr() {
		ArrayList<String[]> res = new ArrayList<>();
		res.add(new String[] { "playerName", "�����̸�" });
		res.add(new String[] { "teamId", "�Ҽ���" });
		res.add(new String[] { "content", "����" });

		return res;

	}

	@ModelAttribute("data")
	PathData data(@PathVariable String cate2, @PathVariable String service, TeamVo TeamVo,
			PlayerVo PlayerVo, ScheduleVo ScheduleVo, PlayerStatVo PlayerStatVo, PlayerStatCareerVo PlayerStatCareerVo,
			InfoVo InfoVo, /// �� ī�װ��� bean�� ������////���θ޴��� ���óѵ鿡����vo
			HttpServletRequest request) {
		data.setRedirect(false);

		ArrayList vos = new ArrayList<>(); /// bean���� ����

		vos.add(PlayerVo);
		vos.add(InfoVo);
		vos.add(PlayerStatCareerVo);

		vos.add(ScheduleVo);
		vos.add(PlayerStatVo);
		// vos.add(TeamVo);// !!!!!!!!!Ȩ�� ������ �� ����������!!!!!!!!!!!!
		// -------------------------------------------------------------------vos2
		ArrayList vos2 = new ArrayList<>();

		vos2.add(PlayerVo);
		vos2.add(InfoVo);
		vos2.add(PlayerStatCareerVo);

		vos2.add(ScheduleVo);
		vos2.add(PlayerStatVo);
		System.out.println("vos--------" + vos);

		data.setCate1("info");
		data.setCate2(cate2);
		data.setService(service);

		data.setCate1Temp("info");
		data.setServiceTemp(service);

		data.setRequest(request);
		System.out.println("PathController�� data - " + data);
		menu();
		String voName;
		/*
		 * if (cate1.equals("home")) { voName = "baseball.team.model.TeamVo"; for
		 * (Object obj : vos) {
		 * 
		 * data.setDd(obj); /// ������ data �� ���� System.out.println("@@@@@@@@@@@@@" + //
		 * data.getDd());
		 * 
		 * } }
		 */

		if (/*service.equals("gameRegisterDetail") || */service.equals("detailTodayStat") ||
				service.equals("todayRegister")
				|| service.equals("viewTodayStat")) {

			voName = "baseball.player.model.PlayerStatVo";
			for (Object obj : vos) {

				data.setDd(obj); // data.setDd2(obj); /// ������ data �� ����
				System.out.println("@@@@@@@@@@@@@1" + data.getDd2());

			}
		}

		else if (service.equals("gameRegisterView")) {
			voName = "baseball.player.model.PlayerStatVo";
			for (Object obj2 : vos) {

				// data.setDd(obj); data.setDd2(obj2); /// ������ data �� ����
				System.out.println("@@@@@@@@@@@@@1" + data.getDd2());
			}
		} else {
			voName = "baseball.info.model.InfoVo";
			// vo�ΰ��±�
			//// ���� �������� �ʿ��� bean Ŭ�������� ���� //���� �ּҴ� cate1+service //vo�� �׻� ����Ű�� �ȿ� �־��
			// ��!!!!!!!
			System.out.println("voName - " + voName);
			for (Object obj : vos) {
				if (obj.getClass().getName().equals(voName)) {
					//// bean�� Ŭ���� �̸��� ���� �������� �ʿ��� bean Ŭ�����̸��� ��

					data.setDd(obj);

					System.out.println("@@@@@@@@@@@@@2" + data.getDd2());
					// data.setDd2(obj);
					/// ������ data �� ����
				}
			}
			for (Object obj2 : vos2) {
				if (obj2.getClass().getName().equals("baseball.player.model.PlayerStatVo")) {
					//// bean�� Ŭ���� �̸��� ���� �������� �ʿ��� bean Ŭ�����̸��� ��

					data.setDd2(obj2);
					System.out.println("@@@@@@@@@@@@@2" + data.getDd2());
					// data.setDd2(obj);
					/// ������ data �� ����
				}
			}
		}

		System.out.println("�������" + voName);
		System.out.println("�н��������� dd - " + data);

		//// mainData

		SubControll control = provider.getContext().getBean("info", SubControll.class);
		//// SubCotroll �� getBean ���� ������
		control.execute();
		/// �����Ŵ
		System.out.println("�����ϳ�??????" + data);
		return data;

	}

	void menu() {
		new CreateMenu(data);
	}

	@RequestMapping
	String mapping() {

		String res = "pathInfo/template2";
		if (data.isRedirect()) { //// redirect�� ���� redirect or forward ����
			res = data.getPath();
		}

		return res;
	}

}
