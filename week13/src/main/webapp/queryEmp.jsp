<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="week13.Emp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file ="connectDB.jsp" %>
	<%
		Statement stat = null;
		ResultSet rs = null;
		ArrayList<Emp> list = new ArrayList<>();
		
		String sql = "select * from emp";
		
		stat = conn.createStatement();
		rs = stat.executeQuery(sql);
		
		while(rs.next()){
			Emp emp = new Emp();
			emp.setEmpno(rs.getString(1)); //"()안에 empno라고 해도 됨"
			emp.setEmpname(rs.getString(2));
			emp.setEmpdept(rs.getString(3));
			emp.setEmpjob(rs.getString(4));
			emp.setEmpsal(rs.getInt(5));
			list.add(emp);
		}
		
		request.setAttribute("list", list);
		
		rs.close();
		stat.close();
		conn.close();
		
		RequestDispatcher rd = request.getRequestDispatcher("queryEmpResult.jsp");
		rd.forward(request,response);
	%>
</body>
</html>