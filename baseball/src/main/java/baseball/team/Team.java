/*package baseball.team;

import java.io.FileOutputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import baseball.center.model.CenterRepository;
import baseball.control.SubControll;
import baseball.team.model.PathData;
import baseball.team.model.TeamVo;

@Service
public class Team implements SubControll {

	@Resource
	PathData data;

	@Resource
	TeamRepository pRep;

	TeamVo vo;

	@Override
	public void execute() {

		// TODO Auto-generated method stub

		System.out.println("player 진입성공:" + data);
		vo = (TeamVo) data.getDd();

		switch (data.getService()) {
		case "list":
			list();
			break;
		case "view":
			view();
			break;

		case "register":
			view();
			break;
		}

	}

	void reg() {

		System.out.println("진입확인" + vo);

		fileupload(vo, data.getRequest());
		pRep.insert(vo);

		data.setRedirect(true);
		data.setPath("redirect:view?id=" + vo.getTeamId());
	}

	void view() {

		data.setDd(pRep.detail(vo));

	}

	void list() {

		data.setDd(pRep.list());

	}

	ModelAndView deleteForm(@ModelAttribute("vo") TeamVo vo) {

		ModelAndView mav = new ModelAndView();
		System.out.println("deleteForm:" + vo.getTeamId());
		return mav;
	}

	void fileupload(TeamVo vo, HttpServletRequest request) {

		try {
			vo.setOriFile(vo.getFf().getOriginalFilename());
			String outPath = request.getRealPath("/resources/teamPhoto");
			outPath = "C:\\FINAL\\baseball\\src\\main\\webapp\\resources\\teamPhoto";
			outPath += "/" + vo.getOriFile();

			vo.setSysFile(vo.getOriFile());

			FileOutputStream fos = new FileOutputStream(outPath);

			fos.write(vo.getFf().getBytes());

			fos.close();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
*/