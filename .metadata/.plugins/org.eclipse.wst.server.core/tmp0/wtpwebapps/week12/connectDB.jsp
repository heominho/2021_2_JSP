<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>데이터베이스 연결</h3>
	<%
		Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	Statement stat = null;
	ResultSet rs = null;
	
	String jdbcDriver = "jdbc:mysql://localhost:3306/jspDB?"+
						"useSSL=false&serverTimezone=UTC";
	
	String dbUser="root";
	String dbPass= "inha1958";
	
	String sql = "select * from emp";
	
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	
	stat = conn.createStatement();
	
	rs = stat.executeQuery(sql);
	
	if(rs!=null)
		out.println("데이터베이스 연결 성공~!"+"<br>");

	else
		out.println("데이터베이스 연결 실패...");
	
	rs.close();
	stat.close();
	conn.close();
	%>
</body>
</html>