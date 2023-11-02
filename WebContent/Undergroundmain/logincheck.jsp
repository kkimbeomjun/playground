<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"  import ="java.sql.*"%>
    <%@page import="java.io.PrintWriter"%>
    <%@page import="SHA512.Encryption"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>


</head>
<body>


<%

PrintWriter writer = response.getWriter();

String usersId = request.getParameter("id"); // login 에서 받아온 값
String usersPw = request.getParameter("pw"); // login 에서 받아온 값 


System.out.println("usersId : " + usersId);
System.out.println("usersPw : " + usersPw);

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection(
		"jdbc:mysql://localhost/underground?useSSL=false","root","0000");
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery(
		"SELECT * FROM members where membersid ='"+usersId+"'"); //db 연결 테이블에서 일치하는 사용자 존재 유무 조회
try{
	
	   if(rs.next()){
	        	String membersid = rs.getString("membersid"); // 회원 아이디 저장
	        	String memberspw = rs.getString("memberspw"); // 회원 비밀번호 저장
	        	String memberspwSalt = rs.getString("memberspwSalt"); //조회결과 테이터 (회원 난수값) 저장
	        	System.out.println(" 알에스에서 membersid : " + membersid);
	        	System.out.println(" 알에스에서 memberspw : " + memberspw);
	        	System.out.println(" 알에스에서 memberspwSalt : " + memberspwSalt);
	        	usersPw = Encryption.SHA512(usersPw, memberspwSalt);  // 사용자가 입력한 아이디를 조회하여 조회된 난수 데이터로 SHA 512 암호화
	        	System.out.println(" 알에스에서 usersPw : " + usersPw);
	        	if(membersid.equals(usersId) && memberspw.equals(usersPw)){ //암호화가 맞다면 로그인
	    	    session.setAttribute("__id", membersid); //식별자  섹션에 저장 
	    	    PrintWriter script = response.getWriter();
        		script.println("<script>");
    			script.println("location.href = 'homepage.jsp' ");
    			script.println("</script>");    	 
	        	}else {
	        		PrintWriter script = response.getWriter();
	        		script.println("<script>");
	    			script.println("alert('아이디와 비밀번호가 다릅니다.')");
	    			script.println("history.back()");
	    			script.println("</script>");	 
	        	
	        	} 
	   }
	      rs.close();
	      stmt.close();
	      conn.close();
	        	
	    }catch(SQLException e){
	e.printStackTrace();
}
%>

</body>
</html>