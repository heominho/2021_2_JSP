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
	<%
      int empno = Integer.parseInt(request.getParameter("empno"));
      
      Class.forName("com.mysql.jdbc.Driver");
   
      Connection conn = null;
      Statement stat = null;
      ResultSet rs = null;
   
      String jdbcDriver = "jdbc:mysql://localhost:3306/jspDB?"+
				"useSSL=false&serverTimezone=UTC";
      String dbUser = "root";
      String dbPass = "inha1958";
      
      String sql = "select * from emp where empno = " + empno;
      
      conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
      stat = conn.createStatement();
      rs = stat.executeQuery(sql);
      
      
      
      while(rs.next()){
         request.setAttribute("id", rs.getString("empno"));
         request.setAttribute("name", rs.getString("empname"));
         request.setAttribute("dept", rs.getString("empdept"));
         request.setAttribute("job", rs.getString("empjob"));
         request.setAttribute("sal", rs.getString("empsal"));
      }
      
      rs.close();
      
      conn.close();
%>
      <jsp:forward page="viewEmpResult.jsp"></jsp:forward>
   </table>
</body>
</html>