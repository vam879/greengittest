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
        
        boolean isLoginSuccess = false;

        if (userId == null || userId.isEmpty() || userPw == null || userPw.isEmpty() || loginType == null) {
            response.sendRedirect("login.jsp?error=missing_info");
            return;
        }

        try (Connection conn = DBHelper.getConnection()) {
            
            if ("student".equals(loginType)) {
                StudentDAO studentDao = new StudentDAO(conn);
                isLoginSuccess = studentDao.checkLogin(userId, userPw);
            } else if ("staff".equals(loginType)) {
                ProfessorDAO professorDao = new ProfessorDAO(conn);
                isLoginSuccess = professorDao.checkLogin(userId, userPw);
            } else if ("general".equals(loginType)) {
                UsersDAO userDao = new UsersDAO(conn);
                isLoginSuccess = userDao.checkLogin(userId, userPw);
            }

            if (isLoginSuccess) {
                // 로그인 성공 시 세션에 단순 상태만 저장
                HttpSession session = request.getSession();
                session.setAttribute("isLoggedIn", true); 
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