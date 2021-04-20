package com.davi.app.board;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.board.dao.CertificatedBoardDAO;
import com.davi.app.board.vo.CertificatedBoardVO;
import com.davi.app.board.vo.CertificatedFilesVO;

public class CertificatedBoardViewOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		CertificatedBoardDAO c_dao = new CertificatedBoardDAO();
		ActionForward forward = new ActionForward();
		
		
		Calendar now = Calendar.getInstance();
		Calendar date = Calendar.getInstance();
		Date changeDate = null;
		SimpleDateFormat MMddHHmmss = new SimpleDateFormat("MM-dd HH:mm:ss");
		String boardDate = "";
		String finalDate = "";
		
		int diffHour = 0;
		int diffMinute = 0; 
		int diffSecond = 0; 
		int diffDay = 0;
		
		int certificatedNum = 1;
		List<CertificatedBoardVO> lists = null;
				
		lists = c_dao.getCertificatedList(certificatedNum, certificatedNum);
		String[] texts = new String[2];
		int[] likes = new int[2];
		String[] times = new String[2];
		boolean[] likeChecks = new boolean[2];
		HttpSession session = req.getSession();
		
		if (lists.size() != 0 ) {
			for(int i=0 ; i<lists.size() ; i++) {
	//			cvo.setCertificatedPath(c_dao.getFilePath(cvo.getCertificatedNum()));
				lists.get(i).setCertificatedPath(c_dao.getFilePath(lists.get(i).getCertificatedNum()));
				if(lists.get(i).getCertificatedContent().length() > 10) {
					texts[i]  = lists.get(i).getCertificatedContent().substring(0, 10) + "...";				
				}else {
					texts[i]  = lists.get(i).getCertificatedContent();
				}
				likes[i] = c_dao.certificatedLikeCnt(lists.get(i).getCertificatedNum());
				likeChecks[i] = c_dao.certificatedLikeCheck(lists.get(i).getCertificatedNum(), (String)session.getAttribute("session_id") );
				boardDate = c_dao.getDate(lists.get(i).getCertificatedNum());
				changeDate = MMddHHmmss.parse(boardDate);
				date.setTime(changeDate);
				diffDay = now.get(Calendar.DAY_OF_YEAR) - date.get(Calendar.DAY_OF_YEAR);
				diffHour = now.get(Calendar.HOUR_OF_DAY) - date.get(Calendar.HOUR_OF_DAY); 
				diffMinute = now.get(Calendar.MINUTE) - date.get(Calendar.MINUTE);
				diffSecond = now.get(Calendar.SECOND) - date.get(Calendar.SECOND);
				
				if(diffDay != 0) {
					if(diffDay == 1) {
						finalDate = "하루전";
					}else if (diffDay == 2) {
						finalDate = "이틀전";
					}else {
						finalDate = diffDay + "일전"; 
					}
				}else if(diffHour != 0) {
					finalDate = diffHour + "시간 전";
				}else if(diffMinute != 0) {
					finalDate = diffMinute + "분 전";
				}else {
					finalDate = "몇초 전";
				}
				
				times[i] = finalDate;
				/*System.out.println("일수: " +diffDay);
				System.out.println("시간: " + diffHour);
				System.out.println("분: " + diffMinute);
				System.out.println("초: " + diffSecond);*/
			}
			
			System.out.println(lists.size());
			System.out.println(lists.get(0).getCertificatedDate());
			req.setAttribute("certificatedList", lists); 
			req.setAttribute("ContentSubStringList", texts);
			req.setAttribute("LikeCntList", likes);
			req.setAttribute("likeChecks", likeChecks);
			req.setAttribute("times", times);
		} else {
			req.setAttribute("certificatedList", null); 
		}
		
		forward.setRedirect(false);
		forward.setPath("/app/board/certificated_normal_board.jsp");
		
		return forward;
	}
}
