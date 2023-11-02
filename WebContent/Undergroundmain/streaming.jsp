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
    <title>��Ʈ���� ������ </title>
    <link href="streaming.css" type ="text/css" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
        <header>
            <!--Ȩ ��ư �̹���-->
            <input type="image" class = "underground" src="./streamingimg/Underground.png" alt = "Ȩ��ư">
            
        </header>

        
        <div class = "middle">
            
            <!--��Ī�� ����Ʈ�̳� ���� ����Ʈ�� ���� ����. �� ĭ�� ����Ʈ�� ���̵�ٷ� ������.-->
            <section class="content">
                <div class="musicbox">
                    <!--��ĭ-->
                    <div class="nobox">
                    </div>
                    <!--�뷡 �̹���-->
                    <div class="musicimgbox">                       
                            <img src="./streamingimg/defaultAlbum_img.png" class="musicimg"   alt="�뷡 �̹���">
                    </div>
                    <!--�뷡 �̸�-->
                    <div class="musicnamebox">
                        <text class="musicname">���������</text>
                    </div>
                    <!--�뷡 ��Ƽ��Ʈ-->
                    <div class="musicsingerbox">
                        <text class="musicsinger">PATEKO (������) & Jayci yucca (���̾���ī) & kidWine</text>
                    </div>
                    <!--���α׷�����-->
                    <div class="progressbarbox">
                        <progress id="progress" value="50" min="0" max="100"></progress>
                    </div>
                    <!--�뷡 �ð�-->
                    <div class="timer">
                        <div class="starttimebox">
                            <text class="starttime">00:00</text>
                        </div>
                        <div class="lasttimebox">
                            <text class="lasttime">03:20</text>
                        </div>
                    </div>
                    <!--�뷡 ���� ��ư-->
                    <div class="btn">
                        <input type="image" class="previous" src="./streamingimg/previous_btn.png" alt = "�ڷΰ����ư">
                        <input type="image" class="playnstop" src="./streamingimg/play_btn.png" alt = "�÷��̹�ư">
                         <!--�Ʒ��� ���� ��ư���� Ŭ������ ����� ���-->
                        <!--<input type="image" class="playnstop" src="./streamingimg/pause_btn.png" alt = "�����ư">-->
                        <input type="image" class="next" src="./streamingimg/next_btn.png" alt = "������ư">
                    </div>

                </div>
            </section>
            
             <!--������ ���̵��-->
            <aside class="right-side">
                <div class="container">
                    <div class="listname">
                        <div class="playlistbox">
                            <text class="playlist">������</text>
                        </div>
                         <!--���� ��ư-->
                        <div class="deletebox">
                            <button type= "delete">����</button>
                        </div>

                    </div>
                   
                    <div class="musiclist">
                        <!-- 1�� ����  �� ������ 1���� 5�� ���ǿ��� ���-->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <!--üũ �ڽ�-->
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <!--��ϵ� �̹���-->
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="��� �̹���">
                            </div>
                            <div class="opmusicnamebox">
                                <!--�뷡 ����-->
                                <text class="opmusicname"> ƴ</text>
                            </div>
                            <div class="opmusicartistbox">
                                <!--��Ƽ��Ʈ-->
                                <text class="opmusicartist">Dim</text>
                            </div>
                            <div class="opgenrebox">
                                <!--�帣-->
                                <text class="opgenre">�߶��</text>
                            </div>
                            <div class="opplaybtnbox">
                                <!--�÷��� ��ư-->
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "�÷��̹�ư">
                            </div>
                        </div>
                        <!-- 2�� ���� -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="��� �̹���">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> �װ� ���� ����</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">SHIN</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">��/����</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "�÷��̹�ư">
                            </div>
                        </div>
                        <!-- 3�� ���� -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="��� �̹���">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> �λ��� ���� �̷��ǰ���?</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">����Ŵ</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">�߶��</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "�÷��̹�ư">
                            </div>
                        </div>
                        <!-- 4�� ���� -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="��� �̹���">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> ���ϵ�</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">������</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">R&B/�ҿ�</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "�÷��̹�ư">
                            </div>
                        </div>
                        <!-- 5�� ���� ����� �����̶� ���� �ٸ� -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <!--üũ �ڽ�-->
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <!--��ϵ� �̹���-->
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="��� �̹���">
                            </div>
                            <div class="opmusicnamebox">
                                <!--����� �뷡����-->
                                <text class="opselectmusicname"> ���������</text>
                            </div>
                            <div class="opmusicartistbox">
                                <!--����� �뷡 ��Ƽ��Ʈ-->
                                <text class="opselectmusicartist">PATEKO...</text>
                            </div>
                            <div class="opgenrebox">
                                <!--����� �뷡 �帣-->
                                <text class="opselectgenre">��/����ƽ</text>
                            </div>
                            <div class="opplaybtnbox">
                                <!--����� �뷡 �÷��� ��ư-->
                                <input type="image" class = "opselectplaybtn" src="./streamingimg/selectplay_blue_btn.png" alt = "�÷��̹�ư">
                            </div>
                        </div>
                        <!-- 6�� ���� -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="��� �̹���">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> ��ٷ�(STAY)</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">ī��</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">��/�ε�</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "�÷��̹�ư">
                            </div>
                        </div>
                        <!-- 7�� ���� -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="��� �̹���">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> fit</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">��ε��</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">�߶��</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "�÷��̹�ư">
                            </div>
                        </div>
                        <!-- 7�� ���� -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="��� �̹���">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> ����</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">Dim</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">R&B/�ҿ�</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "�÷��̹�ư">
                            </div>
                        </div>
                        <!-- 8�� ���� -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="��� �̹���">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> ���</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">������</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">R&B/�ҿ�</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "�÷��̹�ư">
                            </div>
                        </div>
                        <!-- 9�� ���� -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="��� �̹���">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> ������</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">�����</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">��/����ƽ</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "�÷��̹�ư">
                            </div>
                        </div>
                        <!-- 10�� ���� -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="��� �̹���">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> �װ� ���� ����</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">SHIN</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">��/����</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "�÷��̹�ư">
                            </div>
                        </div>
                        <!-- 10�� ���� -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="��� �̹���">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> �װ� ���� ����</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">SHIN</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">��/����</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "�÷��̹�ư">
                            </div>
                        </div>
                        <!-- 11�� ���� -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="��� �̹���">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> �װ� ���� ����</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">SHIN</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">��/����</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "�÷��̹�ư">
                            </div>
                        </div>
                        <!-- 12�� ���� -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="��� �̹���">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> �װ� ���� ����</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">SHIN</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">��/����</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "�÷��̹�ư">
                            </div>
                        </div>
                        <!-- 13�� ���� -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="��� �̹���">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> �װ� ���� ����</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">SHIN</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">��/����</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "�÷��̹�ư">
                            </div>
                        </div>
                        <!-- 14�� ���� -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="��� �̹���">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> �װ� ���� ����</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">SHIN</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">��/����</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "�÷��̹�ư">
                            </div>
                        </div>
                        <!-- 15�� ���� -->
                        <div class="musicoption">
                            <div class="opcheckbox">
                                <input type="checkbox">
                            </div>
                            <div class="opmusicimgbox">
                                <img src="./streamingimg/defaultAlbum_img.png" class="opmusicimg"  alt="��� �̹���">
                            </div>
                            <div class="opmusicnamebox">
                                <text class="opmusicname"> �װ� ���� ����</text>
                            </div>
                            <div class="opmusicartistbox">
                                <text class="opmusicartist">SHIN</text>
                            </div>
                            <div class="opgenrebox">
                                <text class="opgenre">��/����</text>
                            </div>
                            <div class="opplaybtnbox">
                                <input type="image" class = "opplaybtn" src="./streamingimg/play_btn.png" alt = "�÷��̹�ư">
                            </div>
                        </div>
                        

                    </div>                      
                </div>
            </aside>
         </div>            
    </div>
</body>
</html>