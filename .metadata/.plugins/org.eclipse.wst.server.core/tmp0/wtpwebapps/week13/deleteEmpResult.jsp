<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<c:if test="${result > 0 }">
			<script type ="text/javascript">
				alert("사원 정보 삭제 성공.");
				location.href = "queryEmp.jsp";
			</script>
		</c:if>
		<c:if test="${result== 0 }">
			<script type ="text/javascript">
				alert("사원 정보 삭제 실패.");
				history.go(-1);
			</script>
		</c:if>

</body>
</html>