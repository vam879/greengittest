package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsersDAO {
    private Connection conn;

    public UsersDAO(Connection conn) {
        this.conn = conn;
    }

    public boolean checkLogin(String userId, String password) throws SQLException {
        String sql = "SELECT COUNT(*) FROM user_info WHERE user_id = ? AND password = ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, userId);
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