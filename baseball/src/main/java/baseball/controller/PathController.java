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
@RequestMapping("pathInfo/{cate1}/{cate2}/{service}")
public class PathController {

	@Resource
	MyProvider provider;

	@Resource
	PathData data;
	
	@ModelAttribute("data") // data ��� �̸����� ���� �ְ���� jsp��
	PathData data(@PathVariable String cate1, @PathVariable String cate2, @PathVariable String service, 
		MemberVo memberVo, 
		TicketVo ticketVo, 
		BoardVo boardVo, 
		TeamVo teamVo,

		HttpServletRequest request) {
		System.out.println("@@@@@@@@@@@@@@@@�н���Ʈ�ѷ� �ʱ�����");

		System.out.println("���� ���� ����Ÿ : "+ data.getDd());
		System.out.println("�迭 �ֱ��� ���vo�� : "+memberVo);
		
		data.setRedirect(false);

		ArrayList<Object> vos = new ArrayList<>(); /// bean���� ����
		vos.add(teamVo);		
		vos.add(memberVo);
		vos.add(ticketVo);
		vos.add(boardVo);

		
//		System.out.println("�迭 �ְ� �� ���vo�� : "+MemberVo);
		
		data.setCate1(cate1);
		data.setCate2(cate2);
		data.setService(service);
		data.setRequest(request);

//		System.out.println("�н���Ʈ�ѷ��� data - " + data);

		String voName;
		// ó�� Ȩ ȭ���϶� ������ �ҷ��´�

		if (cate1.equals("home")) {
			voName = "baseball.team.model.TeamVo";
			for (Object obj : vos) {
				if(obj.getClass().getName().equals(voName)) {
					
					System.out.println("���������� �ֱ���  ����Ÿ : "+ data.getDd());
					System.out.println("������ �ֱ��� ���vo�� : "+memberVo);
					data.setDd(obj);
					System.out.println("���������� �ְ� ���� ����Ÿ : "+ data.getDd());
					System.out.println("������ �ְ��� ���vo�� : "+memberVo);
					
				}
				/// ������ data �� ����
			}
		//�α��� ȸ�����Խ� ������̳� �����ڰ��� �ҷ��´�
		}else if (cate1.equals("login")||cate1.equals("join")){
			voName = "baseball.member.model.MemberVo";
			for (Object obj : vos) {
				if(obj.getClass().getName().equals(voName)) {
					System.out.println("���������� �ֱ���  ����Ÿ : "+ data.getDd());
					System.out.println("������ �ֱ��� ���vo�� : "+memberVo);
					data.setDd(obj);
					System.out.println("���������� �ְ� ���� ����Ÿ : "+ data.getDd());
					System.out.println("������ �ְ��� ���vo�� : "+memberVo);
				}
			}
		}else if (cate1.contains("manager")){//������ �϶�
			String className=cate1.substring(7);
			voName = "baseball."+className.substring(0,1).toLowerCase()+className.substring(1)+".model."+className+ "Vo";
			System.out.println("��Ʈ�ѷ����� �Ŵ��� �϶� voName : "+voName);
			for (Object obj : vos) {
				if(obj.getClass().getName().equals(voName)) {
					System.out.println("���������� �ֱ���  ����Ÿ : "+ data.getDd());
					System.out.println("������ �ֱ��� ���vo�� : "+memberVo);
					data.setDd(obj);
					System.out.println("���������� �ְ� ���� ����Ÿ : "+ data.getDd());
					System.out.println("������ �ְ��� ���vo�� : "+memberVo);
				}
			}
			cate1="manager";
			
//			}else if (service.equals("detailTodayStat") || service.equals("todayRegister") || service.equals("viewTodayStat")) {
//				voName = "baseball.player.model.PlayerStatVo";
//				for (Object obj : vos) {
//
//					data.setDd(obj);
//					/// ������ data �� ����
//					System.out.println("@@@@@@ ��Ʈ�ѷ��� 3 �������϶� @@@@@@@" + data.getDd());
//
//				}
//			} else if(cate1.equals("player")) {
//				voName = "baseball." + cate1 + ".model." + cate1.substring(0, 1).toUpperCase() + cate1.substring(1) + "Vo";
//				System.out.println("@@@@@@ ��Ʈ�ѷ��� ������@@@@@@@" + data.getDd());
//				// vo�ΰ��±�
//				//// ���� �������� �ʿ��� bean Ŭ�������� ���� //���� �ּҴ� cate1+service //vo�� �׻� ����Ű�� �ȿ� �־��
//				// ��!!!!!!!
//				System.out.println("voName - " + voName);
//				for (Object obj : vos) {
//					if (obj.getClass().getName().equals(voName)) {
//						//// bean�� Ŭ���� �̸��� ���� �������� �ʿ��� bean Ŭ�����̸��� ��
//
//						data.setDd(obj);
//						/// ������ data �� ����
//					}
//				}
			
		}else {
			voName = "baseball." + cate1 + ".model." + cate1.substring(0, 1).toUpperCase() + cate1.substring(1) + "Vo";
			System.out.println("voName �� : " + voName);
			for (Object obj : vos) {
				if (obj.getClass().getName().equals(voName)) {
					System.out.println("���������� �ֱ���  ����Ÿ : "+ data.getDd());
					System.out.println("������ �ֱ��� ���vo�� : "+memberVo);
					data.setDd(obj);
					System.out.println("���������� �ְ� ���� ����Ÿ : "+ data.getDd());
					System.out.println("������ �ְ��� ���vo�� : "+memberVo);
				}
			}
		}
		System.out.println("��Ʈ�ѷ����� �Ŵ��� �϶� cate1 : "+cate1);
		//// mainData
		SubControll control = provider.getContext().getBean(cate1, SubControll.class);
		//// SubCotroll �� getBean ���� ������
		control.execute();
		/// �����Ŵ
		System.out.println("----------------------------------------");
		System.out.println("�׽�ťƮ �ϰ��� ���vo�� : " + memberVo);
		System.out.println("�������� ��Dd �� �� :" + data.getDd());
		System.out.println("����ī��1 : " + cate1);
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
		String res = "pathInfo/template";
		if (data.isRedirect()) { //// redirect�� ���� redirect or forward ����
			System.out.println("��Ʈ�ѷ��� �����̷�Ʈ if�� ����");
			res = data.getPath();
		}

		return res;
	}

}
