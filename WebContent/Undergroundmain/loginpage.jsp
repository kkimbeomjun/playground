<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<style type="text/css"> 
a { text-decoration:none } 
a:ilnk {text-decoration:none; color: #FFFFFF;}
a:visited {text-decoration:none; color: #FFFFFF;}
a:active {text-decoration:none; color: #FFFFFF;}
a:hover {text-decoration:none; color: #FFFFFF;}

#submit1{
width: 250px;
height: 50px;

} 

#password1{
    box-sizing: border-box;
            vertical-align: middle;
            margin-top: 20px;
            width: 100%;
            height: 61px;
            font-size: 20px;
            font-weight: 500;
            line-height: 30px;  
            border: 1px solid #000000;
            border-radius: 10px;
            color: black;
            font-family: 'Poppins';
} 

</style> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 페이지 </title>
    <link href="loginpage.css" type ="text/css" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
        <header>
            <!--빈 공간-->
            <div class="headerbox">            
            </div>
            <!--회원가입 버튼-->
            <div class="selectbtn">         
            <a href="signup.jsp">회원가입</a>
            </div>  
        </header>

        <div class = "middle">
            <aside class="left-side">                
            </aside>

            <section class="content">
                <img src="./loginpageimg/Underground.png" class="underground" alt="언더그라운드 이미지">

                <div class="inputId">
                    <form action = "logincheck.jsp" method = "post" name ="f1">
                    <input type="text" name = "id" id = "id" placeholder=" 아이디" onKeyDown="if(event.keyCode == 13) loginChk()">
                    <input type="password" id = "password1" name = "pw" placeholder=" 비밀번호" onKeyDown="if(event.keyCode == 13) loginChk()">
                       
                    <!--아이디 입력 오류시에 뜨는 창-->
                    <!--포지션 자유로 해놓아서 오류일때만 나오도록 설정-->
                     
                    <!--로그인 버튼-->    
                    <div class = "register">
                        <input type="button"  id = "submit1" alt = "로그인버튼" value="로그인"  onclick="loginChk()">
                    </div>
                    </form>
                </div>
                    
            </section>
            
            <aside class="right-side">
            </aside>
         </div>    

        
    </div>
    <script>
function loginChk() { // 로그인 체크 확인
    var form = document.f1;
    if (form.id.value == "") {
        alert("아이디를 입력해 주십시오.");
        form.id.focus(); 
        return false;
        //아이디 확인
    }else if (form.password1.value == "") {
        alert("비밀번호를 입력해 주십시오.");
        form.password1.focus();
        return false;
        
        // 비밀번호 확인
    }else {

    form.submit();
    // 처음 페이지로 돌아가기
    }
};

</script>
</body>
</html>