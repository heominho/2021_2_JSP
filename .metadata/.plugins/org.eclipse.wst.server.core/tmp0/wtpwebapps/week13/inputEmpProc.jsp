<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file = "connectDB.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
		String empno = request.getParameter("empno");
		String empname = request.getParameter("empname");
		String empdept = request.getParameter("empdept");
		String empjob = request.getParameter("empjob");
		int empsal = Integer.parseInt(request.getParameter("empsal"));
		
		PreparedStatement pstat	= null;
		ResultSet 		  rs 	= null;
		
		String sql1="select * from emp where empno=? ";
		String sql2="insert into emp values (?,?,?,?,?)";
		
		int empnoChk=0;
		int result=0;
		
		pstat = conn.prepareStatement(sql1);
		pstat.setString(1, empno);
		rs=pstat.executeQuery();
		
		if(rs.next()){
			empnoChk = 1;
		}else{
			pstat = conn.prepareStatement(sql2);
			pstat.setString(1, empno);
			pstat.setString(2, empname);
			pstat.setString(3, empdept);
			pstat.setString(4, empjob);
			pstat.setInt(5, empsal);
			
			result = pstat.executeUpdate();
		}
		request.setAttribute("result", result);
		request.setAttribute("empnoChk", empnoChk);
		
		rs.close();
		pstat.close();
		conn.close();
	%>
	<jsp:forward page="inputEmpResult.jsp"></jsp:forward>
</body>
</html>