<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>그린대학교 컴퓨터과학과</title>

    <link rel="stylesheet" href="/Green/resource/css/main_style.css">
    
    </head>

<body>
    <div class="topbar">
        <a href="/Green/">HOME</a>
        <a href="#">사이트맵</a>
        <c:choose>
        	<c:when test="${empty loggedInUser }">
        		<a href="/Green/login.do">로그인</a>
        	</c:when>
        	<c:otherwise>
        		<a href="/Green/logout.do">로그아웃</a>
        	</c:otherwise>
        	
        </c:choose>
        <c:choose>
        	<c:when test="${not empty prefixx and prefixx eq 'sys'}">
        		<a href="/Green/management/main.do">학사관리시스템</a>
        	</c:when>
        	<c:otherwise>
        		<a href="./7학생지원/학생지원1-수강신청.html">학생지원</a>
        	</c:otherwise>
        
        </c:choose>
        
     
    </div>

    <header>
        <div class="logo">
            <span><a href="/Green/"><img src="/Green/resource/images/header_logo.png" alt="그린대학교 로고"></a></span>
        </div>
        <nav>
            <ul>
                <li>대학소개
                    <ul>
                    <li><a href="/Green/introduce/greetings.do">총장 인사말</a></li>
                    <li><a href="/Green/introduce/ideology.do">교육이념</a></li>
                    <li><a href="/Green/introduce/history.do">연혁</a></li>
                    <li><a href="/Green/introduce/organization.do">조직도</a></li>
                    <li><a href="/Green/introduce/direction.do">오시는길</a></li>
                    </ul>
                </li>
                <li>입학안내
                    <ul>
                        <li><a href="/Green/notice/list.do?wdist=2">공지사항</a></li>
                        <li><a href="/Green/admiss/early.do">수시모집</a></li>
                        <li><a href="/Green/admiss/regular.do">정시모집</a></li>
                        <li><a href="/Green/admiss/transfer.do">편입학</a></li>
                        <li><a href="${pageContext.request.contextPath}/admiss_info/counsel.do">입학상담</a></li>
                    </ul>
                </li>
                <li>대학·대학원
                    <ul>
                        <li><a href="/Green/department/view.do?college=인문사회대학">인문사회대학</a></li>
                        <li><a href="/Green/department/view.do?college=자연과학대학">자연과학대학</a></li>
                        <li><a href="/Green/department/view.do?college=공과대학">공과대학</a></li>
                        <li><a href="/Green/department/view.do?college=사범대학">사범대학</a></li>
                        <li><a href="/Green/department/view.do?college=대학원">대학원</a></li>
                    </ul>
                </li>
                <li>학사안내
                    <ul>
                        <li><a href="/Green/notice/list.do?wdist=1">공지사항</a></li>
                        <li><a href="../4학사안내/학사안내2-학사일정.html">학사일정</a></li>
                        <li><a href="/Green/students/course/register.do">수강신청</a></li>
                        <li><a href="/Green/academic/grade_view.do">성적</a></li>
                        <li><a href="/Green/academic/graduate.do">수료 및 졸업</a></li>
                        <li><a href="/Green/academic/questions.do">자주하는질문</a></li>
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
                        <li><a href="/Green/notice/list.do?wdist=3">공지사항</a></li>
                        <li><a href="../6커뮤니티/커뮤티니2-뉴스 및 칼럼.html">뉴스 및 칼럼</a></li>
                        <li><a href="../6커뮤니티/커뮤티니3-취업정보.html"></a>취업정보</li>
                        <li><a href="/Green/notice/list.do?wdist=3"></a>자유게시판</li>
                        <li><a href="../6커뮤니티/커뮤티니4-질문과 답변.html">질문 및 답변</a></li>
                        <li><a href="../6커뮤니티/커뮤티니5-자료실.html">자료실</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>

    <section class="main-visual">
        <img src="/Green/resource/images/bg-main-vi01.jpg" alt="배너">
        <div class="text">
            <h2>IT 기술로 세상을 변화시키는 인재를 양성</h2>
            <h1>그린대학교 컴퓨터과학과</h1>
            <p style="opacity: 0.5;">급변하는 컴퓨터 기술의 발전에 선도적으로 참여하고 활용할 수 있는 인력을 배양</p>
            <a href="#" class="btn">학과소개 바로가기</a>
        </div>

 
        <!-- 왼쪽 화살표 -->
        <img src="/Green/resource/images/btn-prev01.png" alt="이전" class="custom-img left">
        <!-- 오른쪽 화살표 -->
        <img src="/Green/resource/images/btn-next01.png" alt="다음" class="custom-img right">
    </section>

    <div class="notice-wrap">
        <div class="board">
            <h3>학사안내</h3>
            <ul>
                <li><span>교과목 폐지 및 신설 안내 <img src="/Green/resource/images/ico-new01.gif"></span> <span>2019.05.29</span></li>
                <li><span>2019-2학기 진로취업 프로그램 <img src="/Green/resource/images/ico-new01.gif"></span> <span>2019.05.29</span></li>
                <li><span>제8회 KNDA 학술논문상 공모</span> <span>2019.05.29</span></li>
                <li><span>대학 진로취업지원 현황 조사</span> <span>2019.05.29</span></li>
            </ul>
        </div>
        <div class="board">
            <h4>공지사항</h4>
            <ul>
                <li><span>교과목 폐지 및 신설 안내 <img src="/Green/resource/images/ico-new02.gif"></span> <span>2019.05.29</span></li>
                <li><span>[진로취업특강] 유망직무 특강 <img src="/Green/resource/images/ico-new02.gif"></span> <span>2019.05.29</span></li>
                <li><span>제8회 KNDA 학술논문상 공모</span> <span>2019.05.29</span></li>
                <li><span>대학 진로취업지원 현황 조사</span> <span>2019.05.29</span></li>
            </ul>
        </div>
    </div>
    
    <section class="photo-gallery">
        <h3>PHOTO GALLERY</h3>
        <div class="gallery">
            <div class="gallery-item">
                <img src="/Green/resource/images/gallary_sample1.jpg" alt="갤러리1">
                <div class="caption">갤러리1</div>
            </div>
            <div class="gallery-item">
                <img src="/Green/resource/images/gallary_sample2.jpg" alt="갤러리2">
                <div class="caption">갤러리2</div>
            </div>
            <div class="gallery-item">
                <img src="/Green/resource/images/gallary_sample3.jpg" alt="갤러리3">
                <div class="caption">갤러리3</div>
            </div>
            <div class="gallery-item">
                <img src="/Green/resource/images/gallary_sample4.png" alt="갤러리4">
                <div class="caption">갤러리4</div>
            </div>
        </div>
    </section>

    <section class="club">
        <div>
            <h3>동아리 HELPER</h3>
            <p>공무원 시험 준비반을 운영함으로써 학생들에게 인터넷 강의와 교재를 제공하고 있습니다.</p>
        </div>
        <a href="#" class="btn">자세히 보기</a>
    </section>

    <div class="bottom-section">
        <div class="news">
            <h3>뉴스 및 칼럼</h3>
            <ul>
                <li><span>교과목 폐지 및 신설 안내</span> <span>2019.05.29</span></li>
                <li><span>2019-2학기 진로취업 프로그램설계를 위한 학생 대상...</span> <span>2019.05.29</span></li>
                <li><span>제8회 KNDA 학술논문상 공모</span> <span>2019.05.29</span></li>
                <li><span>대학 진로취업지원 현황 조사 안내</span> <span>2019.05.29</span></li>
                <li><span>[진로취업특강] 유망직무 전문가 초청 특강,여대생 커...</span> <span>2019.05.29</span></li>
            </ul>
        </div>
        <div class="smart-link">
            <h3>SMART LINK</h3>
                <ul>
        <li>
            <div class="icon-wrapper">
                <img src="/Green/resource/images/bg-main-link01.png" alt="입학안내">
                <p>입학안내</p>
            </div>

        </li>
        <li>
            <div class="icon-wrapper">
                <img src="/Green/resource/images/bg-main-link02.png" alt="학사일정">
                <p>학사일정</p>
            </div>
        </li>
        <li>
            <div class="icon-wrapper">
                <img src="/Green/resource/images/bg-main-link03.png" alt="학생회">
                <p>학생회</p>
            </div>
        </li>
        <li>
            <div class="icon-wrapper">
                <img src="/Green/resource/images/bg-main-link04.png" alt="교과과정">
                <p>교과과정</p>
            </div>
        </li>
        <li>
            <div class="icon-wrapper">
                <img src="/Green/resource/images/bg-main-link05.png" alt="취업안내">
                <p>취업안내</p>
            </div>
        </li>
    </ul>
        </div>
    </div>
    <footer>
        <div class="footer-top">
            <ul>
                <li><a href="#">개인정보처리방침</a></li>
                <li><a href="#">통합정보시스템</a></li>
                <li><a href="#">학사일정</a></li>
                <li><a href="#">주요업무 연락</a></li>
                <li><a href="#">교내공지사항</a></li>
            </ul>
        </div>
        <div class="footer-mid">
            <div class="footer-info">
                <div class="logo">
                    <img src="/Green/resource/images/footer_logo.png" alt="그린대학교 로고">
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
