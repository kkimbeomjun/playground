<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*" import="java.util.Date" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<style type="text/css"> 
a { text-decoration:none } 
a:ilnk {text-decoration:none; color: #FFFFFF;}
a:visited {text-decoration:none; color: #FFFFFF;}
a:active {text-decoration:none; color: #FFFFFF;}
a:hover {text-decoration:none; color: #FFFFFF;}
</style> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>홈 페이지 </title>
    <link href="homepage.css" type ="text/css" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
        <header>
            <!--홈 버튼 이미지-->
            <div class="homeimg">
                <input type="image" class = "underground" src="./homepageimg/Underground.png" alt = "홈버튼">
            </div>
            <!--검색 버튼-->
            <div class="search">
                <input type="text" class = "searchplace" placeholder="    검색어를 입력하세요." >
                <input type="image" class = "search_btn" src="./homepageimg/search_btn.png" alt = "검색버튼">           
            </div>
            <!--회원 이름-->
            <div class="name">
                <text class="name1">  <%= (String)session.getAttribute("__id")%></text>
                <text class="name2"> 님</text> 
                <!--이름과 님을 나누어 '님'은 고정하고 이름만 바꿀수 있도록 함-->
                <!--만약에 오우찬 님 처럼 님이 포함해서 나오면 클래스를 합침-->
            </div>
            <!--추가 버튼-->
            <div class="selectbtn">         
                 <a href="musicregister.html" >음원등록</a>
                 <a href = "loginpage.jsp">로그아웃</a>
                 <a href="Delete_log.jsp?" >회원탈퇴</a>
            </div>  
        </header>

        <div class = "middle">     
               <aside class="left-side">                
            </aside>

            <section class="content">
                <div class="titlebox">
                    <text class="titlename">최신음악</text>
                </div>
                <!--최신음악 이미지-->
                <div class="latestmusicimgbox">
                    <img src="./homepageimg/defaultAlbum_img.png" class="albumimg">
                    <img src="./homepageimg/defaultAlbum_img.png" class="albumimg">
                    <img src="./homepageimg/defaultAlbum_img.png" class="albumimg">
                    <img src="./homepageimg/defaultAlbum_img.png" class="albumimg">
                    <img src="./homepageimg/defaultAlbum_img.png" class="albumimg">
                </div>
                <div class="realtimebox">
                    <div class="chartnamebox">
                        <text class="titlename">실시간 차트</text>
                    </div>
                     <!--현재 접속한 시간-->
                    <div class="timebox">
                        <text class="texttime">2022.10.30 19:40</text>
                    </div>                   
                </div>
                <hr>
                <!-- 1번 음악 (중복이므로 1번만 적음.)-->
                <div class="chartoption">
                    <!-- 노래 등수-->
                    <div class="chartrankbox">
                        <text class="chartrank">1</text>
                    </div>
                    <!-- 노래 이미지-->
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>
                    <!--노래 이름-->
                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 틈</text>
                    </div>
                    <!--노래 아티스트-->
                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">Dim</text>
                    </div>
                    <!--노래 장르-->
                    <div class="chartgenrebox">
                        <text class="chartgenre">발라드</text>
                    </div>
                    <!--노래 플레이 버튼-->
                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>
                <!-- 2번 음악 -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">2</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 네가 없는 세상</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">SHIN</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">랩/힙합</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>
                <!-- 3번 음악 -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">3</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 인생이 원래 이런건가요?</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">도미킴</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">발라드</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>
                <!-- 4번 음악 -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">4</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 도둑들</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">리버맨</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">R&B/소울</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>
                <!-- 5번 음악 -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">5</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 잘해줄걸</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">카휘</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">팝/어쿠스틱</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>
                <!-- 6번 음악 -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">6</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 기다려(STAY)</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">카준</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">발라드</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>
                <!-- 7번 음악 -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">7</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 네가 없는 세상</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">SHIN</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">랩/힙합</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>
                <!-- 8번 음악 -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">8</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 갈증</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">DIM</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">락/인디</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>
                <!-- 9번 음악 -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">9</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 찌랭이</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">남정우</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">R&B/소울</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>
                <!-- 10번 음악 -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">10</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 지름길</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">양원준</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">랩/힙합</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>

                <!-- 11번 음악 -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">11</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 칠(Painting)</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">하늘곡예</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">발라드</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>
                <!-- 12번 음악 -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">12</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 침묵</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">백주</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">팝/어쿠스틱</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>
                <!-- 13번 음악 -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">13</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 달이 예쁜 밤</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">안녕하소</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">락/인디</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>
                <!-- 14번 음악 -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">14</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 이대로만</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">백주</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">랩/힙합</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>
                <!-- 15번 음악 -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">15</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 별</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">Minji</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">R&B/소울</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>
                <!-- 16번 음악 -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">16</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 이 겨울(w/RobinHwang)</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">서진원</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">발라드</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>
                <!-- 17번 음악 -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">17</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 해당화</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">DIM</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">랩/힙합</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>
                <!-- 18번 음악 -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">18</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 몽상가</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">DIM</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">랩/힙합</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>
                <!-- 19번 음악 -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">19</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 음악은 듣는거야</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">도미킴</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">발라드</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>
                <!-- 20번 음악 -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">20</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="등록 이미지">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> 어쩌라고</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">Snake D</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">랩/힙합</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "플레이버튼">
                    </div>
                </div>
                <hr>
                <div class="nextpagebox">
                    <button type= "nextpage">+ 더보기</button>
                </div>
            </section>
            
            <aside class="right-side">
            </aside>
         </div>    

        <footer>
            <div class="music">

                <div class="musicoption">
                    <!--노래 이미지-->             
                    <div class="musicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="musicimg">
                    </div>
                    
                    <div class = "musiclistbox">
                        <!--노래 제목-->
                        <div class="listname">
                            <text class="musicname">사라지나요</text>   
                        </div> 
                        <!--노래 아티스트-->
                        <div class="listartist">
                            <text class="musicartist">PATEKO (파테코) & Jayci yucc...</text>
                        </div>
                    </div>

                    <div class="musicplaybox">
                        <!--노래 버튼-->
                        <div class = "musicbtn">
                            <input type="image" class = "previous" src="./homepageimg/previous_btn.png" alt = "이전버튼">
                            <input type="image" class = "play" src="./homepageimg/play_btn.png" alt = "재생버튼">
                            <!-- <input type="image" class = "stop" src="./homepageimg/pause_btn.png" alt = "멈춤버튼">  -->
                            <input type="image" class = "next" src="./homepageimg/next_btn.png" alt = "다음버튼">
                        </div>

                        <div class="musicprogressbar">
                            <!--노래 시작 시간-->
                            <div class="firsttimebox">
                                <text class="firsttime">00:00</text>
                            </div>
                            <!--프로그레스바-->
                            <div class="progressbarbox">
                                <progress id="progress" value="50" min="0" max="100"></progress>
                            </div>
                            <!--노래 끝 시간-->
                            <div class="lasttimebox">
                                <text class="lasttime">03:20</text>
                            </div>
                        </div>
                    </div>

                    <!--리스트 버튼-->
                    <div class="listbtnbox">
                        <input type="image" class = "playlistbtn" src="./homepageimg/playlist_btn.png" alt = "이전버튼">

                    </div>
                    

                </div>   
                             
            </div>   
          
        </footer>
    </div>
</body>
</html>