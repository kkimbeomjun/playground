
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
    <title>ȸ������ ������ </title>
    <link href="signup.css" type ="text/css" rel="stylesheet">






</head>
<body>


    <div id="wrapper">
        <header>
            <!--Ȩ ��ư �̹���-->
            <div class="homeimg">
                <img src="./signupimg/Underground.png" class="underground" alt="����׶��� �̹���">
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
                   
                    <input type="text" name = "id"  placeholder=" ���̵�" onkeydown="inputIdChk()">
                    <input type ="hidden" name = "idDuplication" value = "idUncheck">
                      <input type="button" class = "doublecheck" id = "dbCheckID"  value="�ߺ�Ȯ�� " onclick= "openIdChk()">
                     	<input type="hidden" name="idDuplication" >
                    <!--���̵� �ߺ� Ȯ�� �Է� �����ÿ� �ߴ� â-->
                    <!--������ ������ �س��Ƽ� �����϶��� �������� ����-->
                    <div class="redtextflex">
                    </div>               
                    <input type="password"  id = "password1" name = "pw" placeholder=" ��й�ȣ"> <p>
                    <input type="password"  id = "password2" name = "pw2" placeholder=" ��й�ȣ" >
                    
                    <!--��й�ȣ Ȯ�� �Է� �����ÿ� �ߴ� â-->
                    <!--������ ������ �س��Ƽ� �����϶��� �������� ����-->
                    <!--ȸ������ ��ư-->    
                    <div class = "register">
                        <input type="submit" id ="submit1" value = "ȸ������ "src="./signupimg/signup.png" alt = "ȸ�����Թ�ư"
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
        alert("���̵� �Է��� �ֽʽÿ�.");
        form.id.focus();
        return false;
    }else if (form.password1.value == "") {
        alert("��й�ȣ�� �Է��� �ֽʽÿ�.");
        form.password1.focus();
        return false;
    }else if (form.password2.value == "") {
        alert("��Ȯ�� ��й�ȣ�� �Է��� �ֽʽÿ�.");
        form.password2.focus();
        return false;
    }else if (form.password1.value !== form.password2.value) {
        alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
        form.password1.focus();
        return false;
    }/* else if (form.dbCheckID.value !=="dbCheckID"){
    	alert("���̵� �ߺ�üũ Ȯ�����ּ���.");
        return false;
    } */
    else if((id < "0" || id > "9") && (id < "A" || id > "Z") && (id < "a" || id > "z")){ 
        alert("�ѱ� �� Ư�����ڴ� ���̵�� ����Ͻ� �� �����ϴ�.");
        return false;
    }
    else {
    form.submit();
    }
};

</script>

</body>
</html>