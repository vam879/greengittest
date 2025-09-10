package controller.admiss_info;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.Admiss_info_noticeService;

@WebServlet("/admiss_info/notice.do")
public class NoticeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private ArticleService articleService = ArticleService.INSTANCE;	
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		// 요청 페이지 번호 수신
		String pg = req.getParameter("pg");
				
		// 페이지네이션 처리 요청
		PagenationDTO pagenationDTO = articleService.getPagenationDTO(pg);
		
		// 글 목록 조회
		int start = pagenationDTO.getStart();
		List<ArticleDTO> dtoList = articleService.findAll(start);
		
		// request 공유참조(JSP 출력)
		req.setAttribute("dtoList", dtoList);
		req.setAttribute("pagenationDTO", pagenationDTO);		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admiss_info/notice.jsp");
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}

}
