package controller.article;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.ArticleDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.ArticleService;


@WebServlet("/notice/list.do")
public class NoticeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private ArticleService articleService = ArticleService.INSTANCE;	
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int page = 1;
		int pageSize = 5;
		
		if (req.getParameter("page") != null) {
		    page = Integer.parseInt(req.getParameter("page"));
		}
		
		int wdist = Integer.parseInt(req.getParameter("wdist"));
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");
		List<ArticleDTO> dtoList = articleService.findPage(page, pageSize, wdist, searchType, keyword);
		int totalCount = articleService.countPage(wdist, searchType, keyword);
		int totalPages = (int)Math.ceil((double) totalCount / pageSize);
		

		// request 공유참조(JSP 출력)
		req.setAttribute("dtoList", dtoList);
		req.setAttribute("page", page);
		req.setAttribute("totalPages", totalPages);		
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("pageSize", pageSize);
		
		String src = "/Green/";
		// dist별로 수정 필요
		if (wdist==2) {
			src = "/WEB-INF/views/admiss_info/notice.jsp";
		}else if (wdist==1) {
			src = "/WEB-INF/views/academic/notice.jsp";
		}else if (wdist==3) {
			src = "/WEB-INF/views/community/board.jsp";
		}

		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher(src);
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}