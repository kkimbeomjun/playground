<%@page import="java.io.PrintWriter"%>
<%@page import="SHA512.Encryption"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ üũ</title>
</head>
<body>


<%
request.setCharacterEncoding("EUC-KR");
String membersid = request.getParameter("id");
String memberspw = request.getParameter("pw");
String memberspw2 = request.getParameter("pw2");
System.out.println(" ��񿡳ִ� memberspw : " + memberspw);
String memberspwSalt  = Encryption.Salt();
System.out.println(" ��񿡳ִ� memberspwSalt : " + memberspwSalt);
memberspw = Encryption.SHA512(memberspw, memberspwSalt);
System.out.println(" ��ȣȭ�� �� memberspw : " + memberspw);


try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection (
"jdbc:mysql://localhost/underground?useSSL=false","root","0000");
Statement stmt = conn.createStatement();
stmt.executeUpdate(
"INSERT INTO members (membersid,memberspw,secession,memberspwSalt) VALUES('"+membersid+"','"+memberspw+"',false,'"+memberspwSalt+"')");


stmt.close();
conn.close();
}catch(SQLException e){
	e.printStackTrace();
}if(memberspw == null || memberspw.equals("")|| membersid == null || membersid.equals("") || memberspw2 == null  || memberspw2.equals(""))
{

	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('�Է� �ȵ� ������ �ֽ��ϴ�.')");
	script.println("history.back()");
	script.println("</script>");
}else {
      
	
	
	
	} 

PrintWriter script = response.getWriter();
script.println("<script>");
script.println("alert('ȸ�������� �Ϸ� �Ǿ����ϴ�..')");
script.println("location.href = 'loginpage.jsp' ");
script.println("</script>");


%>


</body>
</html>