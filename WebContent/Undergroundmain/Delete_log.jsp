<%@ page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

</head>

<body>
<%
request.setCharacterEncoding("EUC-KR");
String membersid = request.getParameter("membersid");
membersid = (String)session.getAttribute("__id"); // 세션 받아오기

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(
			"jdbc:mysql://localhost/underground?useSSL=false","root","0000");
	Statement stmt = conn.createStatement();
	stmt.executeUpdate(
			"DELETE FROM members WHERE membersid='"+membersid+"'");
	stmt.close();
	conn.close();
	//삭제
}catch (SQLException e){
	e.printStackTrace();
}

PrintWriter script = response.getWriter();
script.println("<script>");
script.println("alert('회원정보가 삭제 되었습니다.')");
script.println("location.href='loginpage.jsp' ");
script.println("</script>");

System.out.println("회원정보 삭제" + membersid);



%>
</body>
</html>