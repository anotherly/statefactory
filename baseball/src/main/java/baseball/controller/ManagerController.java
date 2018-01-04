package baseball.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import baseball.board.model.BoardVo;
import baseball.info.model.InfoVo;
import baseball.member.model.MemberVo;
import baseball.model.CreateMenu;

import baseball.model.PathData;
import baseball.player.model.PlayerStatCareerVo;
import baseball.player.model.PlayerStatVo;
import baseball.player.model.PlayerVo;
import baseball.schedule.model.ScheduleVo;
import baseball.team.model.TeamVo;
import baseball.ticket.model.TicketVo;

@Controller
@RequestMapping("pathInfo/manager/{cate2}/{service}")
public class ManagerController {

	@Resource
	MyProvider provider;

	@Resource
	PathData data;

	@ModelAttribute("data") // data ��� �̸����� ���� �ְ���� jsp��
	PathData data(@PathVariable String cate2, @PathVariable String service, 
			MemberVo memberVo, TicketVo ticketVo,
			BoardVo boardVo, TeamVo teamVo,
			HttpServletRequest request) {
		System.out.println("@@@@@@@@@@@@@@@@�Ŵ�����Ʈ�ѷ��� ����Ÿ �޼ҵ� �ʱ�����");

		System.out.println("���� ���� ����Ÿ : " + data.getDd());
		System.out.println("�迭 �ֱ��� ���vo�� : " + memberVo);

		data.setRedirect(false);

		ArrayList<Object> vos = new ArrayList<>(); /// bean���� ����
		vos.add(teamVo);
		vos.add(memberVo);
		vos.add(ticketVo);
		vos.add(boardVo);

		data.setCate1("manager");
		data.setCate2(cate2);
		data.setService(service);
		data.setRequest(request);

		// System.out.println("�н���Ʈ�ѷ��� data - " + data);

		String voName;
		// ó�� Ȩ ȭ���϶� ������ �ҷ��´�

		voName = "baseball." + cate2 + ".model." + cate2.substring(0, 1).toUpperCase() + cate2.substring(1) + "Vo";
		System.out.println("voName �� : " + voName);
		for (Object obj : vos) {
			if (obj.getClass().getName().equals(voName)) {
				data.setDd(obj);
			}
		}

		System.out.println("��Ʈ�ѷ����� �Ŵ��� �϶� cate2 : " + cate2);
		//// mainData
		SubControll control = provider.getContext().getBean(cate2, SubControll.class);
		//// SubCotroll �� getBean ���� ������
		control.execute();
		/// �����Ŵ
		System.out.println("----------------------------------------");
		System.out.println("�׽�ťƮ �ϰ��� ���vo�� : " + memberVo);
		System.out.println("�������� ��Dd �� �� :" + data.getDd());
		
		System.out.println("����ī��2 : " + cate2);
		System.out.println("���� service : " + service);
		System.out.println("�н��������� dd - " + data);
		System.out.println("��Ʈ�ηѷ��� ����Ÿ �޼ҵ� ����");

		System.out.println("�޴� ��ġ�� �� ����Ÿ : " + data.getDd());
		menu();
		System.out.println("�޴� ��ġ�� ����Ÿ : " + data.getDd());

		return data;

	}// pathData data

	void menu() {
		new CreateMenu(data);

	}

	// ���⼭ jsp�� ������
	@RequestMapping
	String mapping() {
		System.out.println("��Ʈ�ѷ��� ����");
		String res = "pathInfo/template3";
		if (data.isRedirect()) { //// redirect�� ���� redirect or forward ����
			System.out.println("�Ŵ�����Ʈ�ѷ��� �����̷�Ʈ if�� ����");
			res = data.getPath();
		}

		return res;
	}

}
