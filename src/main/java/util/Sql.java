package util;

public class Sql {
	
	public static final String SELECT_DEPARTMENTS_BY_COLLEGE = "select dep_name, dep_king, dep_hp from department where college=?";
	
	public static final String DEPARTMENT_INSERT = "insert into department (dep_no, college, dep_name, dep_eng_name, dep_est_date, dep_king, dep_hp, dep_office) values (?,?,?,?,?,?,?,?)";
	
	public static final String DEPARTMENT_FIND_ALL = "SELECT "
			+ "	d.dep_no, "
			+ "    college, "
			+ "    dep_name, "
			+ "    dep_king, "
			+ "    dep_hp, "
			+ "    count(p.pro_no), "
			+ "    count(std_no) "
			+ "FROM department d "
			+ "left join professor p using (dep_no) "
			+ "left join student s using (pro_no) "
			+ "group by dep_no, college, dep_name, dep_king, dep_hp";
			
	public static final String DEPARTMENT_FIND_PAGE = "SELECT d.dep_no, "
			+ "       d.college, "
			+ "       d.dep_name, "
			+ "       d.dep_king, "
			+ "       d.dep_hp, "
			+ "       COALESCE(p.pro_count, 0) AS pro_num, "
			+ "       COALESCE(s.std_count, 0) AS std_num, "
			+ "       COALESCE(c.cs_count, 0) AS cs_num "
			+ "FROM department d "
			+ "LEFT JOIN ( "
			+ "    SELECT dep_no, COUNT(*) AS pro_count "
			+ "    FROM professor "
			+ "    GROUP BY dep_no "
			+ ") p ON d.dep_no = p.dep_no "
			+ "LEFT JOIN ( "
			+ "    SELECT dep_no, COUNT(*) AS std_count "
			+ "    FROM student "
			+ "    GROUP BY dep_no "
			+ ") s ON d.dep_no = s.dep_no "
			+ "LEFT JOIN ( "
			+ "    SELECT dep_no, COUNT(*) AS cs_count "
			+ "    FROM course "
			+ "    GROUP BY dep_no "
			+ ") c ON d.dep_no = c.dep_no "
			+ "LIMIT ? OFFSET ?";
			
		
	public static final String DEPARTMENT_COUNT = "SELECT COUNT(*) FROM department";
	
	// ID MAX 구하기
    public static final String SELECT_ADMISS_NOTICE_MAX_ID = "SELECT MAX(ID) FROM TB_ADMISS_NOTICE";
    // 글 삽입
    public static final String INSERT_ADMISS_NOTICE = "INSERT INTO TB_ADMISS_NOTICE (TITLE, CONTENT, WRITER, CREATED_AT, VIEWS) VALUES (?, ?, ?, CURDATE(), 0)";
    // 모든 글 가져오기
    public static final String SELECT_ADMISS_NOTICE_ALL = "SELECT * FROM TB_ADMISS_NOTICE "
                                                            + "ORDER BY ID DESC "
                                                            + "LIMIT 3 OFFSET ?;";
    // 글 개수 구하기
    public static final String SELECT_ADMISS_NOTICE_COUNT_TOTAL = "SELECT COUNT(*) FROM TB_ADMISS_NOTICE";
    public static final String SELECT_ADMISS_NOTICE_COUNT_BY_DIST = "SELECT COUNT(*) FROM Article where wdist=? ";

    // 검색
    public static final String SELECT_ADMISS_NOTICE_SEARCH = "SELECT * FROM Article WHERE wdist=? ";
    public static final String SELECT_ADMISS_NOTICE_COUNT_SEARCH = "SELECT COUNT(*) FROM Article ";
    public static final String SEARCH_WHERE_TITLE = "and TITLE LIKE ? ";
    public static final String SEARCH_WHERE_CONTENT = "and CONTENT LIKE ? ";
    public static final String SEARCH_WHERE_WRITER = "and WRITER LIKE ? ";
    public static final String SEARCH_ORDER_ID = "ORDER BY ano DESC ";
    public static final String SEARCH_OFFSET_ROW = "LIMIT ? OFFSET ?";
	
	
}