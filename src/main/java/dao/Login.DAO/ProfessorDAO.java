package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProfessorDAO {
    private Connection conn;

    public ProfessorDAO(Connection conn) {
        this.conn = conn;
    }

    public boolean checkLogin(String professorId, String password) throws SQLException {
        String sql = "SELECT COUNT(*) FROM professor_info WHERE professor_id = ? AND password = ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, professorId);
            pstmt.setString(2, password);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1) > 0;
                }
            }
        }
        return false;
    }
}