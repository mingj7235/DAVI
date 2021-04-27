package com.davi.app.board.vo;

/*WARNINGNUM NUMBER(10) PRIMARY KEY,
MEMBERID VARCHAR2(300),
WARNINGCONTENT VARCHAR2(300),
WARNINGDATE DATE,*/

public class BoardWarningVO {
	private int warningNum;
	private String memberId;
	private String warningContent;
	private String warningDate;
	
	public BoardWarningVO() {;}

	public int getWarningNum() {
		return warningNum;
	}

	public void setWarningNum(int warningNum) {
		this.warningNum = warningNum;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getWarningContent() {
		return warningContent;
	}

	public void setWarningContent(String warningContent) {
		this.warningContent = warningContent;
	}

	public String getWarningDate() {
		return warningDate;
	}

	public void setWarningDate(String warningDate) {
		this.warningDate = warningDate;
	}
	
	
}
