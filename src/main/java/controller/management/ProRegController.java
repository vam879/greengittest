package controller.management;

import java.io.IOException;
import java.util.List;

import dto.CollegeDTO;
import dto.DepartmentDTO;
import dto.ProfessorDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.CollegeService;
import service.DepartmentService;
import service.ProfessorService;

@WebServlet("/management/proreg.do")
public class ProRegController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	DepartmentService dservice = DepartmentService.INSTANCE;
	CollegeService cservice = CollegeService.INSTANCE;
	ProfessorService pservice = ProfessorService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<CollegeDTO> colleges = cservice.findColleges();
		List<DepartmentDTO> departments = dservice.findDepNameNo();
		
		req.setAttribute("colleges", colleges);
		req.setAttribute("departments", departments);

		RequestDispatcher dis = req.getRequestDispatcher("/WEB-INF/views/management/pro_register.jsp");
		dis.forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pro_jumin = req.getParameter("pro_jumin");
		String pro_name = req.getParameter("pro_name");
		String pro_eng_name = req.getParameter("pro_eng_name");
		String pro_gen = req.getParameter("pro_gen");
		String pro_nation = req.getParameter("pro_nation");
		String pro_hp = req.getParameter("pro_hp");
		String pro_email = req.getParameter("pro_email");
		String pro_addr = req.getParameter("pro_addr1") + " " + req.getParameter("pro_addr2") + " " + req.getParameter("pro_addr3");
		String pro_univ = req.getParameter("pro_univ");
		String dep_name = req.getParameter("dep_name");
		String pro_grad_date = req.getParameter("pro_grad_date");
		String pro_degree = req.getParameter("pro_degree");
		String dep_no = req.getParameter("dep_no");
		String pro_appoint_date = req.getParameter("pro_appoint_date");
		
		ProfessorDTO dto = new ProfessorDTO();
		dto.setPro_jumin(pro_jumin);
		dto.setPro_name(pro_name);
		dto.setPro_eng_name(pro_eng_name);
		dto.setPro_gen(pro_gen);
		dto.setPro_nation(pro_nation);
		dto.setPro_hp(pro_hp);
		dto.setPro_email(pro_email);
		dto.setPro_addr(pro_addr);
		dto.setPro_univ(pro_univ);
		dto.setDep_name(dep_name);
		dto.setPro_grad_date(pro_grad_date);
		dto.setPro_degree(pro_degree);
		dto.setDep_no(Integer.parseInt(dep_no));
		dto.setPro_appint_date(pro_appoint_date);
		
		pservice.register(dto);
		
		resp.sendRedirect("/Green/management/prolist.do");
		
	}

}
