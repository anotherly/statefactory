package baseball.member;

import java.io.File;
import java.io.FileOutputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import baseball.controller.SubControll;
import baseball.member.model.MemberRepository;
import baseball.member.model.MemberVo;
import baseball.model.PathData;

@Service
public class Member implements SubControll {

	@Resource
	PathData data;

	@Resource
	MemberRepository dao;

	MemberVo vo;

	@Override
	public void execute() {
		System.out.println("+++++++++++++++++���Ŭ���� ���Լ���:" + data);
		
		vo = (MemberVo) data.getDd();
		System.out.println("���vo�� vo��: " + vo);
//		System.out.println("���� ��� mvo�� vo��: " + data.getMvo());
		
		switch (data.getService()) {

//		case "memberList":
//			list();
//			break;
//			
		case "detail":
			System.out.println("���̽� ���������");
			detail(vo);
			break;
			
		case "modify":
			System.out.println("���̽� ���������");
			modify(vo);
			break;
			
		case "deleteReg":
			delete(vo);
			break;

		case "modifyReg":
			modifyReg(vo);
			break;

		case "fileDelete":
			fileDelete(vo);
			break;
			
		case "join":
			insert(vo);
			break;
		}
	}

	public void detail(MemberVo vo) {
		System.out.println("�����Ͽ��� �޾ƿ� vo�� �� : "+vo);
		MemberVo fvo = dao.detail(vo);
		System.out.println(fvo);
		data.setDd(fvo);
	}

	public void list() {
		data.setDd(dao.list());
	}

	public void delete(MemberVo vo) {
		String url = "redirect:memberFail";
		
		if (dao.idPwChk(vo) != null) {//�ش� id�� pw�� �ش��ϴ� �ο��� �����Ѵٸ�
			System.out.println("���̵� �н����� üũ�� �ùٸ��ԵǼ� ����");
			fileDelete(vo);
			dao.delete(vo);
			url = "redirect:../../home/notice/first";
		}
		
		data.setRedirect(true);
		data.setPath(url);
		
	}

	public void insert(MemberVo vo) {
		System.out.println("����� �μ�Ʈ�� vo:"+vo);
		fileupload(vo, data.getRequest());
		dao.insert(vo);
		data.setRedirect(true);
		data.setPath("redirect:../../login/loginSub/first");
		ModelAndView mav = new ModelAndView();
		mav.addObject("title","ȸ�����Կ� �����ϼ̽��ϴ� �����մϴ�!");
	}

	public void modify(MemberVo vo) {
		data.setDd(dao.detail(vo));
	}

	void modifyReg(MemberVo vo) {
		System.out.println("��� Ŭ������ ������� �޼ҵ� ����");
		String url = "redirect:memberFail";
		
		vo.setOriname(vo.getFile().getOriginalFilename());
		vo.setSysname(vo.getFile().getOriginalFilename());
		vo.setGrade("user");
		if (dao.modify(vo)) {// ���������� �ش� ��й�ȣ�� ȸ���� �����Ѵٸ�
			System.out.println("������� �� ����� vo��ü�� �����Ѵٸ�");
			fileupload(vo, data.getRequest());
			url = "redirect:detail?userid=" + vo.getUserid();
			data.setDd(vo);
//			data.setMvo(vo);
		}
		data.setRedirect(true);
		data.setPath(url);
	}
	
	public void fileupload(MemberVo vo, HttpServletRequest request) {
		// ���� ���ε� �޼ҵ� !!!!!!!!!!!!!! upfile = ��������,
		// request = ���ε��� ��������
		System.out.println("���Ͼ��ε� �޼ҵ� ���Լ���");
		FileOutputStream fos;
		vo.setOriname(vo.getFile().getOriginalFilename());
		vo.setSysname(vo.getFile().getOriginalFilename());
		System.out.println("������ �������� : "+vo.getFile().getOriginalFilename());
		try {
			String outPath = request.getRealPath("/resources/up");
			outPath = "C:\\FINAL\\baseball\\src\\main\\webapp\\resources\\memberPhoto";
			String realPath = outPath + "\\" + vo.getFile().getOriginalFilename();
			File file = new File(realPath);
			if (file.exists()) {
				int count = 0;
				int dot = vo.getOriname().lastIndexOf(".");
				System.out.println("���Ŭ���� ���Ͼ��ε� �޼ҵ� vo.getOriname(): "+vo.getOriname());
				String nameonly = vo.getOriname().substring(0, dot);
				String hwak = vo.getOriname().substring(dot);

				while (file.exists()) {
					count++;
					vo.setSysname(nameonly + "_" + count + hwak);
					realPath = outPath + "\\" + vo.getSysname();

					file = new File(realPath);
				}
			}

			fos = new FileOutputStream(realPath);
			fos.write(vo.getFile().getBytes());
			fos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	void fileDelete(MemberVo vo) { // ���ϻ����ϱ�!

		String fileName = dao.detail(vo).getSysname();
		System.out.println(fileName);

		if (fileName != null && !fileName.equals("") && !fileName.equals("null")) {
			System.out.println("������!");
			File ff = new File(
					"C:\\FINAL\\baseball\\src\\main\\webapp\\resources\\memberPhoto" + fileName);
			ff.delete();
			dao.fileDelete(vo); // �������� ���ϻ���!!
		}

	}

}
