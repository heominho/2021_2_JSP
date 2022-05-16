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
		<h2 align="left">&emsp;도서 등록</h2>
		</td>
		</tr>
	</table>
	<form action="BookInfo.jsp" method="post" enctype="multipart/form-data">
	<table>
		<tr>
		<td>도서코드</td><td><input type="text" name="bcode"><br></td>
		</tr>
		<tr>
		<td>도서명</td><td>  	<input type="text" name="bname" ><br></td>
		</tr>
		<tr>
		<td>가격</td><td>    	<input type="text" name="bprice" ><br></td>
		</tr>
		<tr>
		<td>저자</td><td>	 	<input type="text" name="bwriter" ><br></td>
		</tr>
		<tr>
		<td>출판사</td><td> 	<input type="text" name="bcompany" ><br></td>
		</tr>
		<tr>
		<td>출판일</td><td> 	<input type="text" name="bbirthday" ><br></td>
		</tr>
		<tr>
		<td>총 페이지 수</td><td> <input type="text" name="bpage" ><br></td>
		</tr>
		<tr>
		<td>상세정보</td><td>	<textarea rows="5" cols="30" name=binformation >100자 이상 적어주세요</textarea><br></td>
		</tr>
		<tr>
		<td>분류</td><td>		<input type="text" name="bgroup" ><br></td>
		</tr>
		<tr>
		<td>재고 수</td><td>	<input type="text" name="binventory"><br></td>
		</tr>
		<tr>
		<td>상태</td><td>		<input type="radio" name="bstate" value="신규도서">신규도서
					<input type="radio" name="bstate" value="중고도서">중고도서
					<input type="radio" name="bstate" value="E-Book">E-Book<br></td>
					</tr>
		<tr>
		<td>이미지</td><td>	<input type="file" name="file"><br>
					</td></tr>
					<tr><td colspan="2"><input type="submit" value="등록"></td></tr>
	
	</table>
	</form>
	<hr>
		<jsp:include page="/footer.jsp" flush="false"/>
		
		
</body>
</html>