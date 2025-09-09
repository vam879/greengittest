package controller.users.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import dao.StudentDAO;
import dao.ProfessorDAO;
import dao.UsersDAO;
import util.DBHelper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        
        String userId = request.getParameter("id");
        String userPw = request.getParameter("pw");
        String loginType = request.getParameter("login_type");
        
        // 모든 DTO를 담을 수 있는 상위 타입 변수
        Object loggedInUser = null; 

        if (userId == null || userId.isEmpty() || userPw == null || userPw.isEmpty() || loginType == null) {
            response.sendRedirect("login.jsp?error=missing_info");
            return;
        }

        try (Connection conn = DBHelper.getConnection()) {
            
            if ("student".equals(loginType)) {
                StudentDAO studentDao = StudentDAO.getInstance(conn);
                loggedInUser = studentDao.loginAndGetInfo(userId, userPw);
            } else if ("staff".equals(loginType)) {
                ProfessorDAO professorDao = ProfessorDAO.getInstance(conn);
                loggedInUser = professorDao.loginAndGetInfo(userId, userPw);
            } else if ("general".equals(loginType)) {
                UsersDAO userDao = UsersDAO.getInstance(conn);
                loggedInUser = userDao.loginAndGetInfo(userId, userPw);
            }

            if (loggedInUser != null) {
                HttpSession session = request.getSession();
                // 로그인 성공 시 DTO 객체를 세션에 저장
                session.setAttribute("loggedInUser", loggedInUser);
                response.sendRedirect("main.jsp");
            } else {
                response.sendRedirect("login.jsp?error=invalid");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=db_error");
        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }
}