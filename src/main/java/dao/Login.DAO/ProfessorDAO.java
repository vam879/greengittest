package dao;

import dto.ProfessorDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProfessorDAO {
    private static ProfessorDAO instance;
    private Connection conn;

    private ProfessorDAO(Connection conn) { this.conn = conn; }
    public static ProfessorDAO getInstance(Connection conn) {
        if (instance == null) {
            instance = new ProfessorDAO(conn);
        }
        return instance;
    }

    // 로그인 성공 시 ProfessorDTO 객체 전체를 반환
    public ProfessorDTO loginAndGetInfo(String professorId, String password) throws SQLException {
        // 모든 필드를 가져오는 SQL 쿼리. DB의 실제 컬럼명과 일치하는지 확인하세요.
        String sql = "SELECT pro_no, pro_jumin, pro_name, pro_eng_name, pro_gen, pro_nation, pro_hp, pro_email, pro_addr, pro_univ, pro_grad_date, pro_degree, pro_appint_date, pro_position, pro_status, pro_seq, dep_no FROM professor_info WHERE pro_no = ? AND pro_pass = ?";
        
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, professorId);
            pstmt.setString(2, password);
            
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    // ProfessorDTO의 모든 필드를 매핑하여 객체 생성 후 반환
                    return new ProfessorDTO(
                        rs.getInt("pro_no"),
                        rs.getString("pro_jumin"),
                        rs.getString("pro_name"),
                        rs.getString("pro_eng_name"),
                        rs.getString("pro_gen"),
                        rs.getString("pro_nation"),
                        rs.getString("pro_hp"),
                        rs.getString("pro_email"),
                        rs.getString("pro_addr"),
                        rs.getString("pro_univ"),
                        rs.getString("pro_grad_date"),
                        rs.getString("pro_degree"),
                        rs.getString("pro_appint_date"),
                        rs.getString("pro_position"),
                        rs.getString("pro_status"),
                        rs.getInt("pro_seq"),
                        rs.getInt("dep_no")
                    );
                }
            }
        }
        return null;
    }
}