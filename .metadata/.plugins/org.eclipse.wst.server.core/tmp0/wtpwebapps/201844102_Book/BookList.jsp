
<%@page import="BookPackage.BookListInfo"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr><td bgcolor="black">
		<jsp:include page="/menu.jsp" flush="false" />
		</td>
		</tr>
		<tr height="100"><td bgcolor="lightgray">
		<h2 align="left">&emsp;도서 목록</h2>
		</td>
		</tr>
	</table>

<%
	ArrayList<BookListInfo> list = (ArrayList<BookListInfo>)session.getAttribute("list");
	if(list ==null){
		list = new ArrayList<BookPackage.BookListInfo>();
	}
%>

<%
for (int i=0;i< list.size(); i++){ %>
	<table width="60%" height="50">
		<tr>
		<td width="260">
		<img alt="<%= list.get(i).getFilename() %>" src="fileSave/<%= list.get(i).getFilename()%>"height="250">
		</td>
		<td>
		<h2>
		<%= list.get(i).getBname() %>
		</h2>
		<h4>
		<p>
		<%= list.get(i).getBinformation() %>
		<p>
		<%= list.get(i).getBwriter() %> | 
		<%= list.get(i).getBcompany() %> |
		<%= list.get(i).getBprice() %>
		</h4>
		</td>
		</tr>
	</table>
	<hr>
	<%}%> 
	<hr>
		<jsp:include page="/footer.jsp" flush="false"/>
</body>
</html>