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
    <title>검색결과 페이지 </title>
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
            <!--홈 버튼 이미지-->
            <div class="homeimg">
                <a  id="home" href="homepage.jsp" >           
                    <img src="./homepageimg/Underground.png" width="400"
                     alt="홈페이지 버튼" />
                     </a>   
            </div>
            <!--검색 버튼-->
            <div class="search">
                 <form method = "post" action= "searchresult.jsp">
                <input type="text" class = "searchplace" placeholder="검색어를 입력하세요." name = "music_name">
                <input type="image" class = "search_btn" src="./homepageimg/search_btn.png" alt = "검색버튼">
                </form>                
            </div>
            <!--회원 이름-->
            <div class="name">
                <text class="name1">오우찬</text>
                <text class="name2"> 님</text> 
                <!--이름과 님을 나누어 '님'은 고정하고 이름만 바꿀수 있도록 함-->
                <!--만약에 오우찬 님 처럼 님이 포함해서 나오면 클래스를 합침-->
            </div>
            <!--추가 버튼-->
            <div class="selectbtn">         
             <a href = "musicregister.html" >음원 등록</a>
             <a id ="kakao-logout" href= "loginpage.jsp">로그아웃</a>
             <a id ="kakao-log" href= "loginpage.jsp">회원탈퇴</a>
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
                       
                        <!--''를 다로 구분하였는데 만약에 ''가 같이 나온다면 같이 searchname으로 묶어서 사용.-->
                     <text class="searchname">의 검색결과</text>
                    </div>
                                       
                </div>
                <hr>
                <!-- 1번 음악 (중복이므로 1번만 적음.)-->
                <div class="chartoption">
                                <table bordercolor="black" >
                   <% 
   
        while(rs.next()){
    	
    	int music_num = rs.getInt("music_num"); //getString (필드명)
    	String artist_name = rs.getString("artist_name"); //getString (필드명)
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
                    <!--노래 이미지-->             
                    <div class="musicimgbox">
                        <img src="./searchresultimg/defaultAlbum_img.png" class="musicimg">
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
                            <input type="image" class = "previous" src="./searchresultimg/previous_btn.png" alt = "이전버튼">
                            <input type="image" class = "play" src="./searchresultimg/play_btn.png" alt = "재생버튼">
                            <!-- <input type="image" class = "stop" src="./searchresultimg/pause_btn.png" alt = "멈춤버튼">  -->
                            <input type="image" class = "next" src="./searchresultimg/next_btn.png" alt = "다음버튼">
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
                        <input type="image" class = "playlistbtn" src="./searchresultimg/playlist_btn.png" alt = "이전버튼">

                    </div>
                    

                </div>   
                             
            </div>   
          
        </footer>
    </div>
</body>
</html>