package baseball.mail.model;

import java.util.Date;

public class MailVo {
	Integer userid,sendid;
	String title,content;
	Date maildate;
	
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public Integer getSendid() {
		return sendid;
	}
	public void setSendid(Integer sendid) {
		this.sendid = sendid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getMaildate() {
		return maildate;
	}
	public void setMaildate(Date maildate) {
		this.maildate = maildate;
	}
	
	
}
