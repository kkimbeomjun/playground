<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import ="java.sql.*"%>
       <%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
        #wrap {
            width: 490px;
            text-align :center;
            margin: 0 auto 0 auto;
        }
        
        #chk{
            text-align :center;
        }
        
        #cancelBtn{
            visibility:visible;
        }
        
        #useBtn{
             visibility:hidden;
        }
 
   </style>
 <script type="text/javascript">
var httpRequest = null;

// httpRequest 객체 생성
function getXMLHttpRequest(){
    var httpRequest = null;

    if(window.ActiveXObject){
        try{
            httpRequest = new ActiveXObject("Msxml2.XMLHTTP");    
        } catch(e) {
            try{
                httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e2) { httpRequest = null; }
        }
    }
    else if(window.XMLHttpRequest){
        httpRequest = new window.XMLHttpRequest();
    }
    return httpRequest;    
}
function pValue(){
    document.getElementById("userId").value = opener.document.userInfo.id.value;
}


// 아이디 중복체크
function idCheck(){

    var id = document.getElementById("userId").value;

    if (!id) {
        alert("아이디를 입력하지 않았습니다.");
        return false;
    } 
    else if((id < "0" || id > "9") && (id < "A" || id > "Z") && (id < "a" || id > "z")){ 
        alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다.");
        return false;
    }
    else
    {
        var param="id="+id
        httpRequest = getXMLHttpRequest();
        httpRequest.onreadystatechange = callback;
        httpRequest.open("POST", "MemberIdCheckAction.do", true);    
        httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); 
        httpRequest.send(param);
    }
}

function callback(){
    if(httpRequest.readyState == 4){
        // 결과값을 가져온다.
        var resultText = httpRequest.responseText;
        if(resultText == 0){
            alert("사용할수없는 아이디입니다.");
            document.getElementById("cancelBtn").style.visibility='visible';
            document.getElementById("useBtn").style.visibility='hidden';
            document.getElementById("msg").innerHTML ="";
        } 
        else if(resultText == 1){ 
            document.getElementById("cancelBtn").style.visibility='hidden';
            document.getElementById("useBtn").style.visibility='visible';
            document.getElementById("msg").innerHTML = "사용 가능한 아이디입니다.";
        }
    }
}

function sendCheckValue() {
	  opener.document.userInfo.idDuplication.value ="idCheck";
      // 회원가입 화면의 ID입력란에 값을 전달
      opener.document.userInfo.id.value = document.getElementById("userId").value;
      
      if (opener != null) {
          opener.chkForm = null;
          self.close();
      }    
}
</script>
</head>
<body onload = "pValue()">
<div id = "wrap"> 
<br>
<b><font size = "4" color = "gray">아이디 중복 체크</font></b>
<hr size = "1" width= "460">
<br>
<div id = "chk">
<form id = "checkForm" action = "IdCheckForm.jsp"> 
<input type = "text" name ="idinput" id ="userId">
<input type = "submit" value = "중복확인" onclick= "idCheck()" >
</form>
<div id = "msg"></div>
<br>
<input id = "cancelBtn" type ="button" value = "취소" onclick= "window.close()">
<input id = "useBtn" type ="button" value ="사용하기" onclick= "sendCheckValue()">
</div>
</div>
<%
/* String id = request.getParameter("idinput");
System.out.println("idinput : " + id);

try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(
			"jdbc:mysql://localhost/underground?useSSL=false","root","0000");
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(
			"select * from members where membersid ='"+id+"'");
	
	
	
	        if(rs.next()){
	        	
	        	    PrintWriter script = response.getWriter();
	        		script.println("<script>");
	        		script.println("alert('사용할수 없습니다')");
	    			script.println("</script>");    
				
			} else{
				
				PrintWriter script = response.getWriter();
				script.println("<script>");
        		script.println("alert('사용할수 있습니다')");
    			script.println("</script>");    
				
			}
	        rs.close();
	        stmt.close();
	        conn.close();
}catch(Exception e){
	e.printStackTrace();
} */
%>
</body>
</html>