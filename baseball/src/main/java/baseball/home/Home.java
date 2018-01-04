package baseball.home;


import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import baseball.controller.SubControll;
import baseball.model.PathData;
import baseball.team.model.TeamVo;

@Service
public class Home implements SubControll {

	@Resource
	PathData data1;

	@Resource
	HomeRepository pRep;

	TeamVo vo;

	@Override
	public void execute() {

		// TODO Auto-generated method stub

		System.out.println("home ���Լ���:" + data1);
		vo = (TeamVo) data1.getDd();
		System.out.println("Home.java----"+vo);

		switch (data1.getService()) {
		case "first":
			list();
			break;
		}

	}

	void list() {
		System.out.println("Ȩ ��Ű���� Ȩ Ŭ������ ����Ʈ �޼ҵ�");
		data1.setDd(pRep.list());

	}


}
