package service;

import java.util.List;

import dao.CollegeDAO;
import dto.CollegeDTO;

public enum CollegeService {
	INSTANCE;
	
	private CollegeDAO dao = CollegeDAO.getInstance();
	
	public List<CollegeDTO> findColleges(){
		return dao.selectAllCollege();
	}
	

}
