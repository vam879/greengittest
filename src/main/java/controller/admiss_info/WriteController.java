package controller.admiss_info;

import java.io.IOException;

import dao.CounselDAO;
import dto.CounselDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admiss_info/counselWrite.do")
public class WriteController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CounselDAO dao = CounselDAO.getInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 글쓰기 폼으로 이동
        RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/views/admiss_info/counselWrite.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String title = req.getParameter("title");
        String content = req.getParameter("content");
        String writer = req.getParameter("writer");
        int wdist = Integer.parseInt(req.getParameter("wdist"));

        CounselDTO dto = new CounselDTO();
        dto.setTitle(title);
        dto.setContent(content);
        dto.setWriter(writer);
        dto.setWdist(wdist);
        dto.setStatus("답변중");

        dao.insert(dto);

        // 등록 후 목록으로 이동
        resp.sendRedirect(req.getContextPath() + "/admiss_info/counsel.do");
    }
}
