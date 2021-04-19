package com.davi.app.recipe;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.davi.action.Action;
import com.davi.action.ActionForward;
import com.davi.app.member.dao.MemberDAO;

public class CreateWeekOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		MemberDAO m_dao = new MemberDAO();
		ActionForward forward = new ActionForward();
		int countRecipe = m_dao.countRecipe();
		int morningRecipe[] = new int[6];
		int otherRecipe[] = new int[12];
		
		//0:아침, 1: 점심저녁 메뉴
        List<Map<String,Integer>> morningList = m_dao.weekMenu(0);
        List<Map<String,Integer>> otherList = m_dao.weekMenu(1);
        List<Map<String, Integer>> list = m_dao.nowWeekMenu();
        
		
		if(list.size() == 0) {
			//오전식단
			for(int i=0; i<morningRecipe.length; i++) {
				morningRecipe[i]=(int)(Math.random()*morningList.size());//아침메뉴가 10개일시 0~9
				for(int j=0; j<i;j++) {
					if(morningRecipe[i]==morningRecipe[j]) {
						i--;
						break;
					}
				}								
			}
			for (int i = 0; i < morningRecipe.length; i++) {				
				int morningTest = Integer.parseInt(String.valueOf(morningList.get(morningRecipe[i]).get("RECIPENUM")));
				if(m_dao.createWeek(morningTest)) {
					System.out.println(morningTest);					
				}
			}
			
			//오후식단
			for(int i=0; i<otherRecipe.length; i++) {
				otherRecipe[i]=(int)(Math.random()*otherList.size());//아침메뉴가 10개일시 0~9
				for(int j=0; j<i;j++) {
					if(otherRecipe[i]==otherRecipe[j]) {
						i--;
						break;
					}
				}								
			}
			for (int i = 0; i < otherRecipe.length; i++) {				
				int otherTest = Integer.parseInt(String.valueOf(otherList.get(otherRecipe[i]).get("RECIPENUM")));
				if(m_dao.createWeek(otherTest)) {
					System.out.println(otherTest);					
				}
			}
			
			list = m_dao.nowWeekMenu();
		}	
		
		req.setAttribute("menus", list);
		forward.setRedirect(false);
		forward.setPath("/app/dietary/admin.jsp");		
		
		return forward;
	}
}
