package kr.co.board2.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.board2.controller.CommonService;
import kr.co.board2.dao.ArticleDao;
import kr.co.board2.vo.FileVo;

public class FileDownloadService implements CommonService {

	@Override
	public String businessProc(HttpServletRequest req, HttpServletResponse resp) {
		
		String fid = req.getParameter("fid");
		
		ArticleDao dao = ArticleDao.getInstance();
		FileVo fvo = dao.selectFile(fid);
		
		dao.updateFileCount(fid);
		
		req.setAttribute("oName", fvo.getoName());
		req.setAttribute("nName", fvo.getnName());
		
		return "file:";
	}

}
