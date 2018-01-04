package baseball.login;

import java.io.FileOutputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import baseball.controller.SubControll;
import baseball.member.model.MemberRepository;
import baseball.member.model.MemberVo;
import baseball.model.PathData;

@Service
public class Login implements SubControll {

	@Resource
	PathData data;

	@Resource
	MemberRepository dao;

	MemberVo vo;

	@Override
	public void execute() {

		// TODO Auto-generated method stub

		System.out.println("++++++++++++++++login ����ťƮ ���Լ��� data : " + data + " //----// data.getDd() : " + data.getDd()
				+ " //----// data.getService() : " + data.getService());
		vo = (MemberVo) data.getDd();
		System.out.println("vo : "+vo);
		switch (data.getService()) {
		
		case "idFind":
			idFind();
		break;
		
		case "pwFind":
			pwFind();
		break;
		
		}
		
	}

	void idFind() {
		System.out.println("���� �̸� : " + vo.getName());
		System.out.println("���� ��ȭ��ȣ : " + vo.getPhone());
		MemberVo fvo = dao.findId(vo); 
		if (fvo != null) {
			data.setDd(fvo);
		}
		System.out.println("ã�� �����ü fvo : "+fvo);
	}
	
	void pwFind() {
		System.out.println("���� ���̵� : " + vo.getUserid());
		System.out.println("���� �̸� : " + vo.getName());
		System.out.println("���� ��ȭ��ȣ : " + vo.getPhone());
		MemberVo fvo = dao.findId(vo); 
		if (fvo != null) {
			data.setDd(fvo);
		}
		System.out.println("ã�� �����ü fvo : "+fvo);
	}
}
