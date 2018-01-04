package baseball.mail;

import javax.annotation.Resource;

import baseball.controller.SubControll;
import baseball.mail.model.MailRepository;
import baseball.mail.model.MailVo;
import baseball.model.PathData;

public class Mail implements SubControll{
	@Resource
	PathData data;
	
	@Resource
	MailRepository dao;

	MailVo vo;
	
	@Override
	public void execute() {
		System.out.println("메일 엑시큐트 진입"+ data + " //----// data.getDd() : " + data.getDd());
		vo = (MailVo) data.getDd();
		
		switch (data.getService()) {
		case "sendMail":
			sendMail();
			break;

		default:
			break;
		}
	}

	void sendMail() {
		
	}
	
	
}
