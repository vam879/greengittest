package controller.department;

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

@WebServlet("/department/view.do")
public class ViewController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private DepartmentService dservice = DepartmentService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String college = req.getParameter("college");
		System.out.println("college param = " + college);
		
		List<DepartmentDTO> dtoList = dservice.findByCollege(college);

		req.setAttribute("departments", dtoList);
		String col="";
		
		switch (college) {
		case "인문사회대학":
			col="humanities";
			break;
		case "자연과학대학":
			col="natural_sci";
			break;
		case "공과대학":
			col="engineering";
			break;
		case "사범대학":
			col="education";
			break;
		case "대학원":
			col="grad_sch";
			break;
		}
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/departments/"+col+".jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
