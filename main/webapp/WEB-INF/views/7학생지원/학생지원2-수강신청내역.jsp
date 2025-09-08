<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./학생지원_공통.css">
    <style>
        /* 수강신청내역 상단 */
        .page-title { margin: 0; font-size: 28px; font-weight: 700; }
        .section-bar { height: 0; border-top: 3px solid #000; margin: 12px 0 18px; }

        .apply-head {
        display: flex; justify-content: space-between; align-items: center;
        margin-bottom: 14px;
        }
        .apply-head .filters { display: flex; align-items: center; gap: 6px; }
        .apply-head .filters .sel {
        height: 34px; padding: 0 10px; border: 1px solid #ccc; background: #fff;
        }
        .apply-head .filters .year { width: 110px; }
        .apply-head .filters .term { width: 70px; text-align: center; }
        .apply-head .filters .suffix { margin: 0 6px 0 2px; color: #333; }

        .apply-head .summary {
        display: flex; align-items: center; gap: 10px;
        color: #333; font-weight: 600;
        }
        .apply-head .summary img { width: 32px; height: 32px; }

        /* 표 - 헤더 연한회색, 행은 아래쪽 선만 */
        .enroll-table {
            width: 100%; border-collapse: collapse; table-layout: fixed;
            border-top:3px solid #000;         /* 상단 굵은 라인 */
         }
        .enroll-table thead th {
        background: #f3f5f7; color: #666; font-weight: 600; font-size: 14px;
        padding: 14px 12px; text-align: center; border-bottom: 1px solid #dedede;
        }
        .enroll-table tbody td {
        padding: 16px 12px; text-align: center; border-bottom: 1px solid #e5e5e5;
        font-size: 15px; color: #333;
        }
        /* 과목명만 좌측 정렬 */
        .enroll-table tbody td.subject { text-align: left; }

        /* 취소 버튼 */
        .btn-cancel {
        background: #8f2727; color: #fff; border: 0; border-radius: 4px;
        padding: 6px 12px; font-size: 14px; cursor: pointer;
        }
        .btn-cancel:hover { filter: brightness(0.95); }

        /* 접근성 보조 라벨 숨김 */
        .sr-only {
        position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px;
        overflow: hidden; clip: rect(0, 0, 0, 0); white-space: nowrap; border: 0;
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
                <a href="#">
                    <svg xmlns="./images/ico-home.png" height="16" viewBox="0 -960 960 960" width="16" fill="#333333">
                        <path d="M240-200h120v-240h240v240h120v-360L480-740 240-560v360Zm-80 80v-480l320-240 320 240v480H520v-240h-80v240H160Zm320-350Z"/>
                    </svg>
                </a>
            </span>
            <br><span class="path-divider"> > </span><br>
            <a href="./학생지원1-수강신청.html">학생지원</a><br>
            <span class="path-divider"> > </span><br>
            <a href="">수강신청내역</a>
        </div>
    </div>

    <!-- ===========================
         본문 (대학생활 사이드바 + 콘텐츠)
    ============================ -->
    <div class="container">
        <aside class="sidebar">
            <h2>학생지원</h2>
            <ul>
                <a href="./학생지원1-수강신청.html"><li>수강신청</li></a>
                <a href="./학생지원2-수강신청내역.html"><li class="highlight">수강신청내역</li></a>
                <a href="./학생지원3-교과과정 .html"><li>교과과정</li></a>
                <a href="./학생지원4-성적조회.html"><li>성적조회</li></a>
                <a href="./학생지원5-학적.html"><li>학적</li></a>
            </ul>
        </aside>
        <main class="content">
            
            <h2 class="page-title">수강신청내역</h2>
<div class="section-bar"></div>

<div class="apply-head">
  <div class="filters">
    <label for="year" class="sr-only">년도</label>
    <select id="year" class="sel year">
      <option selected>2025</option>
      <option>2024</option>
      <option>2023</option>
    </select>
    <span class="suffix">년</span>

    <label for="term" class="sr-only">학기</label>
    <select id="term" class="sel term">
      <option selected>1</option>
      <option>2</option>
    </select>
    <span class="suffix">학기</span>
  </div>

  <div class="summary">
    <img src="./images/mascot.png" alt="" />
    <strong>신청과목수 6과목, 총 신청학점 18학점</strong>
  </div>
</div>

<table class="enroll-table">
  <colgroup>
    <col style="width:120px" />
    <col /> <!-- 과목명: 가변 -->
    <col style="width:100px" />
    <col style="width:100px" />
    <col style="width:70px" />
    <col style="width:90px" />
    <col style="width:140px" />
    <col style="width:120px" />
    <col style="width:80px" />
  </colgroup>
  <thead>
    <tr>
      <th>교과목코드</th>
      <th>과목명</th>
      <th>대상학년</th>
      <th>담당교수</th>
      <th>학점</th>
      <th>이수구분</th>
      <th>강의시간</th>
      <th>강의장</th>
      <th>관리</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>830003</td>
      <td class="subject">자바 프로그래밍</td>
      <td>2학년</td>
      <td>김자바</td>
      <td>3</td>
      <td>전공</td>
      <td>화 1,2,3</td>
      <td>컴퓨터실</td>
      <td><button class="btn-cancel">취소</button></td>
    </tr>
    <tr>
      <td>830003</td>
      <td class="subject">자료구조</td>
      <td>2학년</td>
      <td>김자료</td>
      <td>3</td>
      <td>전공</td>
      <td>화 1,2,3</td>
      <td>컴퓨터실</td>
      <td><button class="btn-cancel">취소</button></td>
    </tr>
    <tr>
      <td>830003</td>
      <td class="subject">대학영어</td>
      <td>2학년</td>
      <td>김영어</td>
      <td>3</td>
      <td>교양</td>
      <td>화 1,2,3</td>
      <td>강의장1</td>
      <td><button class="btn-cancel">취소</button></td>
    </tr>
    <tr>
      <td>830003</td>
      <td class="subject">알고리즘</td>
      <td>2학년</td>
      <td>김자바</td>
      <td>3</td>
      <td>전공</td>
      <td>화 1,2,3</td>
      <td>컴퓨터실</td>
      <td><button class="btn-cancel">취소</button></td>
    </tr>
    <tr>
      <td>830003</td>
      <td class="subject">세계의역사</td>
      <td>2학년</td>
      <td>김역사</td>
      <td>3</td>
      <td>교양</td>
      <td>화 1,2,3</td>
      <td>강의실2</td>
      <td><button class="btn-cancel">취소</button></td>
    </tr>
    <tr>
      <td>830003</td>
      <td class="subject">데이터베이스</td>
      <td>2학년</td>
      <td>김디비</td>
      <td>3</td>
      <td>전공</td>
      <td>화 1,2,3</td>
      <td>컴퓨터실</td>
      <td><button class="btn-cancel">취소</button></td>
    </tr>
  </tbody>
</table>



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
