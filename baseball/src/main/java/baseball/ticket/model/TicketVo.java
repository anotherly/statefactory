package baseball.ticket.model;

import java.util.ArrayList;

import org.apache.ibatis.type.Alias;

@Alias("ticketinformation")
public class TicketVo {

	String stadium;
	String seat;
	String ticketinfo;
	String listt;
	String line;
	Integer paid;
	
	ArrayList<TicketVo> reallist;
	

	public Integer getPaid() {
		return paid;
	}

	public void setPaid(Integer paid) {
		this.paid = paid;
	}

	public String getStadium() {
		return stadium;
	}

	public void setStadium(String stadium) {
		this.stadium = stadium;
	}

	public String getSeat() {
		return seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}

	public String getTicketinfo() {
		return ticketinfo;
	}

	public void setTicketinfo(String ticketinfo) {
		this.ticketinfo = ticketinfo;
	}

	public String getListt() {
		return listt;
	}

	public void setListt(String listt) {
		this.listt = listt;
	}

	public String getLine() {
		return line;
	}

	public void setLine(String line) {
		this.line = line;
	}


	public ArrayList<TicketVo> getReallist() {
		return reallist;
	}

	public void setReallist(ArrayList<TicketVo> reallist) {
		this.reallist = reallist;
	}

	@Override
	public String toString() {
		return "TicketVo [stadium=" + stadium + ", seat=" + seat + ", ticketinfo=" + ticketinfo + ", listt=" + listt
				+ ", line=" + line + ",  reallist=" + reallist + "]";
	}

	
	
		
} 
 