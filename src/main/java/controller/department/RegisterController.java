package controller.department;

import java.io.IOException;

import dto.DepartmentDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.DepartmentService;

@WebServlet("/department/register.do")
public class RegisterController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	DepartmentService service = DepartmentService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/management/depart_register.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String dep_no = req.getParameter("dep_no");
		String college = req.getParameter("college");
		String dep_name = req.getParameter("dep_name");
		String dep_eng_name = req.getParameter("dep_eng_name");
		String dep_est_date = req.getParameter("dep_est_date");
		String dep_king = req.getParameter("dep_king");
		String dep_hp = req.getParameter("dep_hp");
		String dep_office = req.getParameter("dep_office");
		
		DepartmentDTO dto = new DepartmentDTO();
		dto.setDep_no(Integer.parseInt(dep_no));
		dto.setCollege(college);
		dto.setDep_name(dep_name);
		dto.setDep_eng_name(dep_eng_name);
		dto.setDep_est_date(dep_est_date);
		dto.setDep_king(dep_king);
		dto.setDep_hp(dep_hp);
		dto.setDep_office(dep_office);
		
		service.register(dto);
		
		resp.sendRedirect("/");
		
	}
	

}
