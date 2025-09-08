<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./회원_공통.css">
    <style>
        main .info {
            display: flex;
            align-items: center;
            justify-content: flex-end;
        }

        main .info img {
            width: 16px;
            height : auto;
            margin-right: 5px;
            /* 이미지와 텍스트 간격 */
        }

        main {
            width: 1200px;
            height: 860px;
            margin-top: -30px;
            transform: scale(0.85); /* 요소를 80% 크기로 축소 */
            transform-origin: top; /* 축소의 기준점을 상단으로 설정 */
            margin-left: 400px;
        
        }

        main>div>* {
            width: 1100px;
            height: 100%;
            margin: 0 auto;
        }

        main>div:nth-child(1) {
            width: 80%;
            height: 36px;
            background-color: #edf2f6;
            box-sizing: border-box;
            display: flex;
            align-items: center;
            padding-left: 20px;
        }

        main>div:nth-child(1)>div {
            width: 1100px;
            margin: 0 auto;
            font-size: 12px;
            color: #666;
        }

        main>div:nth-child(2) {
            width: 100%;
            height: 500px;
            margin-top: 50px;
            box-sizing: border-box;
        }

        main .content-wrapper {
            display: flex;
            gap: 60px;
        }

        /* register style */
        main .register{
            width: 1050px;
        }

        main .register > .topInfo span{
            color: #5198f9;
            margin: 0 100px;
        }

        main .topInfo h4{
            font-size: 22px;
            font-weight: 550;
            margin: 5px 0;
        }

        main .topInfo p{
            font-size: 16px;
            margin: 5px 0;
        }

        /* form tag */
        main .registerForm .registerTable{
            width: 1050px;
            height: 500px;
            border-collapse: collapse;
            border-top: 4px solid #0d1f4c;
            margin-bottom: 10px;
        }

        main .registerForm i{
            color: red;
        }

        main .registerTable th{
            width: 200px;
            background-color: #f4f8fc;
            text-align: center;
            font-weight: 400;
            border: 1px solid #dddddd;
            padding: 15px;
            vertical-align: middle;
            border-left: none;
        }

        main .registerTable td{
            border: 1px solid #dddddd;
            padding: 15px;
            vertical-align: top;
            background-color: #fff;
            border-right: none;
            max-height: 200px;
            overflow-y: auto;
            padding-right: 10px;
        }

        main .registerTable input{
            width: 300px;
            height: 40px;
            margin-top: 5px;
            border: 1px solid #cccccc;
            box-sizing: border-box;
            padding: 10px;
        }

        main .registerTable td span{
            margin-left: 10px;
            border: 0;
            align-items: center;
        }

        main .registerForm .notice{
            font-weight: 300;
        }

        main .registerForm .selectBox{
            float: right;
            margin-top: 40px;
        }

        /* id style */
        #postal_code{
            width: 115px;
            height: 40px;
        }

        #basic_addr, #detail_addr{
            width: 450px;
            height: 40px;
        }

        #cancel{
            width: 50px;
            height: 45px;
            color: white;
            background-color: #8b8b8b;
            font-size: 15px;
            font-weight: 100;
            border: 0;
        }

        #signUp{
            width: 80px;
            height: 45px;
            color: white;
            background-color: #5198f9;
            font-size: 15px;
            font-weight: 100;
            border: 0;
        }
    </style>
</head>
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
                        <li><a href="../4학사안내/학사안내5-수료및졸업.html">수료 및 졸업</a></li>
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
                        <li><a href="../6커뮤니티/커뮤니티1-공지사항.html">공지사항</a></li>
                        <li><a href="../6커뮤니티/커뮤니티2-뉴스 및 칼럼.html">뉴스 및 칼럼</a></li>
                        <li><a href="../6커뮤니티/커뮤니티3-취업정보.html"></a>취업정보</li>
                        <li><a href="../6커뮤니티/커뮤니티4-자유게시판.html">자유게시판</a></li>
                        <li><a href="../6커뮤니티/커뮤니티5-질문과 답변.html">질문과 답변</a></li>
                        <li><a href="../6커뮤니티/커뮤니티6-자료실.html">자료실</a></li>
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
            <a href="#">학생지원</a>
            <span class="path-divider"> > </span>
            <a href="#">학사일정</a>
        </div>
    </div>

    <!-- ===========================
         본문 (대학생활 사이드바 + 콘텐츠)
    ============================ -->
    <main>
        <div>            
            <div class="info">

			</div>
        </div>
        <div>
            <div class="content-wrapper">
                <div class="register">
                    <div class="topInfo">
                        <span>
                            <h4>회원가입</h4>
                            <p>반갑습니다 그린대학교 입니다. 회원가입 후 더 많은 정보를 이용하세요.</p>
                            <p>대학구성원(학생, 교직원)은 회원가입 없이 학번, 교번(사번) 아이디를 사용하여 로그인할 수 있습니다.</p>
                        </span>
                    </div>
                    <div class="registerForm">
                        <form action="" id="registerForm">
                            <table class="registerTable">
                                <tr>
                                    <th>아이디<i>*</i></th>
                                    <td><input type="text" name="user_id" required placeholder="아이디 입력"><span>영문·숫자 조합 4~10자 이내</span></td>
                                </tr>
                                <tr>
                                    <th>비밀번호<i>*</i></th>
                                    <td><input type="password" name="user_pass1" required placeholder="비밀번호 입력"><span>비밀번호는 8-16자리 이내, 영문 · 숫자 · 특수문자 조합</span></td>
                                </tr>
                                <tr>
                                    <th>비밀번호 확인<i>*</i></th>
                                    <td><input type="password" name="user_pass2" required placeholder="비밀번호 확인 입력"></td>
                                </tr>
                                <tr>
                                    <th>이름<i>*</i></th>
                                    <td><input type="text" name="user_name" required placeholder="이름 입력"></td>
                                </tr>
                                <tr>
                                    <th>휴대폰<i>*</i></th>
                                    <td><input type="tel" name="user_hp" required placeholder="휴대폰 입력"></td>
                                </tr>
                                <tr>
                                    <th>이메일<i>*</i></th>
                                    <td><input type="text" name="user_email" required placeholder="이메일 입력"></td>
                                </tr>
                                <tr>
                                    <th>주소</th>
                                    <td>
                                        <input type="text" id="postal_code" placeholder="우편번호" readonly>
                                            <br>
                                            <input type="text" id="basic_addr" placeholder="기본주소" readonly>
                                            <br>
                                            <input type="text" id="detail_addr" placeholder="상세주소">
                                    </td>
                                </tr>
                            </table>
                            <span class="notice">
                                <i>*</i>&nbsp&nbsp필수입력
                            </span>
                            <div class="selectBox">
                                <button id="cancel">취소</button>
                                <button id="signUp">회원가입</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>

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

