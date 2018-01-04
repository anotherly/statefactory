package baseball.player;

import java.io.FileOutputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;


import baseball.controller.SubControll;
import baseball.model.PathData;
import baseball.player.model.PlayerRepository;
import baseball.player.model.PlayerStatCareerVo;
import baseball.player.model.PlayerStatVo;
import baseball.player.model.PlayerVo;

@Service
public class Player implements SubControll {

	@Resource
	PathData data;

	@Resource
	PlayerRepository pRep;
	PlayerStatCareerVo pscvo;
	PlayerStatVo psvo;
	PlayerVo pvo;

	@Override
	public void execute() {
		System.out.println("!@!@!@!@!@!@!@!@!�÷��̾� Ŭ���� ����");
		// TODO Auto-generated method stub

		data.setServiceTemp("playerTemp");
		System.out.println("player ���Լ���:" + data);
		if(data.getService().contains("todayRegister")
				|| data.getService().contains("detailTodayStat")
				|| data.getService().contains("viewTodayStat")) {
			System.out.println("�Ծ?");
			psvo = (PlayerStatVo) data.getDd();
			
		}else {
			pvo = (PlayerVo) data.getDd();
		}
		
		
		switch (data.getService()) {
		case "list":
			list();
			break;

		/*case "view":
			view();
			break;*/
		// case "detail": view(); break;
			
			
		case "viewTodayStat":
			viewTodayStat();
			break;

		case "detail":
			reg();
			break;
			
		case "detailTodayStat":
			regTodayStat();
			break;
			
		/*case "modify":
			modify();
			break;*/
			

		/*
		 * case "detail": modify(); break;
		 */
		}

	}

	/*void modify() {
		System.out.println("�������~~~~~~~~~~~~~~~");
		data.setDd(pRep.detail(pvo));
		//return	vo;

	}*/

	/*
	 * ModelAndView modifySubmit(BoardVO vo, HttpServletRequest request) {
	 * 
	 * String url = "redirect:modifyForm";
	 * 
	 * vo.setUpfile(vo.getFf().getOriginalFilename());
	 * 
	 * if(dao.modify(vo)) { fileupload(vo, request); url = "redirect:detail"; }
	 * ModelAndView mav = new ModelAndView(url);
	 * 
	 * 
	 * mav.addObject("id", vo.getId()); return mav; }
	 */

	void reg() {

		System.out.println("�÷��̾��� ��������Ȯ��" + pvo);

		fileupload(pvo, data.getRequest());
		//pRep.insertPlayerStatCareer(vo);
		//pRep.insert(vo);
		data.setRedirect(true);
		
		data.setPath("redirect:view?playerId=" + pvo.getPlayerId());
	}
	
	void regTodayStat() {

		System.out.println("��?psvo"+psvo);
		//System.out.println("��?pscvo"+pscvo);
		// fileupload(vo, data.getRequest());
		pRep.insertStat(psvo);
		

		data.setRedirect(true);
		data.setPath("redirect:viewTodayStat?playerId=" + psvo.getPlayerId());
	}

	/*
	 * void register() { data.setPath("redirect:register"); }
	 */

	/*void view() {
		System.out.println("�������ʴµ�");
		data.setDd(pRep.detail(pvo));

	}*/
	
	void viewTodayStat() {

		data.setDd(pRep.viewTodayStat(psvo));

	}

	void list() {

		data.setDd(pRep.list());

	}

	/*
	 * ModelAndView deleteForm(@ModelAttribute("vo") PlayerVo vo) {
	 * 
	 * ModelAndView mav = new ModelAndView(); System.out.println("deleteForm:" +
	 * vo.getPlayerId()); return mav; }
	 */

	void fileupload(PlayerVo vo, HttpServletRequest request) {

		try {

			String outPath = request.getRealPath("/resources/playerPhoto");
			outPath = "C:\\FINAL\\baseball\\src\\main\\webapp\\resources\\playerPhoto";
			outPath += "/" + vo.getPlayerPhoto().getOriginalFilename();
			vo.setSysFile(vo.getPlayerPhoto().getOriginalFilename());
			FileOutputStream fos = new FileOutputStream(outPath);

			fos.write(vo.getPlayerPhoto().getBytes());

			fos.close();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		/*
		 * void fileupload(PlayerVo vo, HttpServletRequest request) {
		 * System.out.println("��ȣȣȣȣȣ" + vo.getPlayerPhoto().getOriginalFilename()); try
		 * {
		 * 
		 * vo.setOriFile(vo.getPlayerPhoto().getOriginalFilename()); String outPath =
		 * request.getRealPath("/resources/playerPhoto"); outPath =
		 * "C:\\FINAL\\baseball\\src\\main\\webapp\\resources\\playerPhoto"; outPath +=
		 * "/" + vo.getOriFile();
		 * 
		 * vo.setSysFile(vo.getOriFile());
		 * System.out.println("�ý������Դϴ�"+vo.getSysFile());
		 * 
		 * FileOutputStream fos = new FileOutputStream(outPath);
		 * 
		 * fos.write(vo.getPlayerPhoto().getBytes());
		 * 
		 * fos.close();
		 * 
		 * } catch (Exception e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); }
		 */

		/*
		 * String fileupload(PlayerVo vo, HttpServletRequest request) { // ���� ���ε� �޼ҵ�
		 * !!!!!!!!!!!!!! upfile = ��������, // request = ���ε��� �������� FileOutputStream fos;
		 * String sysfile = vo.getPlayerPhoto().getOriginalFilename().toString();
		 * 
		 * try { String outPath = request.getRealPath("/resources/playerPhoto"); outPath
		 * = "C:\\FINAL\\baseball\\src\\main\\webapp\\resources\\playerPhoto"; String
		 * realPath = outPath + "\\" + sysfile; File file = new File(realPath); if
		 * (file.exists()) { int count = 0; int dot = sysfile.lastIndexOf("."); String
		 * nameonly = sysfile.substring(0, dot); String hwak = sysfile.substring(dot);
		 * 
		 * while (file.exists()) { count++; sysfile = nameonly + "_" + count + hwak;
		 * 
		 * realPath = outPath + "\\" + sysfile;
		 * 
		 * file = new File(realPath); } }
		 * 
		 * fos = new FileOutputStream(realPath);
		 * fos.write(vo.getPlayerPhoto().getBytes()); fos.close(); } catch (Exception e)
		 * { // TODO Auto-generated catch block e.printStackTrace(); } return sysfile; }
		 */

	}
}
