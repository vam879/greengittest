package dao.login;

import dto.UsersDTO;
import util.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsersDAO extends DBHelper {
    private static UsersDAO instance;

    private UsersDAO(){}
    public static UsersDAO getInstance() {
        if (instance == null) {
            instance = new UsersDAO();
        }
        return instance;
    }

    // 로그인 성공 시 UsersDTO 객체 전체를 반환
    public UsersDTO loginAndGetInfo(String userId, String password) {
      
        String sql = "SELECT * FROM users WHERE us_id = ? AND us_pass = ?";
        UsersDTO dto = null;
        
        
        try {
        	
        	conn = getConnection();
	        psmt = conn.prepareStatement(sql);
	        psmt.setString(1, userId);
	        psmt.setString(2, password);
	            
	        rs = psmt.executeQuery();
	        if (rs.next()) {
	            
	         	dto = new UsersDTO();
	             	
	            dto.setUs_id(rs.getInt(1));
	            dto.setUs_pass(rs.getString(2));
	            dto.setUs_name(rs.getString(3));
	            dto.setUs_hp(rs.getString(4));
	            dto.setUs_email(rs.getString(5));
	            dto.setUs_addr(rs.getString(6));
                        
            }
                
        } catch(Exception e) {
          	e.printStackTrace();
        }
        return dto;
    }
}