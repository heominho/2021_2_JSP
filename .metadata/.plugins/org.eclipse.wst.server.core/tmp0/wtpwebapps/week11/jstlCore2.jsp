<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="week11.MemberInfo" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MemberInfo member = new MemberInfo();
%>

<c:set var="m" value="<%=member %>" scope="request"/>
<c:set target="${m }" property="id" value="admin"/>
<c:set target="${m }" property="password" value="admin"/>
<c:set target="${m }" property="name" value="김철수"/>
<jsp:forward page="jstlResult2.jsp"></jsp:forward>
</body>
</html>