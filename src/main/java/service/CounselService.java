package service;

import java.util.List;

import dao.CounselDAO;
import dto.CounselDTO;
import dto.PagenationDTO;

public enum CounselService {
    INSTANCE;

    private CounselDAO dao = CounselDAO.getInstance();

    public void register(CounselDTO dto) {
        dao.insert(dto);
    }

    public CounselDTO findOne(int ano) {
        return dao.selectOne(ano);
    }

    public List<CounselDTO> findPage(int offset, int pageSize) {
        return dao.selectPage(offset, pageSize);
    }

    public int countAll() {
        return dao.selectCountTotal();
    }

   

    // 페이징 계산 로직 (ArticleService의 getPagenationDTO 재사용 가능)
    public PagenationDTO getPagenationDTO(String pg, int pageSize) {
        int total = dao.selectCountTotal();
        int count = pageSize;

        // 마지막 페이지
        int lastPageNum = (total % count == 0) ? (total / count) : (total / count + 1);

        // 현재 페이지
        int currentPage = 1;
        if (pg != null) currentPage = Integer.parseInt(pg);

        int start = (currentPage - 1) * count;

        // 페이지 그룹 계산
        int currentPageGroup = (int) Math.ceil(currentPage / (double)count);
        int pageGroupStart = (currentPageGroup - 1) * count + 1;
        int pageGroupEnd = Math.min(currentPageGroup * count, lastPageNum);

        // 현재 페이지 글 시작 번호
        int currentPageStartNum = total - (currentPage - 1) * count;

        PagenationDTO dto = new PagenationDTO();
        dto.setTotal(total);
        dto.setStart(start);
        dto.setCurrentPage(currentPage);
        dto.setCurrentPageStartNum(currentPageStartNum);
        dto.setLastPageNum(lastPageNum);
        dto.setPageGroupStart(pageGroupStart);
        dto.setPageGroupEnd(pageGroupEnd);

        return dto;
    }
}