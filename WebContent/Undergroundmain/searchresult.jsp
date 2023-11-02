<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import= "java.sql.*"%>

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
    <title>�˻���� ������ </title>
    <link href="searchresult.css" type ="text/css" rel="stylesheet">
</head>
<body>

<%



String music_name = request.getParameter("music_name");

request.setCharacterEncoding("EUC-KR");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection
			("jdbc:mysql://localhost/underground","root","0000");
	Statement stmt = conn.createStatement();
    ResultSet rs =stmt.executeQuery(
			"SELECT * FROM music where music_name = '"+music_name+"'"
			);

%>
    <div id="wrapper">
        <header>
            <!--Ȩ ��ư �̹���-->
            <div class="homeimg">
                <a  id="home" href="homepage.jsp" >           
                    <img src="./homepageimg/Underground.png" width="400"
                     alt="Ȩ������ ��ư" />
                     </a>   
            </div>
            <!--�˻� ��ư-->
            <div class="search">
                 <form method = "post" action= "searchresult.jsp">
                <input type="text" class = "searchplace" placeholder="�˻�� �Է��ϼ���." name = "music_name">
                <input type="image" class = "search_btn" src="./homepageimg/search_btn.png" alt = "�˻���ư">
                </form>                
            </div>
            <!--ȸ�� �̸�-->
            <div class="name">
                <text class="name1">������</text>
                <text class="name2"> ��</text> 
                <!--�̸��� ���� ������ '��'�� �����ϰ� �̸��� �ٲܼ� �ֵ��� ��-->
                <!--���࿡ ������ �� ó�� ���� �����ؼ� ������ Ŭ������ ��ħ-->
            </div>
            <!--�߰� ��ư-->
            <div class="selectbtn">         
             <a href = "musicregister.html" >���� ���</a>
             <a id ="kakao-logout" href= "loginpage.jsp">�α׾ƿ�</a>
             <a id ="kakao-log" href= "loginpage.jsp">ȸ��Ż��</a>
            </div>  
        </header>

        <div class = "middle">
            <aside class="left-side">
                
            </aside>

            <section class="content">                
                <div class="searchbox">
                    <div class="searchnamebox">
                        <text class="titlename">
                        <%=
                        		
                        request.getParameter("music_name") %>
                        </text>
                       
                        <!--''�� �ٷ� �����Ͽ��µ� ���࿡ ''�� ���� ���´ٸ� ���� searchname���� ��� ���.-->
                     <text class="searchname">�� �˻����</text>
                    </div>
                                       
                </div>
                <hr>
                <!-- 1�� ���� (�ߺ��̹Ƿ� 1���� ����.)-->
                <div class="chartoption">
                                <table bordercolor="black" >
                   <% 
   
        while(rs.next()){
    	
    	int music_num = rs.getInt("music_num"); //getString (�ʵ��)
    	String artist_name = rs.getString("artist_name"); //getString (�ʵ��)
    	String music_name2  = rs.getString("music_name");
    	String music_genre = rs.getString("music_genre");
    	String album_img = rs.getString("album_img");
    	
    	
    	out.println("<tr>");
    	out.println("<td style = center;color:white>"+music_num+"</td>");
    	out.println("<td style = center;color:white>"+album_img+"</td>");
    	out.println("<td style = center;color:white>"+music_name2+ "</td>");
    	out.println("<td style = center;color:white>" +artist_name+ "</td>");
    	out.println("<td style = center;color:white>" +music_genre+ "</td>");
    	
    	out.println("</tr>");
    
           };
                %>
                    </table>
    <%
    rs.close();
    stmt.close();
    conn.close();
}catch(SQLException e){
	e.printStackTrace();
}
%>      
                </div> 

            <aside class="right-side">

            </aside>
         </div>    

         <footer>
            <div class="music">

                <div class="musicoption">
                    <!--�뷡 �̹���-->             
                    <div class="musicimgbox">
                        <img src="./searchresultimg/defaultAlbum_img.png" class="musicimg">
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
                            <input type="image" class = "previous" src="./searchresultimg/previous_btn.png" alt = "������ư">
                            <input type="image" class = "play" src="./searchresultimg/play_btn.png" alt = "�����ư">
                            <!-- <input type="image" class = "stop" src="./searchresultimg/pause_btn.png" alt = "�����ư">  -->
                            <input type="image" class = "next" src="./searchresultimg/next_btn.png" alt = "������ư">
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
                        <input type="image" class = "playlistbtn" src="./searchresultimg/playlist_btn.png" alt = "������ư">

                    </div>
                    

                </div>   
                             
            </div>   
          
        </footer>
    </div>
</body>
</html>