<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${varList = [2,11,7,4,8,5];'' }
	${varList.stream().sum() }<br>
	${varList.stream().max().get() }<br>
	${varList.stream().min().get() }<br>
	${varList.stream().average().get() }<br>
	${varList.stream().filter(x->x%2==0).toList() }<br>
	${varList.stream().map(x -> x%2==0).toList() }<br>
	${varList.stream().sorted().toList() }<br>
	${varList.stream().count() }<br>
<hr>
4.정렬<br>
${vals = [20,17,30,2,9,23];
	sortedVals=vals.stream().sorted().toList() }<br>
${vals = [20,17,30,2,9,23];
	sortedVals=vals.stream().sorted((x1,x2) -> x1<x2?1:-1).toList() }<br>
</body>
</html>
