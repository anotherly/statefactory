package baseball.ticket;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import baseball.controller.SubControll;
import baseball.model.PathData;
import baseball.ticket.model.TicketVo;

@Service
public class Ticket implements SubControll{

	/*@Resource
	ResRepository reservation;
	*/
	@Resource
	PathData data;
	
	
	TicketVo vo;
	

	@Override
	public void execute() {
		// TODO Auto-generated method stub
		/*System.out.println("ticket�Գ�"+ data);
		vo = (TicketVo)data.getDd();*/
	}
	
	


	

}
