package com.davi.app.member.vo;

public class DaviMemberVO {
	
/*	CREATE TABLE DAVI_MEMBER (
		    MEMBERID VARCHAR2(300),
		    MEMBERPW VARCHAR2(300),
		    MEMBERNAME VARCHAR2(300),
		    MEMBERPHONE VARCHAR2(300),
		    MEMBEREMAIL VARCHAR2(300),
		    MEMBERGENDER VARCHAR2(300),
		    MEMBERHEIGHT NUMBER(10),
		    MEMBERWEIGHT NUMBER(10),
		    MEMBERGOALWEIGHT NUMBER(10),
		    MEMBERRESOLUTION VARCHAR2(300),
		    CONSTRAINT DAVI_MEMBERID_PK PRIMARY KEY(MEMBERID)
		);*/

	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberPhone;
	private String memberEmail;
	private String memberGender;
	private int memberHeight;
	private int memberWeight;
	private int memberGoalWeight;
	private String memberResolution;
	private int memberRate;
	
	public int getMemberRate() {
		return memberRate;
	}
	public void setMemberRate(int memberRate) {
		this.memberRate = memberRate;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberPhone() {
		return memberPhone;
	}
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}	
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberGender() {
		return memberGender;
	}
	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}
	public int getMemberHeight() {
		return memberHeight;
	}
	public void setMemberHeight(int memberHeight) {
		this.memberHeight = memberHeight;
	}
	public int getMemberWeight() {
		return memberWeight;
	}
	public void setMemberWeight(int memberWeight) {
		this.memberWeight = memberWeight;
	}
	public int getMemberGoalWeight() {
		return memberGoalWeight;
	}
	public void setMemberGoalWeight(int memberGoalWeight) {
		this.memberGoalWeight = memberGoalWeight;
	}
	public String getMemberResolution() {
		return memberResolution;
	}
	public void setMemberResolution(String memberResolution) {
		this.memberResolution = memberResolution;
	}
	
	
}
