package dao;

import java.util.ArrayList;
import java.util.List;

import dto.DepartmentDTO;
import util.DBHelper;
import util.Sql;

public class DepartmentDAO extends DBHelper {
	private final static DepartmentDAO INSTANCE = new DepartmentDAO();
	public static DepartmentDAO getInstance() {
		return INSTANCE;
	}
	private DepartmentDAO() {}
	
	public List<DepartmentDTO> selectByCollege(String college){
		List<DepartmentDTO> dtoList = new ArrayList<DepartmentDTO>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql.SELECT_DEPARTMENTS_BY_COLLEGE);
			psmt.setString(1, college);
			
			rs = psmt.executeQuery();
			while (rs.next()) {
				DepartmentDTO dto = new DepartmentDTO();
				
				dto.setDep_name(rs.getString(1));
				dto.setDep_king(rs.getString(2));
				dto.setDep_hp(rs.getString(3));
				
				dtoList.add(dto);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return dtoList;
	}
}
