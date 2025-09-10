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
	
	
	
	
	
	// users - register 회원가입 
	public static final String INSERT_USERS = "INSERT INTO users (US_ID, US_PASS, US_NAME, US_HP, US_EMAIL, US_ADDR) " 
			+ "VALUES (?,  SHA2(?, 256), ?, ?, ?, ?)"; 
	
	public static final String SELECT_COUNT = "SELECT COUNT(*) FROM USERS";
	public static final String WHERE_US_ID = "WHERE US_ID=?";
	public static final String WHERE_US_HP = "WHERE US_HP=?";
	public static final String WHERE_US_EMAIL = "WHERE US_EMAIL=?";
	
	public static final String SELECT_USERS_BY_PASS = "SELECT * FROM USERS WHERE US_ID=? AND US_PASS=STANDARD_HASH(?, 'SHA256')";


}