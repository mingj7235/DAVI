package com.davi.app.board.vo;
/*
 * 
 * CREATE TABLE DAVI_CERTIFICATED_BOARD(
	MEMBERID VARCHAR2(300),
	CERTIFICATEDNUM NUMBER(10),
	CERTIFICATEDTITLE VARCHAR2(3000),
	CERTIFICATEDCONTENT VARCHAR2(3000),
	CERTIFICATEDDATE DATE,
	CONSTRAINT DAVI_CERTIFICATEDNUM_PK PRIMARY KEY(CERTIFICATEDNUM),
	CONSTRAINT DAVI_CERTIFICATED_MEMBERID_FK FOREIGN KEY(MEMBERID) REFERENCES DAVI_MEMBER(MEMBERID)
)
 * 
 */

public class CertificatedBoardVO {
	private String memberId;
	private int certificatedNum;
	private String certificatedTitle;
	private String certificatedContent;
	private String certificatedDate;
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getCertificatedNum() {
		return certificatedNum;
	}
	public void setCertificatedNum(int certificatedNum) {
		this.certificatedNum = certificatedNum;
	}
	public String getCertificatedTitle() {
		return certificatedTitle;
	}
	public void setCertificatedTitle(String certificatedTitle) {
		this.certificatedTitle = certificatedTitle;
	}
	public String getCertificatedContent() {
		return certificatedContent;
	}
	public void setCertificatedContent(String certificatedContent) {
		this.certificatedContent = certificatedContent;
	}
	public String getCertificatedDate() {
		return certificatedDate;
	}
	public void setCertificatedDate(String certificatedDate) {
		this.certificatedDate = certificatedDate;
	}
	
	
}
