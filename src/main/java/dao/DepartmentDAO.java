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
			
			closeAll();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return dtoList;
	}
	
	
	public void insert(DepartmentDTO dto) {
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql.DEPARTMENT_INSERT);
			psmt.setInt(1, dto.getDep_no());
			psmt.setString(2, dto.getCollege());
			psmt.setString(3, dto.getDep_name());
			psmt.setString(4, dto.getDep_eng_name());
			psmt.setString(5, dto.getDep_est_date());
			psmt.setString(6, dto.getDep_king());
			psmt.setString(7, dto.getDep_hp());
			psmt.setString(8, dto.getDep_office());
			
			psmt.executeUpdate();
			
			closeAll();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
