package com.math.controller.main;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;
import java.util.StringTokenizer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/MainController")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		
		//~~.do라고 입력되면 여기로 이동되게 설정해뒀다.
		//예를 들면 action="memberLogin.do"라는 걸로 들어왔으면
		//현재 RequestURI는 /프로젝트명/상위폴더들/memberLogin.do인 상태다.
		String RequestURI=request.getRequestURI();
		
		//contextPath는 /프로젝트명
		String contextPath=request.getContextPath();
		
		//프로젝트명은 필요없으니 잘라내서 부분문자열을 선언한다.
		String command=RequestURI.substring(contextPath.length());
		System.out.println("RequestURI="+RequestURI);
		System.out.println("contextPath="+contextPath);
		System.out.println("command="+command);
		
		Action action = null;
		ActionForward forward = null;
		
		Properties prop = new Properties();
		FileInputStream fis = 
		  new FileInputStream("C:\\jspworkspace2\\TheMath\\WebContent\\command\\command.properties");
		//프로퍼티를 이용해 fis라는 변수에 있는 경로에 있는 커맨드 파일을 읽는다.
		prop.load(fis);
		//읽었으니 이제 fis는 계속 열어둘 필요없다. 닫자.
		fis.close();
		//커맨드.프로퍼티에서 command의 내용을 검색해서 value라는 변수에 담는다.
		String value = prop.getProperty(command).trim();
		
		 System.out.println("property result => "+value);
		 
		 //execute라는 메소드가 있는 명령어면 다음을 수행한다.
		if(value.substring(0, 7).equals("execute")) {
			try {	//|를 떼어낸다. 한 문장이 두 문장으로 쪼개질 것이다.
					StringTokenizer st = new StringTokenizer(value, "|");
					//첫 째 문장을 url_1에, 두 번째 문장을 url_2에 담는다.
					String url_1=st.nextToken();
					String url_2=st.nextToken();
					System.out.println("url_1="+url_1);
					System.out.println("url_2="+url_2);
					
					//두 번째 문장이 클래스 경로이므로 url변수에 클래스 이름을 담는다.
					Class url=Class.forName(url_2); 
					
					action = (Action)url.newInstance();
				     forward=action.execute(request, response);	
		}catch(Exception e) {
				e.printStackTrace();
			}
		}else {
			forward=new ActionForward();
			forward.setRedirect(true);
			forward.setPath(value);
			System.out.println("redirect=> "+value);
		}
		if(forward!=null) {
			if(forward.isRedirect()) {
				System.out.println("forward.isRedirect()=>"+forward.isRedirect());
				response.sendRedirect(forward.getPath());
			}else {
				RequestDispatcher dispatcher=request.getRequestDispatcher(forward.getPath());
				System.out.println("forward.getPath()=>"+forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}
}