package dao;

import java.awt.dnd.DropTargetContext;
import java.util.ArrayList;
import java.util.List;

import dto.CollegeDTO;
import util.DBHelper;

public class CollegeDAO extends DBHelper{
	private static CollegeDAO instance = new CollegeDAO();
	
	private CollegeDAO() {}
	
	public static CollegeDAO getInstance() {
		return instance;
	}
	
	public List<CollegeDTO> selectAllCollege(){
		List<CollegeDTO> dtoList = new ArrayList<CollegeDTO>();
		
		try {
			String sql = "select * from college";
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				CollegeDTO dto = new CollegeDTO();
				
				dto.setCollege(rs.getString(1));
				
				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dtoList;
	}

}
