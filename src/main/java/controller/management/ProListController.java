package controller.management;

import java.io.IOException;
import java.util.List;

import dto.ProfessorDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.ProfessorService;

@WebServlet("/management/prolist.do")
public class ProListController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private ProfessorService service = ProfessorService.INSTANCE;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<ProfessorDTO> dtoList = service.findProList();
		req.setAttribute("dtoList", dtoList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/management/pro_list.jsp");
		dispatcher.forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
}
