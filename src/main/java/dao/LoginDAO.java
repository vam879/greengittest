package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dto.LoginDTO;

public class LoginDAO {
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public LoginDAO(Connection conn) {
    	this.conn = conn;
        // 데이터베이스 연결 로직은 주석 처리했습니다.
        // 실제 구현 시 JDBC 드라이버 로드와 연결 코드를 추가하세요.
    }

    public boolean checkLogin(LoginDTO user) {
        // 실제 DB 연동 로직은 주석 처리했습니다.
        boolean isSuccess = false;
        try {
            String sql = "SELECT * FROM users WHERE id = ? AND password = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, user.getUs_id());
            pstmt.setString(2, user.getUs_pass());
            rs = pstmt.executeQuery();
            
            if (rs.next()) {
                isSuccess = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return isSuccess;

        /* 임시 테스트용 하드코딩
        return "admin".equals(user.getUs_id()) && "1234".equals(user.getUs_pass());*/
    }

    public void close() {
    	try { if (rs != null) rs.close(); } catch (Exception e) {}
        try { if (pstmt != null) pstmt.close(); } catch (Exception e) {}
        // DB 연결 종료 로직 (주석 처리)
    }
}