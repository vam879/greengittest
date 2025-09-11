package dao;

import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.DataSource;

import dto.NoticeDTO;

public class NoticeDAO {
    private DataSource dataSource;

    public NoticeDAO() {
        try {
            Context initContext = new InitialContext();
            Context envContext = (Context) initContext.lookup("java:/comp/env");
            dataSource = (DataSource) envContext.lookup("jdbc/green");
        } catch (NamingException e) {
            e.printStackTrace();
        }
    }

    public List<NoticeDTO> getNoticeList() {
        List<NoticeDTO> list = new ArrayList<>();
        String sql = "SELECT * FROM notice ORDER BY regdate DESC";

        try (
            Connection conn = dataSource.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery()
        ) {
            while (rs.next()) {
                NoticeDTO dto = new NoticeDTO();
                dto.setN_id(rs.getInt("n_id"));
                dto.setN_title(rs.getString("n_title"));
                dto.setN_content(rs.getString("n_content"));
                dto.setN_regdate(rs.getString("n_regdate"));
                dto.setN_views(rs.getInt("n_views")); // 조회수
                list.add(dto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }
    public NoticeDTO getNoticeById(int id) {
        NoticeDTO dto = null;

        String updateSql = "UPDATE notice SET views = views + 1 WHERE id = ?";
        String selectSql = "SELECT id, title, content, regdate, views FROM notice WHERE id = ?";

        try (
            Connection conn = dataSource.getConnection();
            PreparedStatement updateStmt = conn.prepareStatement(updateSql);
            PreparedStatement selectStmt = conn.prepareStatement(selectSql)
        ) {
            // 조회수 증가
            updateStmt.setInt(1, id);
            updateStmt.executeUpdate();

            // 데이터 조회
            selectStmt.setInt(1, id);
            ResultSet rs = selectStmt.executeQuery();

            if (rs.next()) {
                dto = new NoticeDTO();
                dto.setN_id(rs.getInt("n_id"));
                dto.setN_title(rs.getString("n_title"));
                dto.setN_content(rs.getString("n_content"));
                dto.setN_regdate(rs.getString("n_regdate"));
                dto.setN_views(rs.getInt("n_views")); // 조회수
            }

            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dto;
    }

}
