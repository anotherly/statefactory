package baseball.manager;

import java.io.File;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import baseball.bill.Bill;
import baseball.bill.model.BillVo;
import baseball.controller.SubControll;
import baseball.member.Member;
import baseball.member.model.MemberRepository;
import baseball.member.model.MemberVo;
import baseball.model.PathData;

import baseball.team.model.TeamVo;
import baseball.ticket.Ticket;
import baseball.ticket.model.TicketVo;
@Service
public class Manager implements SubControll{

	@Resource
	PathData data;

	@Resource
	MemberRepository mdao;

	BillVo bvo;
	MemberVo mvo;
	TeamVo tvo;
	TicketVo tivo;
	
	Bill bil = new Bill();
	Member mem = new Member();
	Ticket tic = new Ticket();
	
	@Override
	public void execute() {
		
		System.out.println("+++++++++++++++++������ Ŭ���� ���Լ����� data:" + data);

		
		System.out.println(data.getCate1());
		System.out.println("data.getService() : "+data.getService());
		
		switch (data.getCate1()) {
		
		case "managerBill":
			
			switch (data.getService()) {
//////////////////��ΰ���////////////////////
			case "first":
				billFirst();
				break;
			
			case "weekBill":
				billWeekBill();
				break;
			
			case "monthBill":
				billMonthBill();
				break;
			}
//////////////////ȸ������////////////////////
		case "managerMember":
			mvo = (MemberVo) data.getDd();
			System.out.println("�����ڰ� ���� vo��: " + mvo);

			switch (data.getService()) {
			case "first":
				memberFirst();
				break;
			
			case "detail":
				data.setDd(mdao.detail(mvo));
				break;
				
			case "delete":
				mem.delete(mvo);
				break;
			
			
			case "mailReg":
				System.out.println("���������̽� ���� ����");
				break;
			}
		
//////////////////������////////////////////
		case "managerTeam":

			switch (data.getService()) {
			
			case "first":
				
				break;
			}
//////////////////Ƽ�ϰ���////////////////////
		case "managerTicket":

			switch (data.getService()) {
			case "first":
				break;
			}
		}//switch
		
	}//execute
	
	private void memberModify() {
		
	}

	private void memberDetail() {
		
	}

	//////////////////��ΰ���////////////////////
	private void billFirst() {
		
	}
	
	private void billMonthBill() {
		
	}
	
	private void billWeekBill() {
		
	}
	
//////////////////ȸ������////////////////////
	private void memberFirst() {
		System.out.println("������Ŭ����.����۽�Ʈ �޼ҵ�");
		data.setDd(mdao.list());
//		return "redirect:manager/manageMember/first";
	}
	
//	private void memberDelelte() {
//		
//	}
//	
//	private void memberModify() {
//		
//	}
	
//////////////////�� ����////////////////////
	private void teamFirst() {
		
	}
//////////////////���� ����////////////////////
	private void ticketBill() {
		
	}

	
}//class
