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

String usersId = request.getParameter("id"); // login ���� �޾ƿ� ��
String usersPw = request.getParameter("pw"); // login ���� �޾ƿ� �� 


System.out.println("usersId : " + usersId);
System.out.println("usersPw : " + usersPw);

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection(
		"jdbc:mysql://localhost/underground?useSSL=false","root","0000");
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery(
		"SELECT * FROM members where membersid ='"+usersId+"'"); //db ���� ���̺��� ��ġ�ϴ� ����� ���� ���� ��ȸ
try{
	
	   if(rs.next()){
	        	String membersid = rs.getString("membersid"); // ȸ�� ���̵� ����
	        	String memberspw = rs.getString("memberspw"); // ȸ�� ��й�ȣ ����
	        	String memberspwSalt = rs.getString("memberspwSalt"); //��ȸ��� ������ (ȸ�� ������) ����
	        	System.out.println(" �˿������� membersid : " + membersid);
	        	System.out.println(" �˿������� memberspw : " + memberspw);
	        	System.out.println(" �˿������� memberspwSalt : " + memberspwSalt);
	        	usersPw = Encryption.SHA512(usersPw, memberspwSalt);  // ����ڰ� �Է��� ���̵� ��ȸ�Ͽ� ��ȸ�� ���� �����ͷ� SHA 512 ��ȣȭ
	        	System.out.println(" �˿������� usersPw : " + usersPw);
	        	if(membersid.equals(usersId) && memberspw.equals(usersPw)){ //��ȣȭ�� �´ٸ� �α���
	    	    session.setAttribute("__id", membersid); //�ĺ���  ���ǿ� ���� 
	    	    PrintWriter script = response.getWriter();
        		script.println("<script>");
    			script.println("location.href = 'homepage.jsp' ");
    			script.println("</script>");    	 
	        	}else {
	        		PrintWriter script = response.getWriter();
	        		script.println("<script>");
	    			script.println("alert('���̵�� ��й�ȣ�� �ٸ��ϴ�.')");
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