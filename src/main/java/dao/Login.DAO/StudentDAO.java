package dao;

import dto.StudentDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class StudentDAO {
    private static StudentDAO instance;
    private Connection conn;

    private StudentDAO(Connection conn) { this.conn = conn; }
    public static StudentDAO getInstance(Connection conn) {
        if (instance == null) {
            instance = new StudentDAO(conn);
        }
        return instance;
    }

    // 로그인 성공 시 StudentDTO 객체 전체를 반환
    public StudentDTO loginAndGetInfo(String studentId, String password) throws SQLException {
        // 모든 필드를 가져오는 SQL 쿼리. DB의 실제 컬럼명과 일치하는지 확인하세요.
        String sql = "SELECT std_no, std_jumin, std_name, std_eng_name, std_gen, std_nation, std_hp, std_email, std_addr, std_seq, std_ent, std_ent_grade, std_ent_sem, std_status, dep_no, pro_no FROM student_info WHERE std_no = ? AND std_pass = ?";
        
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, studentId);
            pstmt.setString(2, password);
            
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    // StudentDTO의 모든 필드를 매핑하여 객체 생성 후 반환
                    return new StudentDTO(
                        rs.getString("std_no"),
                        rs.getString("std_jumin"),
                        rs.getString("std_name"),
                        rs.getString("std_eng_name"),
                        rs.getString("std_gen"),
                        rs.getString("std_nation"),
                        rs.getString("std_hp"),
                        rs.getString("std_email"),
                        rs.getString("std_addr"),
                        rs.getInt("std_seq"),
                        rs.getInt("std_ent"),
                        rs.getInt("std_ent_grade"),
                        rs.getInt("std_ent_sem"),
                        rs.getString("std_status"),
                        rs.getInt("dep_no"),
                        rs.getInt("pro_no")
                    );
                }
            }
        }
        return null;
    }
}