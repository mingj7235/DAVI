package com.davi.app.board.vo;


/*
 * 
 * CREATE TABLE DAVI_CERTIFICATED_FILE (
	CERTIFICATEDNUM NUMBER(10),
	CERTIFICATEDPATH VARCHAR2(300),
	CERTIFICATEDFILENAME VARCHAR2(300),
	CONSTRAINT DAVI_CERTI_FILE_PK PRIMARY KEY (CERTIFICATEDNUM),
	CONSTRAINT DAVI_CERTI_FILE_FK FOREIGN KEY (CERTIFICATEDNUM) REFERENCES DAVI_CERTIFICATED_BOARD(CERTIFICATEDNUM)
);
 */
public class CertificatedFilesVO {
	int certificatedNum;
	String certificatedPath;
	String certificatedFileName;
	public int getCertificatedNum() {
		return certificatedNum;
	}
	public void setCertificatedNum(int certificatedNum) {
		this.certificatedNum = certificatedNum;
	}
	public String getCertificatedPath() {
		return certificatedPath;
	}
	public void setCertificatedPath(String certificatedPath) {
		this.certificatedPath = certificatedPath;
	}
	public String getCertificatedFileName() {
		return certificatedFileName;
	}
	public void setCertificatedFileName(String certificatedFileName) {
		this.certificatedFileName = certificatedFileName;
	}
	
	
}
