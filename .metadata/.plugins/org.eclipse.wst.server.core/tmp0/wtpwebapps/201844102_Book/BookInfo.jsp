<%@page import="java.util.ArrayList"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
 	String fileSave="/fileSave";
 	String real = application.getRealPath(fileSave);
 	int max = 1024 * 1024 * 10;
 	MultipartRequest mr =
 			new MultipartRequest(request, real, max,"utf-8", 
 					new DefaultFileRenamePolicy());
 	
 	String bcode = mr.getParameter("bcode");
	String bname = mr.getParameter("bname");
	String bprice = mr.getParameter("bprice");
	String bwriter = mr.getParameter("bwriter");
	String bcompany = mr.getParameter("bcompany");
	String bbirthday = mr.getParameter("bbirthday");
	String bpage = mr.getParameter("bpage");
	String binformation = mr.getParameter("binformation");
	String bgroup = mr.getParameter("bgroup");
	String binventory = mr.getParameter("binventory");
	String bstate = mr.getParameter("bstate");
	String filename = mr.getFilesystemName("file");
	String original = mr.getOriginalFileName("file");
	
%>
<%!
	ArrayList<BookPackage.BookListInfo> list = new ArrayList<BookPackage.BookListInfo>();
%>
<%
	BookPackage.BookListInfo bli = new BookPackage.BookListInfo();
	bli.setBname(bname);
	bli.setBprice(bprice);
	bli.setBwriter(bwriter);
	bli.setBcompany(bcompany);
	bli.setBinformation(binformation);
	bli.setFilename(filename);
	list.add(bli);
	session.setAttribute("list", list);
%>
	
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr><td bgcolor="black">
		<jsp:include page="/menu.jsp" flush="false" />
		</td>
		</tr>
		<tr height="100"><td bgcolor="lightgray">
		<h2 align="left">&emsp;도서 정보</h2>
		</td>
		</tr>
	</table>
	<table width="60%" height="100">
	<tr>
	<td width="300">
	<img alt="<%= filename%>" src="fileSave/<%= filename%>" height="350" align="middle">
	</td>
	<td>
	<h1>
	<%=bname %>
	</h1>
	<h4>
	<%=binformation %>
	<p>
	도서코드 : <%= bcode %><br>
	저자 : <%= bwriter %><br>
	출판사 : <%= bcompany %><br>
	출판일 : <%= bbirthday %><br>
	총 페이지 수 : <%= bpage %><br>
	재고 수 : <%= binventory %><br>
	분류 : <%= bgroup %><br>
	상태 : <%= bstate %><br>
	가격 : <%= bprice %><br>
	</h4>
		<form action="BookList.jsp" method="post" enctype="multipart/form-data">
			<input type="submit" value="도서목록" >
		</form>
	</td>
	</tr>
	</table>


	<hr>
		<jsp:include page="/footer.jsp" flush="false"/>
</body>
</html>