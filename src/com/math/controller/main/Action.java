package com.math.controller.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*컨트롤러들이 수행할 기본 메소드를 등록해둔 인터페이스*/

public interface Action {
	 public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			 throws Exception;
}
