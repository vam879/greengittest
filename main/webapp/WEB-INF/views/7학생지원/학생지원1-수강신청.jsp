<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./학생지원_공통.css">
    <style>
       /* ───────── 수강신청 메인 UI (content 범위) ───────── */

        /* 검색 박스 */
        .content .search-box{
        display:flex;
        justify-content:center;
        align-items:center;
        gap:8px;
       
        margin-left: 550px;
        }
        .content .search-box select,
        .content .search-box input[type="text"]{
        height:40px;
        padding:0 12px;
        border:1px solid #D5D9DC;
        border-radius:4px;
        font-size:14px;
        box-sizing:border-box;
        }
        .content .search-box select{ width:140px; }
        .content .search-box input[type="text"]{ width:340px; }
        .content .search-box button{
        height:40px;
        min-width:72px;
        padding:0 14px;
        border:none;
        border-radius:4px;
        background:#3F97F6;
        color:#fff;
        font-size:14px;
        cursor:pointer;
        }
        .content .search-box button:hover{ filter:brightness(0.95); }

        /* 테이블 */
        .content .course-table{
        width:100%;
        border-collapse:collapse;
        table-layout:fixed;
        margin-top:6px;
        border-top:3px solid #000;         /* 상단 굵은 라인 */
        }
        .content .course-table th,
        .content .course-table td{
        border:none;
        border-bottom:1px solid #E6E8EB;   /* 아래쪽만 라인 */
        text-align:center;
        padding:12px 8px;
        font-size:14px;
        color:#333;
        height:52px;
        box-sizing:border-box;
        }
        .content .course-table thead th{
        background:#FAFBFC;
        font-weight:700;
        height:46px;
        border-bottom:1px solid #000;      /* 헤더 하단 진한 라인 */
        }
        
        .content .course-table tbody tr:hover{ background:#F6FAFF; }

        /* 신청 버튼 */
        .content .apply-btn{
        min-width:60px;
        height:30px;
        padding:0 12px;
        border:none;
        border-radius:4px;
        background:#0B2C5F;
        color:#fff;
        font-size:13px;
        cursor:pointer;
        }
        .content .apply-btn:hover{ background:#144080; }
        .content .apply-btn:disabled{
        opacity:.55;
        cursor:not-allowed;
        }

        /* 페이지네이션 */
        .content .pagination{
        display:flex;
        justify-content:center;
        align-items:center;
        gap:6px;
        margin:22px 0;
        }
        .content .pagination button{
        width:34px;
        height:34px;
        border:1px solid #CDD3D8;
        background:#fff;
        color:#333;
        border-radius:4px;
        cursor:pointer;
        }
        .content .pagination button.active{
        background:#145074;
        color:#fff;
        border-color:#145074;
        font-weight:700;
        }
        .content .pagination button:not(.active):hover{ background:#F3F6FB; }
        .content .pagination button[disabled]{
        opacity:.45;
        cursor:not-allowed;
        }

        /* 포커스 접근성 */
        .content .search-box select:focus,
        .content .search-box input[type="text"]:focus,
        .content .search-box button:focus,
        .content .pagination button:focus,
        .content .apply-btn:focus{
        outline:2px solid rgba(63,151,246,.55);
        outline-offset:1px;
        }

    </style>
    
</head>
<body>
    <div class="topbar">
        <a href="../mainpage/main.html">HOME</a>
        <a href="#">사이트맵</a>
        <a href="../8회원/회원1-로그인.html">로그인</a>
        <a href="../7학생지원/학생지원1-수강신청.html ">학생지원</a>
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
                <a href="../mainpage/main.html">
                    <svg xmlns="./images/ico-home.png" height="16" viewBox="0 -960 960 960" width="16" fill="#333333">
                        <path d="M240-200h120v-240h240v240h120v-360L480-740 240-560v360Zm-80 80v-480l320-240 320 240v480H520v-240h-80v240H160Zm320-350Z"/>
                    </svg>
                </a>
            </span>
            <br><span class="path-divider"> > </span><br>
            <a href="./학생지원1-수강신청.html">학생지원</a><br>
            <span class="path-divider"> > </span><br>
            <a href="">수강신청</a>
        </div>
    </div>

    <!-- ===========================
         본문 (대학생활 사이드바 + 콘텐츠)
    ============================ -->
    <div class="container">
        <aside class="sidebar">
            <h2>학생지원</h2>
            <ul>
                <a href="./학생지원1-수강신청.html"><li class="highlight">수강신청</li></a>
                <a href="./학생지원2-수강신청내역.html"><li>수강신청내역</li></a>
                <a href="./학생지원3-교과과정 .html"><li>교과과정</li></a>
                <a href="./학생지원4-성적조회.html"><li>성적조회</li></a>
                <a href="./학생지원5-학적.html"><li>학적</li></a>
            </ul>
        </aside>
        
           
       
        <main class="content">
        <h2>수강신청</h2>
        <hr style="border: none; border-top: 3px solid #000; margin: 6px 0 14px;">

        <!-- 검색 영역 -->
        <div class="search-box" aria-label="수강신청 검색">
            <select aria-label="검색 조건">
            <option>선택</option>
            <option>과목명</option>
            <option>담당교수</option>
            <option>개설학과</option>
            </select>
            <input type="text" placeholder="검색어를 입력해 주세요" aria-label="검색어 입력">
            <button type="button">검색</button>
        </div>

        <!-- 수강신청 목록 -->
        <table class="course-table">
            <colgroup>
            <col style="width:120px"><col style="width:70px"><col style="width:60px"><col style="width:90px">
            <col><!-- 과목명 auto -->
            <col style="width:60px"><col style="width:90px"><col style="width:90px"><col style="width:70px"><col style="width:80px">
            </colgroup>
            <thead>
            <tr>
                <th scope="col">개설학과</th>
                <th scope="col">구분</th>
                <th scope="col">학년</th>
                <th scope="col">코드</th>
                <th scope="col">과목명</th>
                <th scope="col">학점</th>
                <th scope="col">담당교수</th>
                <th scope="col">수강인원</th>
                <th scope="col">비고</th>
                <th scope="col">신청</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>컴퓨터공학</td>
                <td>전공</td>
                <td>1</td>
                <td>830001</td>
                <td>컴퓨터과학개론</td>
                <td>3</td>
                <td>김컴공</td>
                <td>12/30</td>
                <td></td>
                <td><button type="button" class="apply-btn">신청</button></td>
            </tr>
            <tr>
                <td>컴퓨터공학</td>
                <td>전공</td>
                <td>2</td>
                <td>830112</td>
                <td>자료구조</td>
                <td>3</td>
                <td>박자료</td>
                <td>28/30</td>
                <td></td>
                <td><button type="button" class="apply-btn">신청</button></td>
            </tr>
            <tr>
                <td>컴퓨터공학</td>
                <td>전공</td>
                <td>2</td>
                <td>830210</td>
                <td>데이터베이스</td>
                <td>3</td>
                <td>이데베</td>
                <td>30/30</td>
                <td></td>
                <td><button type="button" class="apply-btn">신청</button></td>
            </tr>
            <tr>
                <td>컴퓨터공학</td>
                <td>전공</td>
                <td>3</td>
                <td>830305</td>
                <td>운영체제</td>
                <td>3</td>
                <td>최운영</td>
                <td>18/30</td>
                <td></td>
                <td><button type="button" class="apply-btn">신청</button></td>
            </tr>
            <tr>
                <td>컴퓨터공학</td>
                <td>전공</td>
                <td>3</td>
                <td>830320</td>
                <td>컴퓨터네트워크</td>
                <td>3</td>
                <td>한네트</td>
                <td>19/30</td>
                <td></td>
                <td><button type="button" class="apply-btn">신청</button></td>
            </tr>
            <tr>
                <td>소프트웨어학</td>
                <td>전공선택</td>
                <td>2</td>
                <td>840215</td>
                <td>웹프로그래밍</td>
                <td>3</td>
                <td>김웹</td>
                <td>25/30</td>
                <td></td>
                <td><button type="button" class="apply-btn">신청</button></td>
            </tr>
            <tr>
                <td>소프트웨어학</td>
                <td>전공</td>
                <td>4</td>
                <td>840410</td>
                <td>인공지능</td>
                <td>3</td>
                <td>오에이아이</td>
                <td>20/30</td>
                <td></td>
                <td><button type="button" class="apply-btn">신청</button></td>
            </tr>
            <tr>
                <td>교양대학</td>
                <td>교양</td>
                <td>1</td>
                <td>900101</td>
                <td>글쓰기</td>
                <td>2</td>
                <td>정글</td>
                <td>50/60</td>
                <td></td>
                <td><button type="button" class="apply-btn">신청</button></td>
            </tr>
            </tbody>
        </table>

        <!-- 페이지네이션 -->
        <div class="pagination" role="navigation" aria-label="페이지 이동">
            <button type="button" aria-label="처음">&laquo;</button>
            <button type="button" aria-label="이전">&lsaquo;</button>
            <button type="button" class="active" aria-current="page">1</button>
            <button type="button">2</button>
            <button type="button">3</button>
            <button type="button" aria-label="다음">&rsaquo;</button>
            <button type="button" aria-label="마지막">&raquo;</button>
        </div>
</main>


            





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
