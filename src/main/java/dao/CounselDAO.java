package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.CounselDTO;
import util.DBHelper;
import util.Sql;

public class CounselDAO extends DBHelper {

    private final static CounselDAO INSTANCE = new CounselDAO();
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    public static CounselDAO getInstance() {
        return INSTANCE;
    }

    private CounselDAO() {}

    /** 상담 등록 */
    public int insert(CounselDTO dto) {
        int id = 0;
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(Sql.INSERT_COUNSEL);
            psmt.setString(1, dto.getTitle());
            psmt.setString(2, dto.getContent());
            psmt.setString(3, dto.getWriter());
            psmt.setInt(4, dto.getWdist());
            psmt.executeUpdate();

            rs = psmt.getGeneratedKeys();
            if (rs.next()) {
                id = rs.getInt(1);
            }
            closeAll();
        } catch (Exception e) {
            logger.error("Counsel insert 오류: " + e.getMessage());
        }
        return id;
    }


    /** 페이징 목록 조회 */
    public List<CounselDTO> selectPage(int offset, int pageSize) {
    	List<CounselDTO> list = new ArrayList<>();
    	String sql = "SELECT ano, title, content,writer, wdate, wdist, hit_cnt, status FROM counsel ORDER BY ano DESC LIMIT ? OFFSET ?";

    	try {
    		conn = getConnection();
    		psmt = conn.prepareStatement(Sql.SELECT_COUNSEL_PAGE);
    		psmt.setInt(1, pageSize);
    		psmt.setInt(2, offset);
    		rs = psmt.executeQuery();

    		while (rs.next()) {
    			CounselDTO dto = new CounselDTO();
    			dto.setAno(rs.getInt("ano"));
    			dto.setTitle(rs.getString("title"));
    			dto.setContent(rs.getString("content"));
    			dto.setWriter(rs.getString("writer"));
    			dto.setWdate(rs.getDate("wdate").toString());
    			dto.setWdist(rs.getInt("wdist"));
    			dto.setHit_cnt(rs.getInt("hit_cnt"));
    			dto.setStatus(rs.getString("status")); // 예: "답변완료"
    			list.add(dto);
    		}
    		closeAll();
    	} catch (Exception e) {
    		logger.error("selectPage 오류: " + e.getMessage());
    	}
    	return list;
    }

    public int selectCountTotal() {
    	int count = 0;
    	String sql = "SELECT COUNT(*) FROM counsel";
    	try {
    		conn = getConnection();
    		stmt = conn.createStatement();
    		rs = stmt.executeQuery(sql);
    		if (rs.next()) {
    			count = rs.getInt(1);
    		}
    		closeAll();
    	} catch (Exception e) {
    		logger.error("selectCountTotal 오류: " + e.getMessage());
    	}
    	return count;
    }


    /** 단일 조회 */
    public CounselDTO selectOne(int ano) {
        CounselDTO dto = null;
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(Sql.SELECT_COUNSEL_ONE);
            psmt.setInt(1, ano);
            rs = psmt.executeQuery();

            if (rs.next()) {
                dto = new CounselDTO();
                dto.setAno(rs.getInt("ano"));
                dto.setWdist(rs.getInt("wdist"));
                dto.setTitle(rs.getString("title"));
                dto.setContent(rs.getString("content"));
                dto.setWriter(rs.getString("writer"));
                dto.setWdate(rs.getString("wdate"));
                dto.setStatus(rs.getString("status"));
            }
            closeAll();
        } catch (Exception e) {
            logger.error("selectOne error", e);
        }
        return dto;
    }
}