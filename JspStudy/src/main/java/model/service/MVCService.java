package model.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MVCService implements CommonService {
	
	@Override
	public String businessProc(HttpServletRequest req, HttpServletResponse resp) {
		
		// view 페이지 경로 리턴		
		return "/Sub8/2.MVC.jsp";
	}
}
