package com.davi.app.board.vo;

public class CertificatedReplyVO {
	
	/*CERTIFICATEDNUM NUMBER(10),
	CERTIFICATEDREPLYNUM NUMBER(10),
	MEMBERID VARCHAR2(300),
	CERTIFICATEDREPLYCONTENT VARCHAR2(3000),
	CERTIFICATEDDATE DATE,*/
	
	private int certificatedNum;
	private int certificatedReplyNum;
	private String memberId;
	private String certificatedReplyContent;
	private String certificatedDate;
	
	public CertificatedReplyVO() {;}
	
	public int getCertificatedNum() {
		return certificatedNum;
	}
	public void setCertificatedNum(int certificatedNum) {
		this.certificatedNum = certificatedNum;
	}
	public int getCertificatedReplyNum() {
		return certificatedReplyNum;
	}
	public void setCertificatedReplyNum(int certificatedReplyNum) {
		this.certificatedReplyNum = certificatedReplyNum;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getCertificatedReplyContent() {
		return certificatedReplyContent;
	}
	public void setCertificatedReplyContent(String certificatedReplyContent) {
		this.certificatedReplyContent = certificatedReplyContent;
	}
	public String getCertificatedDate() {
		return certificatedDate;
	}
	public void setCertificatedDate(String certificatedDate) {
		this.certificatedDate = certificatedDate;
	}
	
	

}
