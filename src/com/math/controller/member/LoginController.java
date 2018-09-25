package com.math.controller.member;

import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.math.controller.main.Action;
import com.math.controller.main.ActionForward;
import com.math.model.member.MemberBean;
import com.math.model.member.MemberDao;
import com.math.model.member.MemberDaoImpl;
import javax.servlet.http.HttpSession;

public class LoginController implements Action {

	/* 주석 : 본 클래스는 회원 로그인을 다루는 컨트롤러이다.
	 * 클래스의 목적은 다음과 같다.
	 * 
	 * 1. loginView.jsp에서 입력된 이메일과 비밀번호값을 받아와 변수에 저장한다.
	 * 
	 * 2. 그것을 DaoImpl에 전달하면, 
	 * DaoImpl은 DB에 저장된 이메일과 비밀번호값을 가져와서 비교한 후,
	 * 결과값을 컨트롤러에게 전달한다.
	 * 
	 * 3. 컨트롤러는 결과값을 분석해서 
	 * 각 경우의 수에 따라 적절한 코드를 loginView.jsp에게 전달한다.
	 * */
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();

		//getParameter메소드를 통해서 loginView.jsp에 입력된 값을 받아온다.
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		//MemberDaoImpl의 객체를 받아온다.
		MemberDaoImpl dao = MemberDaoImpl.getInstance();
		
		//MemberDaoImpl의 메소드를 써서 결과값을 받아온다.
		int result = dao.checkUser(email, pw);

		if (result == 1) {
			out.print("<script>");
			out.print("alert('환영합니다.');");
			out.print("history.back();");
			out.print("</script>");
		}else if(result==0) {
			out.print("<script>");
			out.print("alert('비번이 일치하지 않습니다.');");
			out.print("history.back();");
			out.print("</script>");
		}else if(result==-1) {
			out.print("<script>");
			out.print("alert('등록되지 않은 id입니다.');");
			out.print("history.back();");
			out.print("</script>");
		}
		return null;
	}

}
