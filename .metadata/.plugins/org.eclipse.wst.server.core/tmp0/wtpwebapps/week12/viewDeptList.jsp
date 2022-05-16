<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>부서 목록 보기</h3>
   <table border="1" width="100%" style="text-align:center;">
      <tr>
         <td>부서코드</td><td>부서이름</td><td>근무지</td>
      </tr>
      <%
      Class.forName("com.mysql.jdbc.Driver");
   
      Connection conn = null;
      Statement stat = null;
      ResultSet rs = null;
   
      String jdbcDriver = "jdbc:mysql://localhost:3306/jspDB?"+
				"useSSL=false&serverTimezone=UTC";
      String dbUser = "root";
      String dbPass = "inha1958";
      
      String sql = "select * from dept";
      
      conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
      
      stat = conn.createStatement();
      
      rs = stat.executeQuery(sql);
      
      
      while(rs.next()){
         out.println("<tr><td>");
         out.println(rs.getString("deptNo")+"</td><td>");
         out.println(rs.getString("deptName")+"</td><td>");
         out.println(rs.getString("deptLoc")+"</td></tr>");

      }
      
      rs.close();
      
      conn.close();
%>
   </table>

</body>
</html>