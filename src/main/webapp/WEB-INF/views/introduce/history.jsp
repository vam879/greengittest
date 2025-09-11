<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="./header.jsp" %>

<body>
    <div class="topbar">

        <a href="/Green/">HOME</a>
        <a href="../main.html">사이트맵</a>

        <c:choose>
        	<c:when test="${empty loggedInUser }">
        		<a href="/Green/login.do">로그인</a>
        	</c:when>
        	<c:otherwise>
        		<a href="/Green/logout.do">로그아웃</a>
        	</c:otherwise>
        	
        </c:choose>
        <a href="../7학생지원/학생지원1-수강신청.html">학생지원</a>
    </div>

    <header>
        <div class="logo">
            <span><img src="/Green/resource/images/header_logo.png" alt="그린대학교 로고"></span>
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
                        <li><a href="../2입학안내/입학안내5-입학상담.html">입학상담</a></li>
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
                        <li><a href="../4학사안내/학사안내3-수강신청.html">수강신청</a></li>
                        <li><a href="../4학사안내/학사안내4-성적.html">성적</a></li>
                        <li><a href="../4학사안내/학사안내5-수료 및 졸업.html">수료 및 졸업</a></li>
                        <li><a href="../4학사안내/학사안내6-자주하는질문.html">자주하는질문</a></li>
                    </ul>
                </li>
                <li>대학생활
                    <ul>
                       <li><a href="../5대학생활/대학생활1-학생회소개.html">학생회소개</a></li>
                        <li><a href="../5대학생활/대학생활2-스터디.html">동아리/스터디</a></li>
                        <li><a href="../5대학생활/대학생활3-식단안내.html">식단안내</a></li>
                        <li><a href="../5대학생활/대학생활4-갤러리.html">갤러리</a></li>
                    </ul>
                </li>
                <li>커뮤니티
                    <ul>
                        <li><a href="../6커뮤니티/커뮤티니1-공지사항.html">공지사항</a></li>
                        <li><a href="../6커뮤니티/커뮤티니2-뉴스 및 칼럼.html">뉴스 및 칼럼</a></li>
                        <li><a href="../6커뮤니티/커뮤티니3-취업정보.html"></a>취업정보</li>
   		                <li><a href="../6커뮤니티/커뮤티니4-자유게시판.html"></a>자유게시판</li>
                        <li><a href="../6커뮤니티/커뮤티니5-질문과 답변.html">질문 및 답변</a></li>
                        <li><a href="../6커뮤니티/커뮤티니6-자료실.html">자료실</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>

    <div class="breadcrumb-bar">
        <div class="breadcrumb-content">
            <span class="home-icon">
                <a href="#">
                    <svg xmlns="/Green/resource/images/ico-home.png" height="16" viewBox="0 -960 960 960" width="16" fill="#333333">
                        <path d="M240-200h120v-240h240v240h120v-360L480-740 240-560v360Zm-80 80v-480l320-240 320 240v480H520v-240h-80v240H160Zm320-350Z"/>
                    </svg>
                </a>
            </span>
            <span class="path-divider"> > </span>
            <a href="#">대학소개</a>
            <span class="path-divider"> > </span>
            <a href="#">연혁</a>
        </div>
    </div>

    <!-- ===========================
         본문 (대학생활 사이드바 + 콘텐츠)
    ============================ -->
    <div class="container">
        <aside class="sidebar">
            <h2>대학소개</h2>
            <ul>
                <a href="/Green/introduce/greetings.do"><li>총장 인사말</li></a>
                <a href="/Green/introduce/ideology.do"><li>교육이념</li></a>
                <a href="/Green/introduce/history.do"><li style="background-color: #3F97F6;color: white;">연혁</li></a>
                <a href="/Green/introduce/organization.do"><li>조직도</li></a>
                <a href="/Green/introduce/direction.do"><li>오시는길</li></a>
            </ul>
        </aside>
        <main class="content">
            <h2>연혁</h2>
            <hr style="border: none; border-top: 3px solid #000; margin: 5px 0 20px 0;">
            <p>콘텐츠 내용 꾸미기</p>
        </main>
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
