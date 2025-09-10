package controller.management;

import java.io.IOException;
import java.util.List;

import dto.DepartmentDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.DepartmentService;

@WebServlet("/management/stdlist.do")
public class StdListController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	DepartmentService service = DepartmentService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int page = 1;
		int pageSize = 15;
		
		if (req.getParameter("page") != null) {
		    page = Integer.parseInt(req.getParameter("page"));
		}
		
		
		List<DepartmentDTO> dtoList = service.findPage(page, pageSize);
		int totalCount = service.countPage();
		int totalPages = (int)Math.ceil((double) totalCount / pageSize);
		
		
		
		req.setAttribute("student", dtoList);
		req.setAttribute("page", page);
		req.setAttribute("totalPages", totalPages);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/management/std_list.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}

}