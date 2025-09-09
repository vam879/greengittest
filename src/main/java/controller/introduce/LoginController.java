package controller.introduce;

import java.io.IOException;
import java.sql.Connection;

import dao.UserDAO;
import dto.LoginDTO;
import util.DBHelper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        
        String userId = request.getParameter("id");
        String userPw = request.getParameter("pw");
        
        
        // DTO에 데이터 담기
        LoginDTO user = new LoginDTO();
        try {
            user.setUs_id(Integer.parseInt(userId));  
            user.setUs_pass(userPw);
        } catch (NumberFormatException e) {
            // id가 숫자가 아닐 경우 바로 로그인 실패 처리
            response.sendRedirect("login.jsp?error=invalid");
            return;
        }

        // DB 연결은 별도 유틸로 가져온다고 가정 (ex: DBUtil.getConnection())

        try {
            Connection conn = DBHelper.getConnection(); // 네 환경에 맞는 DB 연결 코드 필요
            UserDAO dao = new UserDAO(conn);

            boolean isLoginSuccess = dao.checkLogin(user);

            if (isLoginSuccess) {
                HttpSession session = request.getSession();
                session.setAttribute("loggedInUser", user);
                response.sendRedirect("main.jsp");
            } else {
                response.sendRedirect("login.jsp?error=invalid");
            }
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}