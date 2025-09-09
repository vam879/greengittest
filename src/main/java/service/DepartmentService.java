package service;

import java.util.List;

import dao.DepartmentDAO;
import dto.DepartmentDTO;

public enum DepartmentService {
	INSTANCE;
	private DepartmentDAO dao = DepartmentDAO.getInstance();
	
	public List<DepartmentDTO> findByCollege(String college){
		return dao.selectByCollege(college);
		
		
	}
}
