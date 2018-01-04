package baseball.ticket.model;

import org.apache.ibatis.type.Alias;

@Alias("ticketReservation")
public class TicketResVo {

	String ticketinfo, user_name, user_phone, money;

	String user_id = "aaaa";

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getTicketinfo() {
		return ticketinfo;
	}

	public void setTicketinfo(String ticketinfo) {
		this.ticketinfo = ticketinfo;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	@Override
	public String toString() {
		return "TicketResVo [user_id=" + user_id + ", ticketinfo=" + ticketinfo + ", user_name=" + user_name
				+ ", user_phone=" + user_phone + ", money=" + money + "]";
	}

}