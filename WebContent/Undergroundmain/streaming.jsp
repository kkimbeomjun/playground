<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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

    <meta charset="EUC-KR">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>스트리밍 페이지 </title>
    <link href="streaming.css" type ="text/css" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
        <header>
            <!--홈 버튼 이미지-->
            <input type="image" class = "underground" src="./streamingimg/Underground.png" alt = "홈버튼">
            
        </header>

        
        <div class = "middle">
            
            <!--명칭은 콘텐트이나 왼쪽 리스트라 봐도 무방. 양 칸을 콘텐트와 사이드바로 구성함.-->
            <section class="content">
                <div class="musicbox">
                    <!--빈칸-->
                    <div class="nobox">
                    </div>
                    <!--노래 이미지-->
                    <div class="musicimgbox">                       
                            <img src="./streamingimg/defaultAlbum_img.png" class="musicimg"   alt="노래 이미지">
                    </div>
                    <!--노래 이름-->
                    <div class="musicnamebox">
                        <text class="musicname">사라지나요</text>
                    </div>
                    <!--노래 아티스트-->
                    <div class="musicsingerbox">
                        <text class="musicsinger">PATEKO (파테코) & Jayci yucca (제이씨유카) & kidWine</text>
                    </div>
                    <!--프로그레스바-->
                    <div class="progressbarbox">
                        <progress id="progress" value="50" min="0" max="100"></progress>
                    </div>
                    <!--노래 시간-->
                    <div class="timer">
                        <div class="starttimebox">
                            <text class="starttime">00:00</text>
                        </div>
                        <div class="lasttimebox">
                            <text class="lasttime">03:20</text>
                        </div>
                    </div>
                    <!--노래 관련 버튼-->
                    <div class="btn">
                        <input type="image" class="previous" src="./streamingimg/previous_btn.png" alt = "뒤로가기버튼">
                        <input type="image" class="playnstop" src="./streamingimg/play_btn.png" alt = "플레이버튼">
                         <!--아래는 멈춤 버튼으로 클릭으로 변경시 사용-->
                        <!--<input type="image" class="playnstop" src="./streamingimg/pause_btn.png" alt = "멈춤버튼">-->
                        <input type="image" class="next" src="./streamingimg/next_btn.png" alt = "다음버튼">
                    </div>

                </div>
            </section>
            
             <!--오른쪽 사이드바-->
            <aside class="right-side">
                <div class="container">
                    <div class="listname">
                        <div class="playlistbox">
                            <text class="playlist">재생목록</text>
                        </div>
                         <!--삭제 버튼-->
                        <div class="deletebox">
                            <button type= "delete">삭제</button>
                        </div>

                    </div>
                   
                    <div class="musiclist">
                        <!-- 1번 음악  상세 설명은 1번과 5번 음악에만 사용-->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <!--체크 박스-->
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <!--등록된 이미지-->
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="등록 이미지">
                            </div>
                            <div class="opmusicnamebox">
                                <!--노래 제목-->
                                <text class="opmusicname"> 틈</text>
                            </div>
                            <div class="opmusicartistbox">
                                <!--아티스트-->
                                <text class="opmusicartist">Dim</text>
                            </div>
                            <div class="opgenrebox">
                                <!--장르-->
                                <text class="opgenre">발라드</text>
                            </div>
                            <div class="opplaybtnbox">
                                <!--플레이 버튼-->
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "플레이버튼">
                            </div>
                        </div>
                        <!-- 2번 음악 -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="등록 이미지">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> 네가 없는 세상</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">SHIN</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">랩/힙합</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "플레이버튼">
                            </div>
                        </div>
                        <!-- 3번 음악 -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="등록 이미지">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> 인생이 원래 이런건가요?</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">도미킴</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">발라드</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "플레이버튼">
                            </div>
                        </div>
                        <!-- 4번 음악 -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="등록 이미지">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> 도둑들</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">리버맨</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">R&B/소울</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "플레이버튼">
                            </div>
                        </div>
                        <!-- 5번 음악 재생된 음악이라 색이 다름 -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <!--체크 박스-->
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <!--등록된 이미지-->
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="등록 이미지">
                            </div>
                            <div class="opmusicnamebox">
                                <!--재생된 노래제목-->
                                <text class="opselectmusicname"> 사라지나요</text>
                            </div>
                            <div class="opmusicartistbox">
                                <!--재생된 노래 아티스트-->
                                <text class="opselectmusicartist">PATEKO...</text>
                            </div>
                            <div class="opgenrebox">
                                <!--재생된 노래 장르-->
                                <text class="opselectgenre">팝/어쿠스틱</text>
                            </div>
                            <div class="opplaybtnbox">
                                <!--재생된 노래 플레이 버튼-->
                                <input type="image" class = "opselectplaybtn" src="./streamingimg/selectplay_blue_btn.png" alt = "플레이버튼">
                            </div>
                        </div>
                        <!-- 6번 음악 -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="등록 이미지">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> 기다려(STAY)</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">카준</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">락/인디</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "플레이버튼">
                            </div>
                        </div>
                        <!-- 7번 음악 -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="등록 이미지">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> fit</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">멜로디온</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">발라드</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "플레이버튼">
                            </div>
                        </div>
                        <!-- 7번 음악 -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="등록 이미지">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> 갈증</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">Dim</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">R&B/소울</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "플레이버튼">
                            </div>
                        </div>
                        <!-- 8번 음악 -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="등록 이미지">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> 찌랭이</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">남정우</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">R&B/소울</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "플레이버튼">
                            </div>
                        </div>
                        <!-- 9번 음악 -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="등록 이미지">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> 지름길</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">양원준</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">팝/어쿠스틱</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "플레이버튼">
                            </div>
                        </div>
                        <!-- 10번 음악 -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="등록 이미지">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> 네가 없는 세상</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">SHIN</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">랩/힙합</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "플레이버튼">
                            </div>
                        </div>
                        <!-- 10번 음악 -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="등록 이미지">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> 네가 없는 세상</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">SHIN</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">랩/힙합</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "플레이버튼">
                            </div>
                        </div>
                        <!-- 11번 음악 -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="등록 이미지">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> 네가 없는 세상</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">SHIN</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">랩/힙합</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "플레이버튼">
                            </div>
                        </div>
                        <!-- 12번 음악 -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="등록 이미지">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> 네가 없는 세상</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">SHIN</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">랩/힙합</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "플레이버튼">
                            </div>
                        </div>
                        <!-- 13번 음악 -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="등록 이미지">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> 네가 없는 세상</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">SHIN</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">랩/힙합</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "플레이버튼">
                            </div>
                        </div>
                        <!-- 14번 음악 -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="등록 이미지">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> 네가 없는 세상</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">SHIN</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">랩/힙합</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "플레이버튼">
                            </div>
                        </div>
                        <!-- 15번 음악 -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="등록 이미지">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> 네가 없는 세상</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">SHIN</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">랩/힙합</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "플레이버튼">
                            </div>
                        </div>
                        

                    </div>                      
                </div>
            </aside>
         </div>            
    </div>
</body>
</html>