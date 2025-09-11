<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
    
<%@ include file="./header.jsp" %>

<body>
    <div class="topbar">
        <a href="../main.html">HOME</a>
        <a href="../main.html">사이트맵</a>
        <a href="../8회원/회원1-로그인.html">로그인</a>
        <a href="../7학생지원/학생지원1-수강신청.html">학생지원</a>
    </div>

    <header>
        <div class="logo">
            <span><img src="./images/header_logo.png" alt="그린대학교 로고"></span>
        </div>
        <nav>
            <ul>
                <li>대학소개
                    <ul>
                    <li><a href="../1대학소개/대학소개1-총장인사말.html">총장 인사말</a></li>
                    <li><a href="../1대학소개/대학소개2-교육이념.html">교육이념</a></li>
                    <li><a href="../1대학소개/대학소개3-연혁.html">연혁</a></li>
                    <li><a href="../1대학소개/대학소개4-조직도.html">조직도</a></li>
                    <li><a href="../1대학소개/대학소개5-오시는길.html">오시는길</a></li>
                    </ul>
                </li>
                <li>입학안내
                    <ul>
                        <li><a href="../2입학안내/입학안내1-공지사항.html">공지사항</a></li>
                        <li><a href="../2입학안내/입학안내2-수시모집.html">수시모집</a></li>
                        <li><a href="../2입학안내/입학안내3-정시모집.html">정시모집</a></li>
                        <li><a href="../2입학안내/입학안내4-편입학.html">편입학</a></li>
                        <li><a href="../2입학안내/입학안내5-입학상담.html">입학상담</a></li>
                    </ul>
                </li>
                <li>대학·대학원
                    <ul>
                        <li><a href="../3대학.대학원/대학대학원1-인문사회대학.html">인문사회대학</a></li>
                        <li><a href="../3대학.대학원/대학대학원2-자연과학대학.html">자연과학대학</a></li>
                        <li><a href="../3대학.대학원/대학대학원3-공과대학.html">공과대학</a></li>
                        <li><a href="../3대학.대학원/대학대학원4-사범대학.html">사범대학</a></li>
                        <li><a href="../3대학.대학원/대학대학원5-대학원.html">대학원</a></li>
                    </ul>
                </li>
                <li>학사안내
                    <ul>
                        <li><a href="../4학사안내/학사안내1-공지사항.html">공지사항</a></li>
                        <li><a href="../4학사안내/학사안내2-학사일정.html">학사일정</a></li>
                        <li><a href="../4학사안내/학사안내3-수강신청.html">수강신청</a></li>
                        <li><a href="../4학사안내/학사안내4-성적.html">성적</a></li>
                        <li><a href="../4학사안내/학사안내5-수료 및 졸업.html">수료 및 졸업</a></li>
                        <li><a href="../4학사안내/학사안내6-자주하는질문.html">자주하는질문</a></li>
                    </ul>
                </li>
                <li>대학생활
                    <ul>
                        <li><a href="../5대학생활/대학생활1-학생회소개.html">학생회소개</a></li>
                        <li><a href="../5대학생활/대학생활2-스터디.html">스터디</a></li>
                        <li><a href="../5대학생활/대학생활3-식단안내.html">식단안내</a></li>
                        <li><a href="../5대학생활/대학생활4-갤러리.html">갤러리</a></li>
                    </ul>
                </li>
                <li>커뮤니티
                    <ul>
                        <li><a href="../6커뮤니티/커뮤티니1-공지사항.html">공지사항</a></li>
                        <li><a href="../6커뮤니티/커뮤티니2-뉴스 및 칼럼.html">뉴스 및 칼럼</a></li>
                        <li><a href="../6커뮤니티/커뮤티니3-취업정보.html"></a>취업정보</li>
                        <li><a href="../6커뮤니티/커뮤티니4-질문과 답변.html">질문 및 답변</a></li>
                        <li><a href="../6커뮤니티/커뮤티니5-자료실.html">자료실</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>

    <div class="breadcrumb-bar">
        <div class="breadcrumb-content">
            <span class="home-icon">
                <a href="#">
                    <svg xmlns="./images/ico-home.png" height="16" viewBox="0 -960 960 960" width="16" fill="#333333">
                        <path d="M240-200h120v-240h240v240h120v-360L480-740 240-560v360Zm-80 80v-480l320-240 320 240v480H520v-240h-80v240H160Zm320-350Z"/>
                    </svg>
                </a>
            </span>
            <span class="path-divider"> > </span>
            <p></p>
            <a href="#">입학안내</a>
            <p></p>
            <span class="path-divider"> > </span>
            <p></p>
            <a href="#">입학상담</a>
        </div>
    </div>

    <!-- ===========================
         본문 (대학생활 사이드바 + 콘텐츠)
    ============================ -->
    <div class="container">
        <aside class="sidebar">
            <h2>입학안내</h2>
            <ul>
                <li><a href="./입학안내1-공지사항.html">공지사항</a></li>
                <li><a href="./입학안내2-수시모집.html">수시모집</a></li>
                <li><a href="./입학안내3-정시모집.html">정시모집</a></li>
                <li><a href="./입학안내4-편입학.html">편입학</a></li>
                <li class="highlight"><a href="./입학안내5-입학상담.html">입학상담</a></li>
            </ul>
        </aside>
        <main class="content">
            <h2>입학상담</h2>
			            <hr style="border: none; border-top: 3px solid #000; margin: 5px 0 20px 0;">
			               <form action="${pageContext.request.contextPath}/admiss_info/counselWrite.do" method="post">
							    <div>
							        <label>제목</label><br>
							        <input type="text" name="title" required>
							    </div>
							    <div>
							        <label>내용</label><br>
							        <textarea name="content" rows="5" cols="50" required></textarea>
							    </div>
							    <div>
							        <label>작성자</label><br>
							        <input type="text" name="writer" required>
							    </div>
							    <div>
							        <label>구분</label><br>
							        <select name="wdist">
							            <option value="1">수시</option>
							            <option value="2">공지</option>
							            <option value="3">정시</option>
							        </select>
							    </div>
							    <div style="margin-top:10px;">
							        <button type="submit" class="btn btn-primary">등록</button>
							        <a href="${pageContext.request.contextPath}/admiss_info/counsel.do"><button type="button">취소</button></a>
							    </div>
				                        </table>
						                    </div>
				                </div>
				                < <div class="page-wrapper">
				                    <div class="page">
				                        <c:if test="${page > 1}">
									        <a href="?page=1&wdist=2"><img src="/Green/resource/images/btn-first-page.png" alt="첫 페이지" class="pagination-arrow first" style="margin-top: 4px"></a>
									        <a href="?page=${page-1}&wdist=2"><img src="/Green/resource/images/btn-prev-page.png" alt="이전 페이지" class="pagination-arrow prev" style="margin-top: 4px"></a>
									    </c:if>
									
									    <c:forEach var="i" begin="1" end="${totalPages}">
									        <a href="?page=${i}&wdist=2" >
									            <button class="${i == page ? 'active' : ''} page-btn">${i}</button>
									        </a>
									    </c:forEach>
									
									    <c:if test="${page < totalPages}">
									        <a href="?page=${page+1}&wdist=2"><img src="/Green/resource/images/btn-next-page.png" alt="다음 페이지" class="pagination-arrow next" style="margin-top: 5px"></a>
									        <a href="?page=${totalPages}&wdist=2"><img src="/Green/resource/images/btn-last-page.png" alt="마지막 페이지" class="pagination-arrow last" style="margin-top: 4px"></a>
									    </c:if>
				                    </div>
				                    <div style="text-align: right; margin-top: 20px;">
										<a href="/admiss_info/counselWrite.do"><button class="btn btn-primary">문의하기</button></a>
									</div>
				                    
				                </div>   
						</main>
						</div>

    <footer>
        <div class="footer-top">
            <ul>
                <li><a href="#">개인정보처리방침</a></li>
                <li><a href="#">통합정보시스템</a></li>
                <li><a href="../4학사안내/학사안내2-학사일정.html">학사일정</a></li>
                <li><a href="#">주요업무 연락</a></li>
                <li><a href="../4학사안내/학사안내1-공지사항.html">교내공지사항</a></li>
            </ul>
        </div>
        <div class="footer-mid">
            <div class="footer-info">
                <div class="logo">
                    <img src="./images/footer_logo.png" alt="그린대학교 로고">
                </div>
                <div class="address-info">
                    <span>그린대학교</span>
                    <span>[12345]부산광역시 부산진구 부전대로 123 그린대학교 / 대표전화 : 051-123-1000</span>
                    <span>입학안내 : 051-123-1302 팩스 : 051-123-3333</span>
                </div>
            </div>
            <div class="family-site-wrap">
                <div class="family-site-btn">
                    주요사이트
                    <div class="arrow"></div>
                </div>
                <ul class="family-site-list">
                    <li><a href="#">그린대학교</a></li>
                    <li><a href="#">컴퓨터과학과</a></li>
                    <li><a href="#">학생지원센터</a></li>
                </ul>
            </div>
        </div>
        <p class="copyright">copyright © Green University All rights reserved.</p>
    </footer>
</body>
</html>
