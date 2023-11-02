
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "java.sql.*"
    import = "java.io.PrintWriter"
    %>

<!DOCTYPE html>
<html lang="ko">
<head>
<style type="text/css"> 
a { text-decoration:none } 
a:ilnk {text-decoration:none; color: #FFFFFF;}
a:visited {text-decoration:none; color: #FFFFFF;}
a:active {text-decoration:none; color: #FFFFFF;}
a:hover {text-decoration:none; color: #FFFFFF;}

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

#password2{
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

#submit1{
width: 250px;
height: 50px;

} 
</style> 



    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 페이지 </title>
    <link href="signup.css" type ="text/css" rel="stylesheet">






</head>
<body>


    <div id="wrapper">
        <header>
            <!--홈 버튼 이미지-->
            <div class="homeimg">
                <img src="./signupimg/Underground.png" class="underground" alt="언더그라운드 이미지">
            </div>
           
        </header>

               
            <div class = "middle">
            <aside class="left-side">                
            </aside>

            <section class="content">
           
                <div class="inputId">
                    <div class="checkflex">
                    </div>
                   <form action = "Singupreal.jsp" method = "post" name ="f1">
                   
                    <input type="text" name = "id"  placeholder=" 아이디" onkeydown="inputIdChk()">
                    <input type ="hidden" name = "idDuplication" value = "idUncheck">
                      <input type="button" class = "doublecheck" id = "dbCheckID"  value="중복확인 " onclick= "openIdChk()">
                     	<input type="hidden" name="idDuplication" >
                    <!--아이디 중복 확인 입력 오류시에 뜨는 창-->
                    <!--포지션 자유로 해놓아서 오류일때만 나오도록 설정-->
                    <div class="redtextflex">
                    </div>               
                    <input type="password"  id = "password1" name = "pw" placeholder=" 비밀번호"> <p>
                    <input type="password"  id = "password2" name = "pw2" placeholder=" 비밀번호" >
                    
                    <!--비밀번호 확인 입력 오류시에 뜨는 창-->
                    <!--포지션 자유로 해놓아서 오류일때만 나오도록 설정-->
                    <!--회원가입 버튼-->    
                    <div class = "register">
                        <input type="submit" id ="submit1" value = "회원가입 "src="./signupimg/signup.png" alt = "회원가입버튼"
                      onclick="singChk()"  >
                    </div> 
                      </form>
                </div>
            </section>

            <aside class="right-side">
            </aside>
         </div>    

       
    </div>
      <script>
function openIdChk(){
	window.name = "parentForm";
	window.open("IdCheckForm.jsp","chkFornm","width=500, height=300, resizable= no , scrollbars = no");
	
}      
      
function inputIdChk(){
	document.userInfo.idDuplication.value= "idUncheck";
	
}
      
function singChk() {
    var form = document.f1;
    if (form.id.value == "") {
        alert("아이디를 입력해 주십시오.");
        form.id.focus();
        return false;
    }else if (form.password1.value == "") {
        alert("비밀번호를 입력해 주십시오.");
        form.password1.focus();
        return false;
    }else if (form.password2.value == "") {
        alert("재확인 비밀번호를 입력해 주십시오.");
        form.password2.focus();
        return false;
    }else if (form.password1.value !== form.password2.value) {
        alert("비밀번호가 일치하지 않습니다.");
        form.password1.focus();
        return false;
    }/* else if (form.dbCheckID.value !=="dbCheckID"){
    	alert("아이디 중복체크 확인해주세요.");
        return false;
    } */
    else if((id < "0" || id > "9") && (id < "A" || id > "Z") && (id < "a" || id > "z")){ 
        alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다.");
        return false;
    }
    else {
    form.submit();
    }
};

</script>

</body>
</html>