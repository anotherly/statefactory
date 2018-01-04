package baseball.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import baseball.member.model.MemberRepository;
import baseball.member.model.MemberVo;
import baseball.model.PathData;


@Controller
public class SessionController {
	
	@Resource
	PathData data;
	
	@Resource
	MemberRepository dao;
	
	MemberVo vo;
	
	//�α��� â���� id pw�Է��ϰ� Ȯ�ι�ư ������ ��
	@RequestMapping("pathInfo/login/loginSub/loginCheck")
	String loginCheck(HttpSession session, MemberVo mvo) {
		System.out.println("������Ʈ�ѷ� �� �α���üũ �޼ҵ��� mvo : "+mvo);
		data.setDd(mvo);
		vo = (MemberVo) data.getDd();
		System.out.println("���� ���̵� : " + vo.getUserid());
		System.out.println("���� �н����� : " + vo.getPassword());
		MemberVo fvo = dao.idPwChk(vo);
		String url="";
		if (fvo == null) {
			
			System.out.println("ȸ�� ������ ���ų� ��ġ���� ������");
			url="redirect:loginFail";
//			session.setAttribute("title", "�������� �ʴ� ���̵��̰ų� ��й�ȣ�� Ʋ�Ƚ��ϴ�.");
			
		} else {
			System.out.println("ȸ�������� ������");
			url="redirect:../../home/notice/first";
			session.setAttribute("loginVo",fvo );
		}
		return url;
	}
	
	//�α׾ƿ��� �õ��� ��
	@RequestMapping("pathInfo/login/loginSub/logout")
	String delete(HttpSession session) {
//		vo = (MemberVo) data.getDd();
		System.out.println("�α���Ŭ������ �α׾ƿ� �޼ҵ�");
			
		data.setRedirect(true);// ������ ��Ʈ�ѷ� ���ο��� �Ʒ� ������ �ּҷ� ����
		String url = "redirect:../../login/loginSub/first";
//		session.setAttribute("title", "�α׾ƿ� �Ǿ����ϴ�.");
		session.invalidate();
		
		return url;
	}
}