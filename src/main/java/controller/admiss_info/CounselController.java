package controller.admiss_info;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dao.CounselDAO;
import dto.CounselDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admiss_info/counsel.do")
public class CounselController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	private CounselDAO dao = CounselDAO.getInstance();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int page = 1;
		int pageSize = 5;

		if (req.getParameter("page") != null) {
			page = Integer.parseInt(req.getParameter("page"));
		}

		int offset = (page - 1) * pageSize;

		List<CounselDTO> dtoList = dao.selectPage(offset, pageSize);
		int totalCount = dao.selectCountTotal();
		int totalPages = (int) Math.ceil((double) totalCount / pageSize);

		req.setAttribute("dtoList", dtoList);
		req.setAttribute("page", page);
		req.setAttribute("totalPages", totalPages);
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("pageSize", pageSize);

		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admiss_info/counsel.jsp");
		dispatcher.forward(req, resp);
	}
}