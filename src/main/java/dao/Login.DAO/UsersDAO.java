package dao;

import dto.UsersDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsersDAO {
    private static UsersDAO instance;
    private Connection conn;

    private UsersDAO(Connection conn) { this.conn = conn; }
    public static UsersDAO getInstance(Connection conn) {
        if (instance == null) {
            instance = new UsersDAO(conn);
        }
        return instance;
    }

    // 로그인 성공 시 UsersDTO 객체 전체를 반환
    public UsersDTO loginAndGetInfo(String userId, String password) throws SQLException {
        // 모든 필드를 가져오는 SQL 쿼리. DB의 실제 컬럼명과 일치하는지 확인하세요.
        String sql = "SELECT us_id, us_pass, us_name, us_hp, us_email, us_addr FROM user_info WHERE us_id = ? AND us_pass = ?";
        
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, userId);
            pstmt.setString(2, password);
            
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    // UsersDTO의 객체 생성 후 반환
                    return new UsersDTO(
                        rs.getInt("us_id"),
                        rs.getString("us_pass"),
                        rs.getString("us_name"),
                        rs.getString("us_hp"),
                        rs.getString("us_email"),
                        rs.getString("us_addr")
                    );
                }
            }
        }
        return null;
    }
}