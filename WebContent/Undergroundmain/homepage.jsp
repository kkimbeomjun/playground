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
    <title>Ȩ ������ </title>
    <link href="homepage.css" type ="text/css" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
        <header>
            <!--Ȩ ��ư �̹���-->
            <div class="homeimg">
                <input type="image" class = "underground" src="./homepageimg/Underground.png" alt = "Ȩ��ư">
            </div>
            <!--�˻� ��ư-->
            <div class="search">
                <input type="text" class = "searchplace" placeholder="    �˻�� �Է��ϼ���." >
                <input type="image" class = "search_btn" src="./homepageimg/search_btn.png" alt = "�˻���ư">           
            </div>
            <!--ȸ�� �̸�-->
            <div class="name">
                <text class="name1">  <%= (String)session.getAttribute("__id")%></text>
                <text class="name2"> ��</text> 
                <!--�̸��� ���� ������ '��'�� �����ϰ� �̸��� �ٲܼ� �ֵ��� ��-->
                <!--���࿡ ������ �� ó�� ���� �����ؼ� ������ Ŭ������ ��ħ-->
            </div>
            <!--�߰� ��ư-->
            <div class="selectbtn">         
                 <a href="musicregister.html" >�������</a>
                 <a href = "loginpage.jsp">�α׾ƿ�</a>
                 <a href="Delete_log.jsp?" >ȸ��Ż��</a>
            </div>  
        </header>

        <div class = "middle">     
               <aside class="left-side">                
            </aside>

            <section class="content">
                <div class="titlebox">
                    <text class="titlename">�ֽ�����</text>
                </div>
                <!--�ֽ����� �̹���-->
                <div class="latestmusicimgbox">
                    <img src="./homepageimg/defaultAlbum_img.png" class="albumimg">
                    <img src="./homepageimg/defaultAlbum_img.png" class="albumimg">
                    <img src="./homepageimg/defaultAlbum_img.png" class="albumimg">
                    <img src="./homepageimg/defaultAlbum_img.png" class="albumimg">
                    <img src="./homepageimg/defaultAlbum_img.png" class="albumimg">
                </div>
                <div class="realtimebox">
                    <div class="chartnamebox">
                        <text class="titlename">�ǽð� ��Ʈ</text>
                    </div>
                     <!--���� ������ �ð�-->
                    <div class="timebox">
                        <text class="texttime">2022.10.30 19:40</text>
                    </div>                   
                </div>
                <hr>
                <!-- 1�� ���� (�ߺ��̹Ƿ� 1���� ����.)-->
                <div class="chartoption">
                    <!-- �뷡 ���-->
                    <div class="chartrankbox">
                        <text class="chartrank">1</text>
                    </div>
                    <!-- �뷡 �̹���-->
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>
                    <!--�뷡 �̸�-->
                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> ƴ</text>
                    </div>
                    <!--�뷡 ��Ƽ��Ʈ-->
                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">Dim</text>
                    </div>
                    <!--�뷡 �帣-->
                    <div class="chartgenrebox">
                        <text class="chartgenre">�߶��</text>
                    </div>
                    <!--�뷡 �÷��� ��ư-->
                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>
                <!-- 2�� ���� -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">2</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> �װ� ���� ����</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">SHIN</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">��/����</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>
                <!-- 3�� ���� -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">3</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> �λ��� ���� �̷��ǰ���?</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">����Ŵ</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">�߶��</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>
                <!-- 4�� ���� -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">4</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> ���ϵ�</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">������</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">R&B/�ҿ�</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>
                <!-- 5�� ���� -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">5</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> �����ٰ�</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">ī��</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">��/����ƽ</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>
                <!-- 6�� ���� -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">6</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> ��ٷ�(STAY)</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">ī��</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">�߶��</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>
                <!-- 7�� ���� -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">7</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> �װ� ���� ����</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">SHIN</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">��/����</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>
                <!-- 8�� ���� -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">8</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> ����</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">DIM</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">��/�ε�</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>
                <!-- 9�� ���� -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">9</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> ���</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">������</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">R&B/�ҿ�</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>
                <!-- 10�� ���� -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">10</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> ������</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">�����</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">��/����</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>

                <!-- 11�� ���� -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">11</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> ĥ(Painting)</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">�ϴð</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">�߶��</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>
                <!-- 12�� ���� -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">12</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> ħ��</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">����</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">��/����ƽ</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>
                <!-- 13�� ���� -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">13</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> ���� ���� ��</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">�ȳ��ϼ�</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">��/�ε�</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>
                <!-- 14�� ���� -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">14</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> �̴�θ�</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">����</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">��/����</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>
                <!-- 15�� ���� -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">15</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> ��</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">Minji</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">R&B/�ҿ�</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>
                <!-- 16�� ���� -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">16</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> �� �ܿ�(w/RobinHwang)</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">������</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">�߶��</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>
                <!-- 17�� ���� -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">17</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> �ش�ȭ</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">DIM</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">��/����</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>
                <!-- 18�� ���� -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">18</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> ����</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">DIM</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">��/����</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>
                <!-- 19�� ���� -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">19</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> ������ ��°ž�</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">����Ŵ</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">�߶��</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>
                <!-- 20�� ���� -->
                <div class="chartoption">
                    <div class="chartrankbox">
                        <text class="chartrank">20</text>
                    </div>
                    <div class="chartmusicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="chartmusicimg"  alt="��� �̹���">
                    </div>

                    <div class="chartmusicnamebox">
                        <text class="chartmusicname"> ��¼���</text>
                    </div>

                    <div class="chartmusicartistbox">
                        <text class="chartmusicartist">Snake D</text>
                    </div>

                    <div class="chartgenrebox">
                        <text class="chartgenre">��/����</text>
                    </div>

                    <div class="chartplaybtnbox">
                        <input type="image" class = "chartplaybtn" src="./homepageimg/play_btn.png" alt = "�÷��̹�ư">
                    </div>
                </div>
                <hr>
                <div class="nextpagebox">
                    <button type= "nextpage">+ ������</button>
                </div>
            </section>
            
            <aside class="right-side">
            </aside>
         </div>    

        <footer>
            <div class="music">

                <div class="musicoption">
                    <!--�뷡 �̹���-->             
                    <div class="musicimgbox">
                        <img src="./homepageimg/defaultAlbum_img.png" class="musicimg">
                    </div>
                    
                    <div class = "musiclistbox">
                        <!--�뷡 ����-->
                        <div class="listname">
                            <text class="musicname">���������</text>   
                        </div> 
                        <!--�뷡 ��Ƽ��Ʈ-->
                        <div class="listartist">
                            <text class="musicartist">PATEKO (������) & Jayci yucc...</text>
                        </div>
                    </div>

                    <div class="musicplaybox">
                        <!--�뷡 ��ư-->
                        <div class = "musicbtn">
                            <input type="image" class = "previous" src="./homepageimg/previous_btn.png" alt = "������ư">
                            <input type="image" class = "play" src="./homepageimg/play_btn.png" alt = "�����ư">
                            <!-- <input type="image" class = "stop" src="./homepageimg/pause_btn.png" alt = "�����ư">  -->
                            <input type="image" class = "next" src="./homepageimg/next_btn.png" alt = "������ư">
                        </div>

                        <div class="musicprogressbar">
                            <!--�뷡 ���� �ð�-->
                            <div class="firsttimebox">
                                <text class="firsttime">00:00</text>
                            </div>
                            <!--���α׷�����-->
                            <div class="progressbarbox">
                                <progress id="progress" value="50" min="0" max="100"></progress>
                            </div>
                            <!--�뷡 �� �ð�-->
                            <div class="lasttimebox">
                                <text class="lasttime">03:20</text>
                            </div>
                        </div>
                    </div>

                    <!--����Ʈ ��ư-->
                    <div class="listbtnbox">
                        <input type="image" class = "playlistbtn" src="./homepageimg/playlist_btn.png" alt = "������ư">

                    </div>
                    

                </div>   
                             
            </div>   
          
        </footer>
    </div>
</body>
</html>