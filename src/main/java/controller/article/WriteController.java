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


@WebServlet("/#.do")
public class WriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private ArticleService articleService = ArticleService.INSTANCE;	
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/#.jsp");
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String writer = req.getParameter("writer");
		
		ArticleDTO dto = new ArticleDTO();
		dto.setTitle(title);
		dto.setContent(content);
		dto.setWriter(writer);
		
		logger.debug(dto.toString());
		
		resp.sendRedirect("#");
		
	}
}