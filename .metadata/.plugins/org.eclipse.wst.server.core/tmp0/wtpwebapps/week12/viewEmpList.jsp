<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>사원 목록 보기</h3>
   <table border="1" width="100%" style="text-align:center;">
      <tr>
         <td>번호</td><td>이름</td><td>근무부서</td><td>업무</td><td>급여</td>
      </tr>
      <%
      Class.forName("com.mysql.jdbc.Driver");
   
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
   
      String dbURL = "jdbc:mysql://localhost:3306/jspDB?" +
                  "useSSL=false&serverTimezone=UTC";
      String dbID = "root";
      String dbPassword = "inha1958";
      
      String sql = "select * from emp";
      
      conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
      
      pstmt = conn.prepareStatement(sql);
      
      rs = pstmt.executeQuery(sql);
      
      if(rs != null){
         out.println("데이터베이스 연결 성공~!" + "<br>");
      }else {
         out.println("데이터베이스 연결 성공~!" + "<br>");
      }
      
      while(rs.next()){
         out.println("<tr><td>");
         out.println(rs.getString("empno")+"</td><td>");
         out.println(rs.getString("empname")+"</td><td>");
         out.println(rs.getString("empdept")+"</td><td>");
         out.println(rs.getString("empjob")+"</td><td>");
         out.println(rs.getString("empsal")+"</td></tr>");
      }
      
      rs.close();
      
      conn.close();
%>
   </table>

</body>
</html>